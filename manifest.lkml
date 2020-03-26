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

### If needed TODO Add more constants here

################ Dependencies ################

visualization: {
  id: "block-braze-sankey"
  label: ""
  file: "sankey.js"
}

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"

  #### If needed TODO Add CONFIG constants here that we want overridden by CORE constants

}
