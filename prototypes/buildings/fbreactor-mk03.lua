RECIPE {
    type = "recipe",
    name = "fbreactor-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"fbreactor-mk02", 1},
        {"niobium-plate", 15},
        {"electric-engine-unit", 2},
        {"processing-unit", 10},
        {"plastic-bar", 100},
        {"graphene-roll", 40},
    },
    results = {
        {"fbreactor-mk03", 1}
    }
}:add_unlock("graphene")

ITEM {
    type = "item",
    name = "fbreactor-mk03",
    icon = "__pyhightechgraphics__/graphics/icons/fbreactor-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-hightech-buildings-mk03",
    order = "c",
    place_result = "fbreactor-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "fbreactor-mk03",
    icon = "__pyhightechgraphics__/graphics/icons/fbreactor-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "fbreactor-mk03"},
    fast_replaceable_group = "fbreactor",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"fbreactor"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "600kW",
<<<<<<< HEAD
=======
    ingredient_count = 10,
>>>>>>> 72a437e6684fa82c7a4fd21f92329730695cb555
    animation = {
        layers = {
            {
                filename = "__pyhightechgraphics__/graphics/entity/fbreactor/fbreactor.png",
                width = 160,
                height = 220,
                frame_count = 1,
                shift = util.by_pixel(0, -23)
            },
            {
                filename = "__pyhightechgraphics__/graphics/entity/fbreactor/fbreactor-mask.png",
                width = 160,
                height = 220,
                frame_count = 1,
                shift = util.by_pixel(0, -23),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
            {
                filename = "__pyhightechgraphics__/graphics/entity/fbreactor/shadow.png",
                width = 182,
                height = 220,
                frame_count = 1,
                draw_as_shadow = true,
                shift = util.by_pixel(12, -26)
            }
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(16, 11),
            west_position = util.by_pixel(16, 11),
            south_position = util.by_pixel(16, 11),
            east_position = util.by_pixel(16, 11),
            animation = {
                filename = "__pyhightechgraphics__/graphics/entity/fbreactor/anim.png",
                frame_count = 40,
                line_length = 10,
                width = 128,
                height = 96,
                animation_speed = 0.8
            }
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, 3.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3.0, -1.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.0, -3.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.0, 1.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3.0, 2.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, -3.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 3.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {3.0, -2.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyhightechgraphics__/sounds/fbreactor.ogg", volume = 0.6},
        idle_sound = {filename = "__pyhightechgraphics__/sounds/fbreactor.ogg", volume = 0.5},
        apparent_volume = 2.5
    }
}
