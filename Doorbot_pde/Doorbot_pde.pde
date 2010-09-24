int triggerPin = 9;

void setup()
{
  Serial.begin(9600);
  pinMode(9, OUTPUT);   // digital sensor is on digital pin 2
}

void loop()
{
  if (Serial.available() > 0) {
    char inByte = Serial.read();

    if (inByte == '1') {
      // Strobe a little
      for (int i = 0; i < 2; i++) {
        digitalWrite(triggerPin, HIGH);
        delay(100);
        digitalWrite(triggerPin, LOW);
        delay(30);
      }
      delay(500); // Pause to ensure it resets
    }
  }
}
