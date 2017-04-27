//Name pins
//INPUTS
const int THERMISTOR = 1; //For analogRead, pin2 is 1. Yes, confusing...
const int BIASPOT = 3; //For analogRead, pin3 is 3
//OUTPUTS
const int LED = 4; //Circuit LED on pin 4
//const int LED = 1; //internal LED on pin 1
const int RLY_OUT = 5; //Output, pin no. matches


// the setup routine runs once when you press reset:
void setup() {                
  //Initialize pins
//  pinMode(THERMISTOR, INPUT); //No need to set these as inputs, unless they were previously set as outputs
//  pinMode(BIASPOT, INPUT);
  pinMode(LED, OUTPUT);
  digitalWrite(LED, LOW);
  pinMode(RLY_OUT, OUTPUT);
  digitalWrite(RLY_OUT, LOW);

  //Blink Led SOS to display reset. Don't blink on output transistor.
  initBlink(LED, 75, 75, 3); //s
  delay(50);
  initBlink(LED, 150, 150, 3); //o
  delay(50);
  initBlink(LED, 75, 75, 3); //s
}

// the loop routine runs over and over again forever:
void loop() {
  //Read sensor and bias pots
  //float temp = analogRead(THERMISTOR); //Use a float if doing math to correct for non-linear sensor
  int bias = readAvg(3, BIASPOT, 30); //3 averages of the bias pot
  int temp = readAvg(5, THERMISTOR, 250); //5 averages of the thermistor, .25sec total averaging time. 
  
  //Control logic: Check temp in outer loop, inner loops check if relay status needs changed
  if(temp > bias){ //Temp is too high
    if(RLY_OUT == 0){ //Relay is off, turn it on
      digitalWrite(LED, HIGH);
      digitalWrite(RLY_OUT, HIGH);
    }
    //delay(10); //Necessary here??
  } else { //Temp is low enough
    if(RLY_OUT == 1){ //If relay is on, turn it off 
      digitalWrite(LED, LOW);
      digitalWrite(RLY_OUT, LOW);
    }
    //delay(10);
  } 
  delay(25); //Delay 1/4 sec, to prevent hysterisis. Possibly increase this to >1 sec, depending on relay behavior.
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

void initBlink(int PIN, int delay1, int delay2, int numLoops){ //Blink the led x times, delayTime between blinks
  for(int i=0; i < numLoops; i++){
    digitalWrite(PIN, HIGH);
    delay(delay1);
    digitalWrite(PIN, LOW);
    delay(delay2);
  }
}
