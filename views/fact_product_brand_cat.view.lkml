view: fact_product_brand_cat {
  derived_table: {
    sql: SELECT product_brand, product_category, product_department,COUNT(*) as Count, SUM(COST) as total_cost FROM `daveward-ps-dev.thelook.inventory_items` Group by 1,2,3
      ;;
      datagroup_trigger: the_look_demo_default_datagroup
  }

  dimension: product_brand {
    type: string
    sql: ${TABLE}.product_brand ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.product_category ;;
  }

  dimension: product_department {
    type: string
    sql: ${TABLE}.product_department ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.Count ;;
  }

  dimension: total_cost {
    type: number
    sql: ${TABLE}.total_cost ;;
  }

  set: detail {
    fields: [product_brand, product_category, product_department, count, total_cost]
  }
}
