include: "//@{CONFIG_PROJECT_NAME}/views/canvas_variation.view.lkml"


view: canvas_variation {
  extends: [canvas_variation_config]
}

###################################################

view: canvas_variation_core {
  sql_table_name: @{DATASET_NAME}.CANVAS_VARIATION ;;

  dimension: canvas_id {
    hidden: yes
    type: number
    sql: ${TABLE}.canvas_id ;;
  }

  dimension_group: canvas_updated {
    hidden: yes
    type: time
    sql: PARSE_TIMESTAMP('%Y-%m-%dT%H:%M:%S', ${TABLE}.canvas_updated_at) ;;
    timeframes:
    [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      fiscal_month_num,
      fiscal_quarter,
      fiscal_quarter_of_year,
      fiscal_year
    ]
  }

  dimension: variant_name {
    type: string
    sql: ${TABLE}.variant_name ;;
    primary_key: yes
    description: "Variation of a campaign, differing as defined by the creator."
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [variant_name, canvas.name, canvas.id]
  }
}
