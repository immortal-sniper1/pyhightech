Recipe {
    type = "recipe",
    name = "chloromethane",
    category = "methanol",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "methanol", amount = 100},
		{type = "fluid", name = "sulfuric-acid", amount = 50},
    },
    results = {
        {type = "fluid", name = "chloromethane", amount = 30}
    },
    main_product = "chloromethane",
}:add_unlock("graphene"):replace_ingredient("sulfuric-acid" , "hydrogen-chloride")

Fluid {
    type = "fluid",
    name = "chloromethane",
    icon = "__pyhightech__/graphics/icons/chloromethane.png",
    default_temperature = 15,
    base_color = {r = 0.321, g = 0.549, b = 0.321},
    flow_color = {r = 0.321, g = 0.549, b = 0.321},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-hightech-fluids",
    order = "c"
}
