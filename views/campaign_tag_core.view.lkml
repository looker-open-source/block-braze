include: "//@{CONFIG_PROJECT_NAME}/views/campaign_tag.view.lkml"


view: campaign_tag {
  extends: [campaign_tag_config]
}

###################################################

view: campaign_tag_core {
  sql_table_name: @{DATASET_NAME}.CAMPAIGN_TAG ;;

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
    hidden: yes
    description: "id of the campaign if from a campaign"
  }

  dimension_group: campaign_updated {
    type: time
    hidden: yes
    sql: PARSE_TIMESTAMP('%Y-%m-%dT%H:%M:%S', ${TABLE}.campaign_updated_at) ;;
    timeframes: [
      raw,
      date,
      week,
      week_of_year,
      month,
      quarter,
      year,
      fiscal_month_num,
      fiscal_quarter,
      fiscal_quarter_of_year,
      fiscal_year]
  }

  dimension: tag {
    type: number
    label: "Campaign Tag"
    sql: ${TABLE}.tag ;;
    description: "tag names associated with the campaign"
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: [campaign.name, campaign.id]
  }
}
