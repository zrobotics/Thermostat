/*
  ReadAnalogVoltage
  Reads an analog input on pin 0, converts it to voltage, and prints the result to the serial monitor.
  Attach the center pin of a potentiometer to pin A0, and the outside pins to +5V and ground.

 This example code is in the public domain.
 */
  const int LED = 2;
  //int POTVAL;

// the setup routine runs once when you press reset:
void setup() {
  // init Led
  pinMode(LED, OUTPUT);
  digitalWrite(LED, LOW);
  SOS();
  
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);

}

// the loop routine runs over and over again forever:
void loop() {
  // read the input on analog pin 0:
  //int sensorValue = analogRead(A0);
  // Convert the analog reading (which goes from 0 - 1023) to a voltage (0 - 5V):
  //float voltage = sensorValue * (5.0 / 1023.0);
  int therm = readTherm();
  // print out the value you read:
  int bias = readBias();
  Serial.println("Thermistor");
  Serial.println(therm);
  Serial.println("Bias");
  Serial.println(bias);
  // Turn led off/on
  if(therm < bias){
    digitalWrite(LED, LOW);
  } else {
    digitalWrite(LED, HIGH);
  }
  delay(250);

}

int readTherm(){
  int THERMVAL = analogRead(A0);
  return THERMVAL;
}
int readBias(){
  int POTVAL = analogRead(A1);
  return POTVAL;
}

void SOS(){
  //Short blink
  digitalWrite(LED, HIGH);
  delay(250);
  digitalWrite(LED, LOW);
  delay(250);
  
  //Short blink
  digitalWrite(LED, HIGH);
  delay(250);
  digitalWrite(LED, LOW);
  delay(250);
  
  //Short blink
  digitalWrite(LED, HIGH);
  delay(250);
  digitalWrite(LED, LOW);
  delay(250);
  
  //Long blink
  digitalWrite(LED, HIGH);
  delay(500);
  digitalWrite(LED, LOW);
  delay(250);
    
  //Long blink
  digitalWrite(LED, HIGH);
  delay(500);
  digitalWrite(LED, LOW);
  delay(250);
    
  //Long blink
  digitalWrite(LED, HIGH);
  delay(500);
  digitalWrite(LED, LOW);
  delay(250);
    
  //Short blink
  digitalWrite(LED, HIGH);
  delay(250);
  digitalWrite(LED, LOW);
  delay(250);
  
  //Short blink
  digitalWrite(LED, HIGH);
  delay(250);
  digitalWrite(LED, LOW);
  delay(250);  
  
  //Short blink
  digitalWrite(LED, HIGH);
  delay(250);
  digitalWrite(LED, LOW);
  delay(250);
}
