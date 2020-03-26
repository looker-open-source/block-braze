- dashboard: advanced_canvas_analytics
  title: Advanced Canvas Analytics
  layout: newspaper
  elements:
  - title: Step Distribution by Canvas
    name: Step Distribution by Canvas
    model: block_braze
    explore: canvas
    type: looker_column
    fields: [canvas_step.count, canvas.id]
    sorts: [canvas_step.count desc]
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
    show_x_axis_ticks: false
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
    y_axes: [{label: "# Steps", orientation: left, series: [{axisId: canvas_step.count,
            id: canvas_step.count, name: Canvas Step}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors:
      canvas_step.count: "#fb8072"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    defaults_version: 1
    listen: {}
    row: 4
    col: 6
    width: 6
    height: 7
  - title: Impression Distribution by Canvas
    name: Impression Distribution by Canvas
    model: block_braze
    explore: canvas
    type: looker_column
    fields: [canvas.id, canvas.estimated_impressions]
    sorts: [canvas.estimated_impressions desc]
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
    show_x_axis_ticks: false
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
    series_colors:
      canvas_step.count: "#fb8072"
      canvas_conversion_event.count: "#fb8072"
      canvas.estimated_audience: "#80b1d3"
      canvas.estimated_impressions: "#80b1d3"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    defaults_version: 1
    listen: {}
    row: 11
    col: 8
    width: 6
    height: 7
  - title: Conversion Rate by Impressions
    name: Conversion Rate by Impressions
    model: block_braze
    explore: canvas
    type: looker_scatter
    fields: [canvas.id, canvas_conversion_event.conversion_rate, canvas.estimated_impressions]
    sorts: [canvas_conversion_event.conversion_rate desc]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    series_types: {}
    series_colors:
      canvas_conversion_event.conversion_rate: "#80b1d3"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [canvas.id]
    listen: {}
    row: 18
    col: 8
    width: 6
    height: 7
  - title: Conversion Rate by Canvas Step
    name: Conversion Rate by Canvas Step
    model: block_braze
    explore: canvas
    type: looker_scatter
    fields: [canvas_conversion_event.conversion_rate, canvas_step_seq.canvas_step_seq,
      canvas.estimated_impressions]
    sorts: [canvas_step_seq.canvas_step_seq desc]
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
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
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
    y_axes: [{label: '', orientation: left, series: [{axisId: canvas_conversion_event.conversion_rate,
            id: canvas_conversion_event.conversion_rate, name: Conversion Rate}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: canvas.estimated_audience, id: canvas.estimated_audience,
            name: Estimated Audience}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: 'Step Sequence #'
    size_by_field: canvas.estimated_impressions
    series_types: {}
    series_colors:
      canvas_conversion_event.conversion_rate: "#fb8072"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen: {}
    row: 4
    col: 0
    width: 6
    height: 7
  - title: Canvas Flow by Impressions
    name: Canvas Flow by Impressions
    model: block_braze
    explore: canvas
    type: block-braze-sankey
    fields: [entry_canvas_step.canvas_step_name, conversion_canvas_step.canvas_step_name,
      canvas.estimated_impressions]
    sorts: [canvas.estimated_impressions desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    color_range: ["#80B1D3", "#FB8072", "#FDB462"]
    label_type: name_value
    show_null_points: true
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 0
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: This visualization aims to achieve understanding in how impressions
      flow from Canvas Entry events to Canvas Conversion events.
    listen: {}
    row: 11
    col: 0
    width: 8
    height: 14
  - title: How Many Steps from Entry Event to Conversion Event
    name: How Many Steps from Entry Event to Conversion Event
    model: block_braze
    explore: canvas
    type: block-braze-sankey
    fields: [entry_canvas_step.canvas_step_name, canvas_step_seq.canvas_step_seq,
      conversion_canvas_step.canvas_step_name, canvas.estimated_impressions]
    sorts: [canvas_step_seq.canvas_step_seq desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    color_range: ["#80B1D3", "#FB8072", "#FDB462"]
    label_type: name_value
    show_null_points: true
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 0
    series_types: {}
    note_state: collapsed
    note_display: above
    note_text: This visualization shows Canvas Entry events on the left and Canvas
      Conversion events on the right. In the middle, we have dimensionalized the number
      of steps that a given Conversion went through from its Entry event. Use this
      visualization to better understand how conversions are moving through your canvas;
      from what Entry event and through how many steps.
    listen: {}
    row: 0
    col: 12
    width: 12
    height: 11
  - title: Conversion Rate by Entry Event
    name: Conversion Rate by Entry Event
    model: block_braze
    explore: canvas
    type: looker_column
    fields: [entry_canvas_step.canvas_step_name, canvas.estimated_impressions, canvas_conversion_event.conversion_rate]
    filters:
      entry_canvas_step.canvas_step_name: "-NULL"
    sorts: [canvas.estimated_impressions desc]
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
    point_style: circle
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
    y_axes: [{label: '', orientation: left, series: [{axisId: canvas.estimated_impressions,
            id: canvas.estimated_impressions, name: Estimated Impressions}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: canvas_conversion_event.conversion_rate,
            id: canvas_conversion_event.conversion_rate, name: Conversion Rate}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Entry Step Name
    series_types:
      canvas_conversion_event.conversion_rate: line
    series_colors:
      canvas.estimated_impressions: "#80b1d3"
      canvas_conversion_event.conversion_rate: "#fb8072"
    defaults_version: 1
    listen: {}
    row: 11
    col: 14
    width: 10
    height: 7
  - title: Conversion Rate by Conversion Event
    name: Conversion Rate by Conversion Event
    model: block_braze
    explore: canvas
    type: looker_column
    fields: [conversion_canvas_step.canvas_step_name, canvas.estimated_impressions,
      canvas_conversion_event.conversion_rate]
    filters:
      conversion_canvas_step.canvas_step_name: "-NULL"
    sorts: [canvas.estimated_impressions desc]
    limit: 500
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
    point_style: circle
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
    y_axes: [{label: '', orientation: left, series: [{axisId: canvas.estimated_impressions,
            id: canvas.estimated_impressions, name: Estimated Impressions}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: canvas_conversion_event.conversion_rate,
            id: canvas_conversion_event.conversion_rate, name: Conversion Rate}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Conversion Step Name
    series_types:
      canvas_conversion_event.conversion_rate: line
    series_colors:
      canvas.estimated_impressions: "#fdb462"
      canvas_conversion_event.conversion_rate: "#fb8072"
    defaults_version: 1
    listen: {}
    row: 18
    col: 14
    width: 10
    height: 7
  - title: Canvas Step Distribution
    name: Canvas Step Distribution
    model: block_braze
    explore: canvas
    type: looker_column
    fields: [canvas_step_seq.canvas_step_seq, canvas_step.count]
    filters:
      canvas_step_seq.canvas_step_seq: NOT NULL
    sorts: [canvas_step_seq.canvas_step_seq]
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
      palette_id: looker_classic
      options:
        steps: 5
    y_axes: [{label: "# Canvas Steps", orientation: left, series: [{axisId: canvas_step.count,
            id: canvas_step.count, name: Canvas Step}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Step Sequence
    series_types: {}
    series_colors:
      canvas_step.count: "#fb8072"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 0
    width: 12
    height: 4
  - title: Canvas Step Event Makeup
    name: Canvas Step Event Makeup
    model: block_braze
    explore: canvas
    type: looker_column
    fields: [canvas_step_seq.canvas_step_seq, email_event.count, in_app_message_event.count,
      push_notification_event.count, webhook_event.count, canvas_conversion_event.count,
      canvas_conversion_event.conversion_rate]
    filters:
      canvas_step_seq.canvas_step_seq: NOT NULL
    sorts: [canvas_step_seq.canvas_step_seq]
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
    point_style: circle
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
      custom:
        id: 6154c422-1978-f873-513e-ba5254ce6039
        label: Custom
        type: continuous
        stops:
        - color: "#80B1D3"
          offset: 0
        - color: "#FB8072"
          offset: 50
        - color: "#FDB462"
          offset: 100
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: email_event.count, id: email_event.count,
            name: Total Impressions}, {axisId: in_app_message_event.count, id: in_app_message_event.count,
            name: In App Message Events}, {axisId: push_notification_event.count,
            id: push_notification_event.count, name: Push Notifications}, {axisId: webhook_event.count,
            id: webhook_event.count, name: Webhook Events}, {axisId: canvas_conversion_event.count,
            id: canvas_conversion_event.count, name: Canvas Conversion Event}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: canvas_conversion_event.conversion_rate,
            id: canvas_conversion_event.conversion_rate, name: Conversion Rate}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types:
      canvas_conversion_event.conversion_rate: line
    series_colors:
      canvas_conversion_event.conversion_rate: "#6b6b6b"
      in_app_message_event.count: "#96cef5"
      push_notification_event.count: "#fb8072"
      canvas_conversion_event.count: "#fdb462"
      webhook_event.count: "#fccf9c"
    series_labels:
      email_event.count: Emails
      in_app_message_event.count: In App Messages
      webhook_event.count: Webhooks
      canvas_conversion_event.count: Conversions
    defaults_version: 1
    listen: {}
    row: 25
    col: 10
    width: 14
    height: 11
  - title: Conversion Events by Conversion Behaviors
    name: Conversion Events by Conversion Behaviors
    model: block_braze
    explore: canvas
    type: looker_scatter
    fields: [conversion_canvas_step.canvas_step_name, canvas_conversion_event.count,
      canvas_conversion_behavior.count, canvas_conversion_event.conversion_rate]
    sorts: [canvas_conversion_behavior.count desc]
    limit: 500
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
    point_style: circle
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
    size_by_field: canvas_conversion_event.conversion_rate
    series_types: {}
    series_colors:
      canvas_conversion_event.count: "#fdb462"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [conversion_canvas_step.canvas_step_name]
    note_state: collapsed
    note_display: hover
    note_text: This visualization is looking at the number of Canvas Conversion Events
      as a function of the number of completed Canvas Conversion Behaviors. Are recipients
      completing high-value actions after many conversion behaviors, or few?
    listen: {}
    row: 25
    col: 0
    width: 10
    height: 11
