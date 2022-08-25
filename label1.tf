module "label1" {
  source      = "./"
  namespace   = "Test"
  environment = "USW"
  stage       = "prod"
  name        = "VPC"
  attributes  = ["fire", "water", "earth", "air"]

  label_order = ["name", "environment", "stage", "attributes"]

  tags = {
    "City"        = "Dublin"
    "Environment" = "Private"
  }
}

output "label1" {
  value = {
    id         = module.label1.id
    name       = module.label1.name
    namespace  = module.label1.namespace
    stage      = module.label1.stage
    attributes = module.label1.attributes
    delimiter  = module.label1.delimiter
  }
}

output "label1_tags" {
  value = module.label1.tags
}

output "label1_context" {
  value = module.label1.context
}

output "label1_normalized_context" {
  value = module.label1.normalized_context
}