local Pipes = require("stdlib.data.pipes")

local recipe1 = {
    type = "recipe",
    name = "fbreactor",
    energy_required = 10,
    enabled = true,
    ingredients = {
        {"boiler", 2},
        {"pipe", 15},
        {"stone-furnace", 4},
        {"iron-plate", 40},

    },
    result = "fbreactor"
}

local item1 = {
    type = "item",
    name = "fbreactor",
    icon = "__pyhightech__/graphics/icons/fbreactor.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-hightech-buildings",
    order = "c",
    place_result = "fbreactor",
    stack_size = 10
}

local entity1 = {
    type = "assembling-machine",
    name = "fbreactor",
    icon = "__pyhightech__/graphics/icons/fbreactor.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "fbreactor"},
    fast_replaceable_group = "fbreactor",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"fbreactor"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.01
    },
    energy_usage = "100kW",
    ingredient_count = 7,
    animation = {
        layers = {
            {
                filename = "__pyhightech__/graphics/entity/fbreactor/fbreactor.png",
				--priority = "high",
                width = 160,
                height = 220,
                --line_length = 10,
                frame_count = 1,
                --animation_speed = 0.4,
                shift = util.by_pixel(0, -23)
            },
            {
                filename = "__pyhightech__/graphics/entity/fbreactor/shadow.png",
				--priority = "high",
                width = 182,
                height = 220,
                --line_length = 10,
                frame_count = 1,
                --animation_speed = 0.4,
				draw_as_shadow = true,
                shift = util.by_pixel(12, -26)
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(16, 11),
            west_position = util.by_pixel(16, 11),
            south_position = util.by_pixel(16, 11),
            east_position = util.by_pixel(16, 11),
            animation = {
                filename = "__pyhightech__/graphics/entity/fbreactor/anim.png",
				--priority = "low",
                frame_count = 40,
                line_length = 10,
                width = 128,
                height = 96,
                animation_speed = 0.8
            },
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = Pipes.pictures("assembling-machine-2", nil, {0.0,-0.96}, nil, nil, pipes),
            pipe_covers = Pipes.covers(false, true, true, true),
            base_area = 10,
			base_level = -1,
            pipe_connections = {
				{ position = {-1.0, 3.0}},
				{ position = {-3.0, -1.0}},
				{ position = {1.0, -3.0}},
				{ position = {3.0, 1.0}}
			}
        },
        {
            production_type = "output",
            pipe_picture = Pipes.pictures("assembling-machine-2", nil, {0.0,-0.96}, nil, nil, pipes),
            pipe_covers = Pipes.covers(false, true, true, true),
			base_level = 1,
            pipe_connections = {
				{ position = {-3.0, 2.0}},
				{ position = {-2.0, -3.0}},
				{ position = {2.0, 3.0}},
				{ position = {3.0, -2.0}}
			}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyhightech__/sounds/fbreactor.ogg", volume = 1.0},
        idle_sound = {filename = "__pyhightech__/sounds/fbreactor.ogg", volume = 0.7},
        apparent_volume = 2.5
    }
}

data:extend {recipe1, item1, entity1}