view: car_accidents {
  sql_table_name: `car_accidents.car_accidents`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: airport_code {
    type: string
    sql: ${TABLE}.Airport_Code ;;
  }

  dimension: amenity {
    type: yesno
    sql: ${TABLE}.Amenity ;;
  }

  dimension: astronomical_twilight {
    type: string
    sql: ${TABLE}.Astronomical_Twilight ;;
  }

  dimension: bump {
    type: yesno
    sql: ${TABLE}.Bump ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: civil_twilight {
    type: string
    sql: ${TABLE}.Civil_Twilight ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: crossing {
    type: yesno
    sql: ${TABLE}.Crossing ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: distance_mi_ {
    type: number
    sql: ${TABLE}.Distance_mi_ ;;
  }

  dimension: end_lat {
    type: string
    sql: ${TABLE}.End_Lat ;;
  }

  dimension: end_lng {
    type: string
    sql: ${TABLE}.End_Lng ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.End_Time ;;
  }

  dimension: give_way {
    type: yesno
    sql: ${TABLE}.Give_Way ;;
  }

  dimension: humidity___ {
    type: number
    sql: ${TABLE}.Humidity___ ;;
  }

  dimension: junction {
    type: yesno
    sql: ${TABLE}.Junction ;;
  }

  dimension: nautical_twilight {
    type: string
    sql: ${TABLE}.Nautical_Twilight ;;
  }

  dimension: no_exit {
    type: yesno
    sql: ${TABLE}.No_Exit ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.Number ;;
  }

  dimension: precipitation_in_ {
    type: number
    sql: ${TABLE}.Precipitation_in_ ;;
  }

  dimension: pressure_in_ {
    type: number
    sql: ${TABLE}.Pressure_in_ ;;
  }

  dimension: railway {
    type: yesno
    sql: ${TABLE}.Railway ;;
  }

  dimension: roundabout {
    type: yesno
    sql: ${TABLE}.Roundabout ;;
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.Severity ;;
  }

  dimension: side {
    type: string
    sql: ${TABLE}.Side ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: start_lat {
    type: number
    sql: ${TABLE}.Start_Lat ;;
  }

  dimension: start_lng {
    type: number
    sql: ${TABLE}.Start_Lng ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Start_Time ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: station {
    type: yesno
    sql: ${TABLE}.Station ;;
  }

  dimension: stop {
    type: yesno
    sql: ${TABLE}.Stop ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.Street ;;
  }

  dimension: sunrise_sunset {
    type: string
    sql: ${TABLE}.Sunrise_Sunset ;;
  }

  dimension: temperature_f_ {
    type: number
    sql: ${TABLE}.Temperature_F_ ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.Timezone ;;
  }

  dimension: tmc {
    type: number
    sql: ${TABLE}.TMC ;;
  }

  dimension: traffic_calming {
    type: yesno
    sql: ${TABLE}.Traffic_Calming ;;
  }

  dimension: traffic_signal {
    type: yesno
    sql: ${TABLE}.Traffic_Signal ;;
  }

  dimension: turning_loop {
    type: yesno
    sql: ${TABLE}.Turning_Loop ;;
  }

  dimension: visibility_mi_ {
    type: number
    sql: ${TABLE}.Visibility_mi_ ;;
  }

  dimension: weather_condition {
    type: string
    sql: ${TABLE}.Weather_Condition ;;
  }

  dimension_group: weather_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Weather_Timestamp ;;
  }

  dimension: wind_chill_f_ {
    type: number
    sql: ${TABLE}.Wind_Chill_F_ ;;
  }

  dimension: wind_direction {
    type: string
    sql: ${TABLE}.Wind_Direction ;;
  }

  dimension: wind_speed_mph_ {
    type: number
    sql: ${TABLE}.Wind_Speed_mph_ ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.Zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
