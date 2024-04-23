
//Salvage

craftingTable.addShapeless("salvage_leather_boots", <item:minecraft:rabbit_hide>, [<item:minecraft:leather_boots>]);
craftingTable.addShapeless("salvage_leather_leggings",<item:minecraft:rabbit_hide>, [<item:minecraft:leather_leggings>]);
craftingTable.addShapeless("salvage_leather_chestplate", <item:minecraft:rabbit_hide>, [<item:minecraft:leather_chestplate>]);
craftingTable.addShapeless("salvage_leather_helmet",<item:minecraft:rabbit_hide>, [<item:minecraft:leather_helmet>]);

//Chorus Fruit

craftingTable.addShaped("chorus_flower_from_fruit", <item:minecraft:chorus_flower>, [[<item:minecraft:chorus_fruit>, <item:minecraft:chorus_fruit>, <item:minecraft:chorus_fruit>],[<item:minecraft:chorus_fruit>, <item:biomesoplenty:pink_daffodil>, <item:minecraft:chorus_fruit>], [<item:minecraft:chorus_fruit>, <item:minecraft:chorus_fruit>, <item:minecraft:chorus_fruit>]]);


// Recipes using Iron Nuggets
craftingTable.addShaped("iron_bars_from_nuggets",<item:minecraft:iron_bars> * 2, [[<item:minecraft:iron_nugget>, <item:minecraft:air>, <item:minecraft:iron_nugget>],[<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>], [<item:minecraft:iron_nugget>, <item:minecraft:air>, <item:minecraft:iron_nugget>]]);

//Brewing Stand
craftingTable.removeRecipe(<item:minecraft:brewing_stand>);

craftingTable.addShaped("brewing_stand", <item:minecraft:brewing_stand>, [[<item:minecraft:iron_bars>, <item:minecraft:iron_bars>, <item:minecraft:iron_bars>],[<item:minecraft:air>, <item:minecraft:blaze_rod>, <item:minecraft:air>], [<item:minecraft:stone_slab>, <item:minecraft:stone_slab>, <item:minecraft:stone_slab>]]);
