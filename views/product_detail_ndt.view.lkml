# If necessary, uncomment the line below to include explore_source.
# include: "the_look_demo.model.lkml"

view: product_detail_ndt {
  derived_table: {
    explore_source: inventory_items {
      column: product_department {}
      column: product_category {}
      column: product_brand {}
      column: product_name {}
      bind_filters: {
        from_field: product_detail_ndt.product_brand
        to_field: inventory_items.product_brand
      }
    }
  }
  dimension: product_department {}
  dimension: product_category {}
  dimension: product_brand {}
  dimension: product_name {}
}
