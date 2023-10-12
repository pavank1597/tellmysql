# Define the database connection to be used for this model.
connection: "mysqltestdev"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: tellmysql_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "0 hour"
}

persist_with: tellmysql_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Tellmysql"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: adultsalaryaggregationcsv {}

explore: adultsalaryaggregationwhitespacecsv {}

explore: adultsalaryv1csv {}

explore: adult_salary_aggregation {}

explore: biguser {}

explore: blk_load1re_return {}

explore: case_sensitive_test {}

explore: custcsv {}

explore: datawithtimewithspacecsv {}

explore: empcsv {}

explore: humans_csv1111 {}

explore: market_qa2 {}

explore: mysql_save {}

explore: mysql_save123 {}

explore: new_salescsv {}

explore: orders_pds_check {}

explore: order_csv {}

explore: order_csvcc123 {}

explore: organizations {}
