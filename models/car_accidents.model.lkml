connection: "car_accidents"

# include all the views
include: "/views/**/*.view"

datagroup: car_accidents_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "0 seconds"
}

persist_with: car_accidents_default_datagroup

explore: car_accidents {}

# explore: car_accidents_input {}
