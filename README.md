# Research and Development Datasets

This repository includes data and scripts for potential use with DigiLog-N.
Ultimately, only PHM08 was used for the Phase I effort. However, OBD and X-Plane data may be useful and interesting for other purposes.

- OBD data originally from https://www.kaggle.com/cephasax/obdii-ds3?select=exp1_14drivers_14cars_dailyRoutes.csv

- PHM08 data is from the NASA jet engine prognostics challenge; search for "PHM08 Challenge Data Set" at https://ti.arc.nasa.gov/tech/dash/groups/pcoe/prognostic-data-repository/#turbofan or https://ti.arc.nasa.gov/tech/dash/groups/pcoe/prognostic-data-repository/publications/#phm08_challenge

- "X-Plane data.csv" contains 6 DOF data streamed from X-Plane. Data was saved to file using a slightly customized version of UDP2CT. Data includes takeoff and ascent; about 15:42:00 GMT, a failure occurred in the left and right horizontal stabilizer. First line of data from the file and a picture of the data in WebScan are shown below.

| Epoch time | ID | Timestamp | pitch_deg  | roll_deg  | hding_true  | hding_mag  | lat_deg  | lon_deg  | alt_ftmsl  | alt_ftagl  |  on_runwy | alt_ind  | lat_south  | lon_west  |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1.597764857386E12 | XPLANE | 2020-08-18T15:34:17.386 GMT | 2.2213778  | -0.3681316  |  352.40228 |  337.06555 | 47.437492  |  -122.305824 |  361.82724 | 0.25427642  | 1.0  | 361.82776  |  47.5 | -122.0  |

![X-Plane data in WebScan](https://github.com/DigiLog-N/Data/blob/master/X-Plane-data.png?raw=true)
