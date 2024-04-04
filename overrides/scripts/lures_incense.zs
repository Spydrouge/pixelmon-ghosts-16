
//INCENSE
craftingTable.addShapeless("incense_burner_clear_wave", <item:pixelmon:incense_burner>, [<item:pixelmon:wave_incense>]);
craftingTable.addShapeless("incense_burner_clear_sea", <item:pixelmon:incense_burner>, [<item:pixelmon:sea_incense>]);
craftingTable.addShapeless("incense_burner_clear_rose", <item:pixelmon:incense_burner>, [<item:pixelmon:rose_incense>]);
craftingTable.addShapeless("incense_burner_clear_rock", <item:pixelmon:incense_burner>, [<item:pixelmon:rock_incense>]);
craftingTable.addShapeless("incense_burner_clear_pure", <item:pixelmon:incense_burner>, [<item:pixelmon:pure_incense>]);
craftingTable.addShapeless("incense_burner_clear_odd", <item:pixelmon:incense_burner>, [<item:pixelmon:odd_incense>]);
craftingTable.addShapeless("incense_burner_clear_luck", <item:pixelmon:incense_burner>, [<item:pixelmon:luck_incense>]);
craftingTable.addShapeless("incense_burner_clear_lax", <item:pixelmon:incense_burner>, [<item:pixelmon:lax_incense>]);
craftingTable.addShapeless("incense_burner_clear_full", <item:pixelmon:incense_burner>, [<item:pixelmon:full_incense>]);

//alternative incense burner craftingTable
craftingTable.addShaped("incense_burner_from_wither_skull",<item:pixelmon:incense_burner>, [[<item:minecraft:stick>, <item:minecraft:wither_rose>, <item:minecraft:stick>],[<item:minecraft:stick>, <item:minecraft:ghast_tear>, <item:minecraft:stick>], [<item:minecraft:air>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:air>]]);
craftingTable.addShaped("incense_burner_from_skull",<item:pixelmon:incense_burner>, [[<item:minecraft:stick>, <item:minecraft:wither_rose>, <item:minecraft:stick>],[<item:minecraft:stick>, <item:minecraft:ghast_tear>, <item:minecraft:stick>], [<item:minecraft:air>, <item:minecraft:skeleton_skull>, <item:minecraft:air>]]);


//LURES
//remove old craftingTable
craftingTable.removeRecipe(<item:pixelmon:lure_casing_strong>);
craftingTable.removeRecipe(<item:pixelmon:lure_casing_weak>);

//new lure craftingTable
craftingTable.addShapedMirrored("lure_casing_weak",<item:pixelmon:lure_casing_weak>, [[<item:inspirations:rope>, <item:minecraft:air>, <item:pixelmon:sapphire>],[<item:minecraft:air>, <item:minecraft:iron_bars>, <item:minecraft:air>], [<item:pixelmon:sapphire>, <item:minecraft:air>, <item:minecraft:air>]]);
craftingTable.addShapedMirrored("lure_casing_strong",<item:pixelmon:lure_casing_strong>, [[<item:inspirations:rope>, <item:minecraft:gold_ingot>, <item:pixelmon:ruby>],[<item:minecraft:gold_ingot>, <item:minecraft:air>, <item:minecraft:gold_ingot>], [<item:pixelmon:ruby>, <item:minecraft:gold_ingot>, <item:minecraft:air>]]);
