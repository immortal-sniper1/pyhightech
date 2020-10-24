<<<<<<< HEAD
local resource_autoplace = require("resource-autoplace")

=======
>>>>>>> 72a437e6684fa82c7a4fd21f92329730695cb555
DATA {
    type = "autoplace-control",
    category = "resource",
    name = "phosphate-rock",
    richness = true,
<<<<<<< HEAD
    order = "r-pho"
=======
    order = "b-e"
>>>>>>> 72a437e6684fa82c7a4fd21f92329730695cb555
}

DATA {
    type = "noise-layer",
    name = "phosphate-rock"
}

DATA {
    type = "resource",
    name = "phosphate-rock",
    category = "phosphate",
    icon = "__pyhightechgraphics__/graphics/icons/ores/ancient-remains.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.998, g = 0.998, b = 0.998},
    highlight = true,
<<<<<<< HEAD
    map_grid = false,
    minable = {
=======
    minimum = 10000,
    normal = 20000,
    maximum = 30000,
    map_grid = false,
    minable = {
        hardness = 1.0,
>>>>>>> 72a437e6684fa82c7a4fd21f92329730695cb555
        -- mining_particle = "phosphate-rock-particle",
        mining_time = 2,
        results = {
            {"phosphate-rock", 1}
        },
        fluid_amount = 50,
        required_fluid = "syngas"
    },
    collision_box = {{-4.3, -4.3}, {4.3, 4.3}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
<<<<<<< HEAD
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = resource_autoplace.resource_autoplace_settings {
        name = "phosphate-rock",
        order = "b",
        base_density = 3,
        base_spots_per_km2 = 1.25,
        random_probability = 1/48,
        has_starting_area_placement = false,
        random_spot_size_minimum = 1,
        random_spot_size_maximum = 2,
        additional_richness = 10000,
        regular_rq_factor_multiplier = 1,
        --starting_rq_factor_multiplier = 2,
        --candidate_spot_count = 20
=======
    autoplace = {
        control = "phosphate-rock",
        sharpness = 0.94,
        starting_area = false,
        --max_probability = 0.035,
        richness_multiplier = 100,
        richness_multiplier_distance_bonus = 100,
        richness_base = 40000,
        coverage = 0.0002,
        peaks = {
            {
                noise_layer = "phosphate-rock",
                noise_octaves_difference = -1.5,
                noise_persistence = 0.4
            }
        }
>>>>>>> 72a437e6684fa82c7a4fd21f92329730695cb555
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyhightechgraphics__/graphics/entity/ores/ancient-remains.png",
            priority = "extra-high",
            width = 288,
            height = 288,
            frame_count = 3,
            variation_count = 1,
            shift = {0.0, -0.0},
            hr_version = {
                filename = "__pyhightechgraphics__/graphics/entity/ores/hr-ancient-remains.png",
                priority = "extra-high",
                width = 576,
                height = 576,
                frame_count = 3,
                variation_count = 1,
                shift = util.by_pixel(0, 0),
                scale = 0.5
            }
        }
    }
}
