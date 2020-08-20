Input: dailyRoutes.csv from v0 folder
Output: dailyRoutes.csv in V1 folder
Artifact: dailyRoutes.txt

Rename the extension to .txt for excel.
Loaded it using text delimiter parse helper.  
Specified each column to have "," as a decimal point and deleted "," as a thousand marker.
Converted % into 0.xxxx.
Show whole numbers for TIMESTAMP field.

Example:
TIMESTAMP,MARK,MODEL,CAR_YEAR,ENGINE_POWER,AUTOMATIC,VEHICLE_ID,BAROMETRIC_PRESSURE(KPA),ENGINE_COOLANT_TEMP,FUEL_LEVEL,ENGINE_LOAD,AMBIENT_AIR_TEMP,ENGINE_RPM,INTAKE_MANIFOLD_PRESSURE,MAF,LONG TERM FUEL TRIM BANK 2,FUEL_TYPE,AIR_INTAKE_TEMP,FUEL_PRESSURE,SPEED,SHORT TERM FUEL TRIM BANK 2,SHORT TERM FUEL TRIM BANK 1,ENGINE_RUNTIME,THROTTLE_POS,DTC_NUMBER,TROUBLE_CODES,TIMING_ADVANCE,EQUIV_RATIO,MIN,HOURS,DAYS_OF_WEEK,MONTHS,YEAR
1502902504267,chevrolet,agile,2011,1.4,n,car1,100,80,0.4860,0.3330,,1009,49,4.49,,Biodiesel_Ethanol,59,,0,,,0:03:28,0.2500,MIL is OFF0 codes,,0.5690,0.0100,13,16,2,8,2017
