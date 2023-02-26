
# Fan Controller



## Circuit
https://www.circuito.io/app?components=245,512,11021,243599,243599,417986,487601

## Parts
- Microcontroller: Nucleo L476RG
  - Need a microcontroller for obvious reasons.
  - Why this part? MBED compatible, great pinout options, 5V VCC 
- Temperature sensor: 
  - Need a way to get the temperature of the room
  - Why this part? Cheap and very simple digital interface.
- Switch: 
  - Need a way to turn the fan on/off and turn the autonomous logic on/off
  - Why this part? I have worked with them before :)
- LCD:
  - Need a way to visualize the goal/current temperature and system status
  - Why this part? Has I2C connectivity

## Progress
- ✅ Design Circuit
- ❌ Order parts
- ❌ Set up MBED
- ❌ Test/Use temperature sensor
- ❌ Test/Use LCD
- ❌ Test/Use relay