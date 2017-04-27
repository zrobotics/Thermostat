//Name pins
const int THERMISTOR = 1; //For analogRead, pin2 is 1. Yes, confusing...
const int BIASPOT = 3; //For analogRead, pin3 is 3
//CHANGED LED PIN
//const int LED = 4; //LED on pin 4
const int LED = 1; //internal LED on pin 1

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
  initBlink(100, 100, 3); //s
  initBlink(250, 250, 3); //o
  initBlink(100, 100, 3); //s
}

// the loop routine runs over and over again forever:
void loop() {
  //Read sensor and bias pots
  //float temp = analogRead(THERMISTOR); //Use a float if doing math to correct for non-linear sensor
  
  //int temp = analogRead(THERMISTOR);
  //int bias = analogRead(BIASPOT);
  int bias = readAvg(3, BIASPOT); //5 averages of the bias pot
  int temp = readAvg(5, THERMISTOR); //5 averages of the thermistor
  
  //Control logic
/*  loop that writes led status on every iteration
  if(temp > bias){ //Temp is too high, kick on heater and led
    digitalWrite(LED, HIGH);
    digitalWrite(RLY_OUT, HIGH); 
  } else { //Temp is low enough, turn off outputs
    digitalWrite(LED, LOW);
    digitalWrite(RLY_OUT, LOW);
  }
*/
  
  if ((temp > bias) && (LED == 0)){ //Temp is too high and output is not already on
    digitalWrite(LED, HIGH);
    digitalWrite(RLY_OUT, HIGH);
  } else if (temp > bias) { //Temp is too high, but output is already on
    delay(25); //Wait 25ms, just for something to do
  } else if ((temp <= bias) && (LED == 1)){ //Temp is low enough, and outputs are on.
    digitalWrite(LED, LOW);
    digitalWrite(RLY_OUT, LOW);
  } else { //do nothing, outputs don't need switched again
    delay(25);
  }
  
  delay(25); //Delay 1/4 sec, to prevent hysterisis. Possibly increase this to >1 sec, depending on relay behavior.
}

int readAvg(int num, int pin){  //Take average of 'num' analogReads on 'pin'
  int x = 0; //Initialize t @ 0 to hold bias pot reading
  for(int i = 0; i < num; i++){ //Loop 5 times, add each reading
    x = x + analogRead(pin);
    delay(10);    
  }
  x = x / num; //take average
  
  return x;
}

void initBlink(int delay1, int delay2, int numLoops){ //Blink the led x times, delayTime between blinks
  for(int i=0; i < numLoops; i++){
    digitalWrite(LED, HIGH);
    delay(delay1);
    digitalWrite(LED, LOW);
    delay(delay2);
  }
}
