-- ethereal_moss/init.lua
-- More mosses for dirt types in Ethereal NG
-- Copyright (c) 2016  TenPlus1
-- Copyright (c) 2024  1F616EMO
-- SPDX-License-Identifier: MIT

local sounds = default.node_sound_dirt_defaults({
    footstep = {name = "default_grass_footstep", gain = 0.4}
})

local S = minetest.get_translator("ethereal_moss")

minetest.register_node("ethereal_moss:bamboo_moss", {
    description = S("Bamboo Moss"),
    tiles = { "ethereal_grass_bamboo_top.png" },
    is_ground_content = false,
    groups = {crumbly = 3},
    sounds = sounds,
})

minetest.register_craft({
    output = "ethereal_moss:bamboo_moss",
    recipe = { {"default:dirt", "ethereal:bamboo_leaves"}}
})

if minetest.global_exists("stairsplus") then
    if stairsplus.api then -- flux's fork
        stairsplus.api.register_all("ethereal_moss:bamboo_moss")
    else -- Calinou
        stairsplus:register_all("ethereal_moss", "bamboo_moss", "ethereal_moss:bamboo_moss", {
            description = S("Bamboo Moss"),
            tiles = { "ethereal_grass_bamboo_top.png" },
            is_ground_content = false,
            sunlight_propagates = true,
            groups = {crumbly = 3},
            sounds = sounds,
        })
    end
end
