#include <dht11.h>
#define DHT11PIN 4 // broche DATA -> broche 4
 
dht11 DHT11;
 
void setup()
{
  Serial.begin(9600);
  while (!Serial) {
    // wait for serial port to connect. Needed for native USB (LEONARDO)
  }
  Serial.println("DHT11 programme d'essai ");
  Serial.print("LIBRARY VERSION: ");
  Serial.println(DHT11LIB_VERSION);
  Serial.println();
}
 
void loop()
{
  DHT11.read(DHT11PIN);
 
  Serial.print("Humidité (%): ");
  Serial.print((float)DHT11.humidity, 2);
  Serial.print("\t");
  Serial.print("Température (°C): ");
  Serial.println((float)DHT11.temperature, 2);
 
  delay(2000);
}
