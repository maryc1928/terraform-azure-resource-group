variables {
    location = "East US"
    resource_group_name = "rg-tftest"
}

provider "azurerm" {
    features {}
}

run "simple_plan" {
    command = plan 
}

run bad_resource_group_name_length_should_fail {
    command = plan
    variables {
        resource_group_name = "a-very-long-resource-group-name-that-should-fail-because-it-is-too-long"
        location = "East US"
    }
}

run bad_location_should_fail {
    command = plan
    variables {
        resource_group_name = "rg-tftest"
        location = "East US 2"
    }
}