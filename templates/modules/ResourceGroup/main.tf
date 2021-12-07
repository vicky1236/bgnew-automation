##============ResourceGroup============##
resource "azurerm_resource_group" "rg" {
  name             = "${var.compPrefix}-${var.projectName}-${var.environment}"
  location         = var.location
  tags = {
      Environment    = var.environment
      IacRepository  = var.IacRepository
      #compliance
        creationDate = formatdate("MM/DD/YYYY",timestamp())
        creatorName = data.azurerm_client_config.current.client_id
        supportgroupEmail = var.supportgroupEmail
        organizationName = var.organizationName
        costcenterGLAccount = var.costcenterGLAccount
        dataOwner = var.dataOwner
        dataClassification = var.dataClassification
        dataCompliance = var.dataCompliance
        dataRegulation = var.dataRegulation
  }
}