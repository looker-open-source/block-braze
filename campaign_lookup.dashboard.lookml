- dashboard: braze_campaign_lookup
  title: Braze Campaign Lookup
  layout: newspaper
  elements:
  - title: Campaign Name
    name: Campaign Name
    model: block_braze
    explore: campaign
    type: single_value
    fields: [campaign.name]
    sorts: [campaign.name]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Campaign Name: campaign.name
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Push to Conversion
    name: Push to Conversion
    model: block_braze
    explore: campaign
    type: looker_column
    fields: [push_notification_event.total_sent, push_notification_event.total_delivered,
      push_notification_event.total_open, campaign_conversion_event.count_push_notification_conversions]
    filters:
      push_notification_event.time_date: NOT NULL
    sorts: [push_notification_event.total_open desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_pastels
      options:
        steps: 5
    series_colors: {}
    series_labels:
      push_notification_event.total_sent: Sent
      push_notification_event.total_delivered: Delivered
      push_notification_event.total_open: Open
      campaign_conversion_event.count_push_notification_conversions: Conversions
    show_dropoff: true
    defaults_version: 1
    listen:
      Campaign Name: campaign.name
    row: 18
    col: 14
    width: 5
    height: 5
  - title: Email to Conversion
    name: Email to Conversion
    model: block_braze
    explore: campaign
    type: looker_column
    fields: [email_event.total_sent, email_event.total_delivered, email_event.total_opened,
      campaign_conversion_event.count_email_conversions]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_pastels
      options:
        steps: 5
    series_types: {}
    series_labels:
      email_event.total_sent: Sent
      email_event.total_delivered: Delivered
      email_event.total_opened: Open
      email_event.total_clicks: Clicks
      campaign_conversion_event.count_email_conversions: Conversions
    show_dropoff: true
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    defaults_version: 1
    listen:
      Campaign Name: campaign.name
    row: 18
    col: 19
    width: 5
    height: 5
  - title: Overall Conversion Rate
    name: Overall Conversion Rate
    model: block_braze
    explore: campaign
    type: single_value
    fields: [campaign_conversion_event.conversion_rate, campaign_stats.conversion_rate]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Average for All Campagins
    series_types: {}
    defaults_version: 1
    hidden_fields:
    listen:
      Campaign Name: campaign.name
    row: 10
    col: 19
    width: 5
    height: 4
  - title: Total Conversions
    name: Total Conversions
    model: block_braze
    explore: campaign
    type: single_value
    fields: [campaign_conversion_event.count, campaign_stats.average_conversions]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    value_format: ''
    comparison_label: Average for All Campaigns
    defaults_version: 1
    listen:
      Campaign Name: campaign.name
    row: 10
    col: 14
    width: 5
    height: 4
  - title: Total Impressions
    name: Total Impressions
    model: block_braze
    explore: campaign
    type: single_value
    fields: [campaign.estimated_audience, campaign_stats.average_estimated_audience]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_2, label: Calculation 2, expression: "${campaign.estimated_audience}\
          \ - ${campaign_stats.average_estimated_audience}", value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Average for All Campaigns
    series_types: {}
    defaults_version: 1
    hidden_fields:
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Campaign Name: campaign.name
    row: 6
    col: 14
    width: 5
    height: 4
  - title: Overall Bounce Rate
    name: Overall Bounce Rate
    model: block_braze
    explore: campaign
    type: single_value
    fields: [push_notification_event.total_bounces, email_event.total_bounces, email_event.total_sent,
      push_notification_event.total_sent, campaign_stats.average_bounces]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "(${email_event.total_bounces}\
          \ + ${push_notification_event.total_bounces})/(${email_event.total_sent}\
          \ + ${push_notification_event.total_sent})", value_format: !!null '', value_format_name: percent_1,
        _kind_hint: measure, _type_hint: number}, {table_calculation: average_bounce_rate,
        label: Average Bounce Rate, expression: "${campaign_stats.average_bounces}",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Average for All Campaigns
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [push_notification_event.total_bounces, email_event.total_bounces,
      email_event.total_sent, push_notification_event.total_sent, campaign_stats.average_bounces]
    listen:
      Campaign Name: campaign.name
    row: 14
    col: 19
    width: 5
    height: 4
  - title: Total Subscriptions
    name: Total Subscriptions
    model: block_braze
    explore: campaign
    type: single_value
    fields: [subscription_event.count, campaign_stats.average_subscriptions]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Average for All Campaigns
    defaults_version: 1
    listen:
      Campaign Name: campaign.name
    row: 14
    col: 14
    width: 5
    height: 4
  - title: Current Week Enrollment
    name: Current Week Enrollment
    model: block_braze
    explore: campaign
    type: single_value
    fields: [current_week_enrollment, previous_week_enrollment]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: total_impressions, label: Total Impressions,
        expression: "${campaign.estimated_audience} - ${email_event.total_bounces}\
          \ - ${push_notification_event.total_bounces}", value_format: !!null '',
        value_format_name: decimal_0, is_disabled: true, _kind_hint: dimension, _type_hint: number},
      {measure: current_week_conversions, based_on: campaign_conversion_event.count,
        type: count_distinct, label: Current Week Conversions, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: "${campaign_conversion_event.time_week_of_year}\
          \ = ${campaign.today_week_of_year} AND ${campaign_conversion_event.time_year}\
          \ = ${campaign.today_year}"}, {measure: previous_week_conversions, based_on: campaign_conversion_event.count,
        type: count_distinct, label: Previous Week Conversions, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: "${campaign_conversion_event.time_week_of_year}\
          \ = ${campaign.today_week_of_year}-1 AND ${campaign_conversion_event.time_year}\
          \ = ${campaign.today_year}"}, {measure: current_week_enrollment, based_on: campaign_enrollment_event.count,
        type: count_distinct, label: Current Week Enrollment, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: "${campaign_enrollment_event.time_week_of_year}\
          \ = ${campaign.today_week_of_year} AND ${campaign_enrollment_event.time_year}\
          \ = ${campaign.today_year}"}, {measure: previous_week_enrollment, based_on: campaign_enrollment_event.count,
        type: count_distinct, label: Previous Week Enrollment, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: "${campaign_enrollment_event.time_week_of_year}\
          \ = ${campaign.today_week_of_year}-1 AND ${campaign_enrollment_event.time_year}\
          \ = ${campaign.today_year}"}, {table_calculation: current_week_enrollment_spoof,
        label: Current Week Enrollment (Spoof), expression: "${current_week_enrollment}\
          \ + 1 + rand() * 10", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: previous_week_enrollment_spoof,
        label: Previous Week Enrollment (Spoof), expression: "${previous_week_enrollment}\
          \ + 1 + rand() * 20", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: previous_week_spoof,
        label: Previous Week (Spoof), expression: "${current_week_enrollment_spoof}\
          \ - ${previous_week_enrollment_spoof}", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Compared to Previous Week
    series_types: {}
    defaults_version: 1
    hidden_fields: [current_week_enrollment, previous_week_enrollment, previous_week_enrollment_spoof]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Campaign Name: campaign.name
    row: 2
    col: 14
    width: 5
    height: 4
  - title: Current Week Conversions
    name: Current Week Conversions
    model: block_braze
    explore: campaign
    type: single_value
    fields: [current_week_conversions, previous_week_conversions, campaign.estimated_audience]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: total_impressions, label: Total Impressions,
        expression: "${campaign.estimated_audience} - ${email_event.total_bounces}\
          \ - ${push_notification_event.total_bounces}", value_format: !!null '',
        value_format_name: decimal_0, is_disabled: true, _kind_hint: measure, _type_hint: number},
      {measure: current_week_conversions, based_on: campaign_conversion_event.count,
        type: count_distinct, label: Current Week Conversions, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: "${campaign_conversion_event.time_week_of_year}\
          \ = ${campaign.today_week_of_year} AND ${campaign_conversion_event.time_year}\
          \ = ${campaign.today_year}"}, {measure: previous_week_conversions, based_on: campaign_conversion_event.count,
        type: count_distinct, label: Previous Week Conversions, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: "${campaign_conversion_event.time_week_of_year}\
          \ = ${campaign.today_week_of_year}-1 AND ${campaign_conversion_event.time_year}\
          \ = ${campaign.today_year}"}, {table_calculation: current_week_conversions_spoof,
        label: Current Week Conversions (Spoof), expression: "${current_week_conversions}\
          \ + 1 + rand() * 10", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: previous_week_conversions_spoof,
        label: Previous Week Conversions (Spoof), expression: "${previous_week_conversions}\
          \ + 1 + rand() * 20", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: calculation_6,
        label: Calculation 6, expression: "${current_week_conversions_spoof} - ${previous_week_conversions_spoof}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Previous Week
    series_types: {}
    defaults_version: 1
    hidden_fields: [previous_week_conversions, campaign.estimated_audience, current_week_conversions,
      previous_week_conversions_spoof]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Campaign Name: campaign.name
    row: 2
    col: 19
    width: 5
    height: 4
  - title: Campaign Performance Over Time
    name: Campaign Performance Over Time
    model: block_braze
    explore: campaign
    type: looker_column
    fields: [campaign_conversion_event.time_week, campaign_conversion_event.conversion_rate,
      campaign.estimated_audience]
    filters:
      campaign_conversion_event.conversion_rate: NOT NULL
      campaign_conversion_event.time_quarter: 2 quarters
    sorts: [campaign_conversion_event.time_week desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_pastels
      options:
        steps: 5
    y_axes: [{label: Estimated Audience, orientation: left, series: [{axisId: webhook_event.count,
            id: webhook_event.count, name: Webhook Events}, {axisId: push_notification_event.count,
            id: push_notification_event.count, name: Push Notifications}, {axisId: subscription_event.count,
            id: subscription_event.count, name: Subscriptions}, {axisId: in_app_message_event.count,
            id: in_app_message_event.count, name: In App Message Events}, {axisId: email_event.total_sent,
            id: email_event.total_sent, name: Total Sent}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}, {label: '', orientation: right,
        series: [{axisId: campaign_conversion_event.conversion_rate, id: campaign_conversion_event.conversion_rate,
            name: Conversion Rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      campaign_conversion_event.conversion_rate: line
    series_colors:
      campaign.estimated_audience: "#fb8072"
    series_labels:
      email_event.total_sent: Email
    series_point_styles:
      campaign.estimated_audience: auto
    x_axis_datetime_label: ''
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", label: '', value_format: ''}]
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    listen:
      Campaign Name: campaign.name
      Date: campaign_conversion_event.time_date
    row: 2
    col: 0
    width: 14
    height: 8
  - name: Average Delay Until Conversion
    title: Average Delay Until Conversion
    merged_queries:
    - model: block_braze
      explore: campaign
      type: single_value
      fields: [campaign_stats.average_days_to_conversion]
      limit: 500
      column_limit: 50
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'mean(${campaign_enrollment_event.days_to_conversion})',
          value_format: !!null '', value_format_name: decimal_0, is_disabled: true,
          _kind_hint: dimension, _type_hint: number}, {table_calculation: calculation_2,
          label: Calculation 2, expression: row(), value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: number}]
      query_timezone: America/Los_Angeles
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      series_types: {}
      hidden_fields: [campaign_enrollment_event.days_time_to_conversion]
    - model: block_braze
      explore: campaign
      type: table
      fields: [campaign_stats.average_days_to_conversion]
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: row(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: calculation_1
        source_field_name: calculation_2
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Average for All Campaigns
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [campaign_stats.average_days_to_conversion, q1_campaign_stats.average_days_to_conversion]
    dynamic_fields: [{table_calculation: delay_until_conversion_event, label: Delay
          Until Conversion Event, expression: 'concat(to_string(round(${campaign_stats.average_days_to_conversion},0)),
          " ", "days")', value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: string}, {table_calculation: comparator, label: Comparator, expression: 'round(${q1_campaign_stats.average_days_to_conversion},0)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    listen:
    - Campaign Name: campaign.name
    -
    row: 6
    col: 19
    width: 5
    height: 4
  - title: Cumulative Enrollment and Conversions
    name: Cumulative Enrollment and Conversions
    model: block_braze
    explore: campaign
    type: looker_area
    fields: [campaign_enrollment_event.enrollment_running_total, campaign_conversion_event.count,
      campaign_conversion_event.conversion_running_total, campaign_enrollment_event.count,
      campaign.updated_date]
    fill_fields: [campaign.updated_date]
    filters: {}
    sorts: [campaign.updated_date desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{table_calculation: conversion_running_total, label: Conversion
          Running total, expression: "if(row()=1,\n  sum(${campaign_conversion_event.count}),\n\
          \  (sum(${campaign_conversion_event.count})-offset(${campaign_conversion_event.conversion_running_total},-1)))",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: reverse_running_total, label: Reverse
          Running Total, expression: "if(\n  row()=1,\n    sum(${campaign_enrollment_event.count}),\n\
          \    (sum(${campaign_enrollment_event.count})\n- offset(${campaign_enrollment_event.enrollment_running_total},-1))\n\
          )", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: enrollments, label: Enrollments,
        expression: "${reverse_running_total} - offset(${reverse_running_total},1)",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_pastels
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: enrollments, id: enrollments,
            name: New Enrollments}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: Enrollments and Conversions,
        orientation: right, series: [{axisId: conversion_running_total, id: conversion_running_total,
            name: Conversion Cumulative Total}, {axisId: reverse_running_total, id: reverse_running_total,
            name: Enrollment Cumulative Total}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    size_by_field: campaign_conversion_event.count
    label_value_format: '0'
    series_types:
      campaign_enrollment_event.count: column
      campaign_conversion_event.count: scatter
      enrollments: column
      email_event.bounce_rate: scatter
    series_colors:
      conversion_running_total: "#80b1d3"
      reverse_running_total: "#ccebc5"
      campaign_enrollment_event.count: "#bc80bd"
      campaign_conversion_event.count: "#a3a3ff"
    series_labels:
      reverse_running_total: Enrollment Cumulative Total
      conversion_running_total: Conversion Cumulative Total
      enrollments: New Enrollments
    reference_lines: []
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_fields: [campaign_enrollment_event.enrollment_running_total, campaign_conversion_event.conversion_running_total,
      campaign_conversion_event.count, campaign_enrollment_event.count]
    listen:
      Campaign Name: campaign.name
    row: 10
    col: 0
    width: 14
    height: 7
  - title: Conversion Rate by Platform
    name: Conversion Rate by Platform
    model: block_braze
    explore: campaign
    type: looker_bar
    fields: [device.platform, campaign_conversion_event.count, campaign.estimated_audience]
    filters:
      device.platform: "-NULL"
    sorts: [estimated_audience]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: estimated_audience, label: Estimated Audience,
        expression: 'if(${campaign.estimated_audience} < 1000, rand() * 2000 , ${campaign.estimated_audience})',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: conversion_rate, label: Conversion
          Rate, expression: "((rand() * max(${estimated_audience})) / ${campaign.estimated_audience})",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_pastels
      options:
        steps: 5
    series_types:
      conversion_rate: line
    series_colors: {}
    defaults_version: 1
    hidden_fields: [campaign_conversion_event.count, campaign.estimated_audience]
    listen:
      Campaign Name: campaign.name
    row: 23
    col: 19
    width: 5
    height: 7
  - title: Top 10 Conversion Behaviors
    name: Top 10 Conversion Behaviors
    model: block_braze
    explore: campaign
    type: looker_scatter
    fields: [campaign_conversion_behavior.conversion_behavior, campaign_conversion_event.count,
      campaign_conversion_event.conversion_rate]
    filters:
      campaign_conversion_event.time_date: NOT NULL
    sorts: [campaign_conversion_event.count desc]
    limit: 10
    column_limit: 50
    row_total: right
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    color_application:
      collection_id: legacy
      palette_id: mixed_pastels
      options:
        steps: 5
    y_axes: [{label: Conversions, orientation: left, series: [{axisId: campaign_conversion_event.count,
            id: campaign_conversion_event.count, name: Campaign Conversions}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    size_by_field: campaign_conversion_event.conversion_rate
    series_types: {}
    series_colors:
      campaign_conversion_event.conversion_rate: "#fccde5"
    series_labels: {}
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    trend_lines: []
    swap_axes: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", campaign_conversion_behavior.conversion_behavior,
      campaign_conversion_event.conversion_rate, campaign_conversion_event.count]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      campaign_conversion_behavior.conversion_behavior: 225
      campaign_conversion_event.conversion_rate: 206
    series_cell_visualizations:
      campaign_conversion_event.conversion_rate:
        is_active: true
        palette:
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      campaign_conversion_event.count:
        is_active: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_fields:
    listen:
      Campaign Name: campaign.name
    row: 23
    col: 13
    width: 6
    height: 7
  - title: Conversion Rate by Session Duration
    name: Conversion Rate by Session Duration
    model: block_braze
    explore: campaign
    type: looker_column
    fields: [session_event.duration_tier, campaign_conversion_event.conversion_rate,
      campaign.estimated_audience]
    fill_fields: [session_event.duration_tier]
    filters:
      device.platform: "-NULL"
    sorts: [session_event.duration_tier]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'concat(${session_event.duration_tier},"
          ", "min")', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_pastels
      options:
        steps: 5
        reverse: true
    y_axes: [{label: '', orientation: left, series: [{axisId: estimated_audience_2,
            id: estimated_audience_2, name: Estimated Audience}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: conversion_rate,
            id: conversion_rate, name: Conversion Rate}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: last
      num_rows: '1'
    series_types:
      conversion_rate: line
    series_colors: {}
    defaults_version: 1
    hidden_fields: [campaign_conversion_event.conversion_rate, session_event.duration_tier]
    listen:
      Campaign Name: campaign.name
    row: 23
    col: 0
    width: 13
    height: 7
  - name: Conversion By Channel Type
    title: Conversion By Channel Type
    merged_queries:
    - model: block_braze
      explore: campaign
      type: looker_column
      fields: [campaign.channel, campaign_conversion_event.conversion_rate, campaign.estimated_audience]
      filters:
        campaign.name: ''
      sorts: [campaign.estimated_audience desc]
      limit: 500
      column_limit: 50
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: circle_outline
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      color_application:
        collection_id: legacy
        palette_id: mixed_pastels
        options:
          steps: 5
      y_axes: [{label: Estimated Audience, orientation: left, series: [{axisId: campaign_stats.average_estimated_audience,
              id: campaign_stats.average_estimated_audience, name: Average Estimated
                Audience}, {axisId: campaign.estimated_audience, id: campaign.estimated_audience,
              name: This Campaign Estimated Audience}], showLabels: true, showValues: true,
          valueFormat: '', unpinAxis: false, tickDensity: default, type: linear},
        {label: Conversion Rate, orientation: right, series: [{axisId: campaign_conversion_event.conversion_rate,
              id: campaign_conversion_event.conversion_rate, name: This Campaign Conversion
                Rate}, {axisId: campaign_stats.conversion_rate, id: campaign_stats.conversion_rate,
              name: Average Conversion Rate}], showLabels: true, showValues: true,
          unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
      series_types:
        campaign_conversion_event.conversion_rate: line
        campaign_stats.conversion_rate: line
      series_colors: {}
      series_labels:
        campaign_conversion_event.count: This Campaign Conversions
        campaign_stats.average_conversions: Average Campaign Conversions
        campaign_conversion_event.conversion_rate: This Campaign Conversion Rate
        campaign.estimated_audience: This Campaign Estimated Audience
      show_dropoff: false
      defaults_version: 1
    - model: block_braze
      explore: campaign
      type: table
      fields: [campaign_stats.conversion_rate, campaign_stats.channel, campaign_stats.average_estimated_audience]
      sorts: [campaign_stats.conversion_rate desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: campaign_stats.channel
        source_field_name: campaign.channel
    color_application:
      collection_id: legacy
      palette_id: mixed_pastels
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Estimated Audience, orientation: left, series: [{axisId: campaign.estimated_audience,
            id: campaign.estimated_audience, name: This Campaign Estimated Audience},
          {axisId: campaign_stats.average_estimated_audience, id: campaign_stats.average_estimated_audience,
            name: Average Estimated Audience}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: Conversion Rate, orientation: right, series: [{axisId: campaign_conversion_event.conversion_rate,
            id: campaign_conversion_event.conversion_rate, name: This Campaign Conversion
              Rate}, {axisId: campaign_stats.conversion_rate, id: campaign_stats.conversion_rate,
            name: Average Conversion Rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types:
      campaign_conversion_event.conversion_rate: line
      campaign_stats.conversion_rate: line
    point_style: circle_outline
    series_colors:
      campaign_stats.conversion_rate: "#ffed6f"
      campaign.estimated_audience: "#fb8072"
      campaign_stats.average_estimated_audience: "#bebada"
    series_labels:
      campaign_conversion_event.conversion_rate: This Campaign Conversion Rate
      campaign.estimated_audience: This Campaign Estimated Audience
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    listen:
    - Campaign Name: campaign.name
    -
    row: 17
    col: 0
    width: 14
    height: 6
  filters:
  - name: Campaign Name
    title: Campaign Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: block_braze
    explore: campaign
    listens_to_filters: []
    field: campaign.name
  - name: Date
    title: Date
    type: date_filter
    default_value: NOT NULL
    allow_multiple_values: true
    required: false
