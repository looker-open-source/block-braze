include: "//@{CONFIG_PROJECT_NAME}/views/campaign_stats.view.lkml"

view: campaign_stats {
  extends: [campaign_stats_config]
}

############################

view: campaign_stats_core {
  derived_table: {
    explore_source: campaign {
      column: updated { field: campaign.updated_raw }
      column: conversions { field: campaign_conversion_event.count }
      column: name {}
      column: channel {}
      column: estimated_audience {}
      column: push_bounces { field: push_notification_event.total_bounces }
      column: email_bounces { field: email_event.total_bounces }
      column: campaign_id { field: campaign.id }
      column: enrollment { field: campaign_enrollment_event.count }
      column: subscriptions { field: subscription_event.count }
      column: days_time_to_conversion { field: campaign_enrollment_event.days_to_conversion }

#       filters: [campaign.estimated_audience: "NOT NULL"]
    }

    sql_trigger_value: SELECT CURRENT_DATE() ;;
  }

  dimension: id {
    primary_key: yes
    hidden: yes
    sql: CAST(${campaign_id} as STRING) ||' '|| CAST(${updated_raw} as STRING);;
  }

  dimension: campaign_id {
    #hidden: yes
    type: string
  }

  dimension_group: updated {
    hidden: yes
    type: time
    timeframes: [date, month, raw, time]
  }

  dimension: conversions {
    hidden: yes
    type: number
  }
  measure: sum_conversions {
    hidden: yes
    type: sum_distinct
    sql: ${conversions} ;;
    sql_distinct_key: ${campaign_id} ;;
  }

  dimension: estimated_audience {
    hidden: yes
    type: number
  }
  measure: sum_estimated_audience {
    #hidden: yes
    type: sum_distinct
    sql: ${estimated_audience} ;;
    sql_distinct_key: ${campaign_id} ;;
  }

  dimension: name {
    hidden: yes
    description: "campaign name"
  }

  dimension: enrollment {
    hidden: yes
    type: number
  }

  dimension: channel {}

  dimension: subscriptions {
    hidden: yes
    type: number
  }
  measure: sum_subscriptions {
    hidden: yes
    type: sum_distinct
    sql: ${subscriptions} ;;
    sql_distinct_key: ${campaign_id} ;;
   }

  dimension: days_time_to_conversion {
    hidden: yes
    type: number
  }

  dimension: push_bounces {
    hidden: yes
    type: number
  }
  measure: sum_push_bounces {
    hidden: yes
    type: sum_distinct
    sql: ${push_bounces} ;;
    sql_distinct_key: ${campaign_id} ;;
  }

  dimension: email_bounces {
    hidden: yes
    type: number
  }
  measure: sum_email_bounces {
    hidden: yes
    type: sum_distinct
    sql: ${email_bounces} ;;
    sql_distinct_key: ${campaign_id} ;;
  }

  measure: num_of_campaigns {
    hidden: yes
    type: count_distinct
    sql: ${campaign_id} ;;
  }

  measure: average_bounces {
    group_label: "Average Metrics"
    label: "Average Bounce Rate"
    type: number
    sql: (${sum_push_bounces} + ${sum_email_bounces})/NULLIF(${sum_estimated_audience},0) ;;
    value_format_name: percent_1
  }

  measure: average_subscriptions {
    group_label: "Average Metrics"
    label: "Average Subscriptions"
    type: number
    sql: ${sum_subscriptions}/NULLIF(${num_of_campaigns},0) ;;
    value_format_name: decimal_1
  }

  measure: conversion_rate {
    group_label: "Average Metrics"
    label: "Average Conversion Rate"
    type: number
    sql: ${sum_conversions}/NULLIF(${sum_estimated_audience},0) ;;
    value_format_name: percent_1
  }

  measure: average_conversions {
    group_label: "Average Metrics"
    label: "Average Number of Conversion Events"
    type: number
    sql: ${sum_conversions}/NULLIF(${num_of_campaigns},0) ;;
    value_format_name: decimal_0
  }

  measure: average_estimated_audience {
    group_label: "Average Metrics"
    label: "Average Estimated Audience"
    type: number
    sql: ${sum_estimated_audience}/NULLIF(${num_of_campaigns}, 0) ;;
    value_format_name: decimal_0
  }

  measure: average_days_to_conversion {
    group_label: "Average Metrics"
    label: "Average Number of Days Until Conversion Event"
    type: average
    sql: (${days_time_to_conversion}) ;;
    value_format_name: decimal_0
  }

}
