view: product_filters {
  derived_table: {
    explore_source: inventory_items {
      column: product_department {}
      column: product_category {}
      column: product_brand {}
      column: product_name {}
    }
    persist_for: "9000 hours"
  }
  dimension: product_department {}
  dimension: product_category {}
  dimension: product_brand {}
  dimension: product_name {}
}
