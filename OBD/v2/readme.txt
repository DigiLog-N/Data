Input: dailyRoutes.csv from v1 folder
Output: dailyRoutes.csv in V2 folder

Process:
Add a new column named, Class.
0 in class indicates the original data.
1 in class indicates the simulated data with added noise to the AIR_INTAKE_TEMP column.  The other fields/columns stayed intact.

Added random noise to AIR_INTAKE_TEMP using "RANDBETWEEN(15, 25)" in excel.

Example:
TIMESTAMP,MARK,MODEL,CAR_YEAR,ENGINE_POWER,AUTOMATIC,VEHICLE_ID,BAROMETRIC_PRESSURE(KPA),ENGINE_COOLANT_TEMP,FUEL_LEVEL,ENGINE_LOAD,AMBIENT_AIR_TEMP,ENGINE_RPM,INTAKE_MANIFOLD_PRESSURE,MAF,LONG TERM FUEL TRIM BANK 2,FUEL_TYPE,AIR_INTAKE_TEMP,FUEL_PRESSURE,SPEED,SHORT TERM FUEL TRIM BANK 2,SHORT TERM FUEL TRIM BANK 1,ENGINE_RUNTIME,THROTTLE_POS,DTC_NUMBER,TROUBLE_CODES,TIMING_ADVANCE,EQUIV_RATIO,MIN,HOURS,DAYS_OF_WEEK,MONTHS,YEAR,Class
1502902504267,chevrolet,agile,2011,1.4,n,car1,100,80,0.4860,0.3330,,1009,49,4.49,,Biodiesel_Ethanol,59,,0,,,0:03:28,0.2500,MIL is OFF0 codes,,0.5690,0.0100,13,16,2,8,2017,0
...
1502902504267,chevrolet,agile,2011,1.4,n,car1,100,80,0.4860,0.3330,,1009,67,4.49,,Biodiesel_Ethanol,59,,0,,,0:03:28,0.2500,MIL is OFF0 codes,,0.5690,0.0100,13,16,2,8,2017,0

Notice the change in value in AIR_INTAKE_TEMP from 49 to 67.
The last column is the Class.