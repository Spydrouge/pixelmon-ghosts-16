
//FOSSILS
//remove old recipe
craftingTable.removeRecipe(<item:pixelmon:fossil_machine_display>);

//add new craftingTable
//craftingTable.addShaped("fossil_machine_tank_from_wood_bucket",<item:pixelmon:fossil_machine_tank>, [[<item:minecraft:light_blue_stained_glass_pane>, <vefluids:vebucket:2>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <item:minecraft:light_blue_stained_glass_pane>],[<item:minecraft:light_blue_stained_glass_pane>, <vefluids:vebucket:2>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <item:minecraft:light_blue_stained_glass_pane>], [<item:minecraft:light_blue_stained_glass_pane>, <vefluids:vebucket:2>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <item:minecraft:light_blue_stained_glass_pane>]]);

craftingTable.addShaped("fossil_machine_tank_from_clay_bucket",
<item:pixelmon:fossil_machine_tank>, [[<item:minecraft:light_blue_stained_glass_pane>, 
<item:ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}),
<item:minecraft:light_blue_stained_glass_pane>],[<item:minecraft:light_blue_stained_glass_pane>,
<item:ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}),
<item:minecraft:light_blue_stained_glass_pane>], [<item:minecraft:light_blue_stained_glass_pane>,
<item:ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), 
<item:minecraft:light_blue_stained_glass_pane>]]);

//craftingTable.addShaped("fossil_machine_display",<item:pixelmon:fossil_machine_display>, [[<item:minecraft:air>, <item:pixelmon:lightworkplace>, <item:minecraft:air>],[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], [<item:rftoolsutility:sequencer>, <item:minecraft:redstone>, <item:rftoolsutility:sensor>]]);

craftingTable.addShaped("fossil_machine_display",<item:pixelmon:fossil_machine_display>, [[<item:minecraft:air>, <item:pixelmon:lightworkplace>, <item:minecraft:air>],[<item:minecraft:air>, <item:immersiveengineering:rs_engineering>, <item:minecraft:air>], [<item:minecraft:air>, <item:minecraft:redstone_block>, <item:minecraft:air>]]);

//ANVIL

//craftingTable.removeRecipe(<item:pixelmon:anvil>);
//craftingTable.removeRecipe(<item:pixelmon:mechanical_anvil>);

//craftingTable.addShapedMirrored(<item:pixelmon:anvil>, [[<item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>],[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:air>], [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]]);
//craftingTable.addShapedMirrored(<item:pixelmon:anvil>, [[<item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>],[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:air>], [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]]);

//craftingTable.addShaped(<item:pixelmon:mechanical_anvil>, [[<item:pixelmon:aluminium_plate>, <item:minecraft:sticky_piston>, <item:pixelmon:aluminium_plate>],[<item:pixelmon:aluminium_plate>, <item:pixelmon:anvil>, <item:pixelmon:aluminium_plate>], [<item:pixelmon:aluminium_plate>, <item:minecraft:furnace>, <item:pixelmon:aluminium_plate>]]);
