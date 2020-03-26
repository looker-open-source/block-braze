project_name: "block-braze"

################ Constants ################

constant: CONFIG_PROJECT_NAME {
  value: "block-braze-config"
  export: override_required
}

constant: CONNECTION_NAME {
  value: "brick-layer"
  export: override_required
}

constant: DATASET_NAME {
  value: "braze_variant_1"
  export: override_required
}

################ Dependencies ################

visualization: {
  id: "block-braze-sankey"
  label: ""
  file: "sankey.js"
}

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
}
