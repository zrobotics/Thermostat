/*Thermostat firmware
  Rev 1.6
  Increased delay in relay cycling, prev had hysterisis when cycling relay @ temp.
*/

//Name pins
//INPUTS
const int THERMISTOR = 1; //For analogRead, pin2 is 1. Yes, confusing...
const int BIASPOT = 3; //For analogRead, pin3 is 3
//OUTPUTS
const int LED = 4; //Circuit LED on pin 4
const int RLY_OUT = 0; //Output. NOTE: do not use pin 5, resets micro on chinese clones


void setup() {                
  //Initialize pins
  pinMode(THERMISTOR, INPUT); //No need to set these as inputs, unless they were previously set as outputs
  pinMode(BIASPOT, INPUT);    //Set anyway, safety's sake
  pinMode(LED, OUTPUT);
  digitalWrite(LED, LOW);
  pinMode(RLY_OUT, OUTPUT);
  digitalWrite(RLY_OUT, LOW);

  //Blink Led to display reset. Don't blink on output transistor.
  digitalWrite(RLY_OUT, HIGH);
  ledBlink(LED, 150, 150, 5); //o
  digitalWrite(RLY_OUT, LOW);
}

void loop() {
  //Read sensor and bias pots
  int bias = readAvg(2, BIASPOT, 5);
  bias = bias/2; //Halve bias reading, to more closely match thermistor reading ~360, decreases pot sensitivity.
  int temp = readAvg(5, THERMISTOR, 250); //5 averages of the thermistor, .25sec total averaging time. 
  
  //Control logic: Check temp in outer loop, inner loops check if relay status needs changed
  if(temp < bias){ //Temp is too high, but thermistor is negative coeff, so lower number signifies too hot
    if(digitalRead(RLY_OUT) == LOW){ //Relay is off, turn it on
      digitalWrite(LED, HIGH);
      digitalWrite(RLY_OUT, HIGH);
    }
    //delay(10); //Necessary here??
  } else { //Temp is low enough
    if(digitalRead(RLY_OUT) == HIGH){ //If relay is on, turn it off 
      digitalWrite(LED, LOW);
      digitalWrite(RLY_OUT, LOW);
    }
    //delay(10);
  } 
  delay(60000L); //Delay 60 sec before taking another reading, prevents rapid cycling of relay.
}

int readAvg(int num, int pin, int delayTime){  //Take average of 'num' analogReads on 'pin'. Delay time is total time for the loop.
  int x = 0; //Initialize t @ 0 to hold bias pot reading
  int t = delayTime/num; //Calc delay time for each averaging loop.
  
  for(int i = 0; i < num; i++){ //Loop 5 times, add each reading
    x = x + analogRead(pin);
    delay(t);    
  }
  
  x = x / num; //take average
  return x;
}

void ledBlink(int PIN, int delay1, int delay2, int numLoops){ //Blink the led x times, delayTime between blinks
  for(int i=0; i < numLoops; i++){
    digitalWrite(PIN, HIGH);
    delay(delay1);
    digitalWrite(PIN, LOW);
    delay(delay2);
  }
}
