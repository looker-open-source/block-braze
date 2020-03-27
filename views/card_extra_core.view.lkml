include: "//@{CONFIG_PROJECT_NAME}/views/card_extra.view.lkml"


view: card_extra {
  extends: [card_extra_config]
}

###################################################

view: card_extra_core {
  sql_table_name: @{DATASET_NAME}.CARD_EXTRA ;;

  dimension: card_id {
    type: number
    sql: ${TABLE}.card_id ;;
    hidden: yes
  }

  dimension_group: card_updated {
    hidden: yes
    type: time
    sql: PARSE_TIMESTAMP('%Y-%m-%dT%H:%M:%S', ${TABLE}.card_updated_at) ;;
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      fiscal_month_num,
      fiscal_quarter,
      fiscal_quarter_of_year,
      fiscal_year]
  }

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [card.name, card.id]
  }
}
