//Changing the fiow craftingTable
craftingTable.removeRecipe(<item:fiow:flint_tool_head>);
craftingTable.removeRecipe(<item:fiow:flint_shovel>);
craftingTable.removeRecipe(<item:fiow:flint_pickaxe>);
craftingTable.removeRecipe(<item:fiow:flint_hoe>);
craftingTable.removeRecipe(<item:fiow:flint_axe>);

//Flint mod craftingTable
craftingTable.addShaped("flint_shovel",<item:fiow:flint_shovel>, [[<item:minecraft:air>, <item:minecraft:flint>, <item:minecraft:air>],[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>], [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);
craftingTable.addShaped("flint_pickaxe", <item:fiow:flint_pickaxe>, [[<item:minecraft:flint>, <item:minecraft:flint>, <item:minecraft:flint>],[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>], [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);
craftingTable.addShaped("flint_hoe", <item:fiow:flint_hoe>, [[<item:minecraft:flint>, <item:minecraft:flint>, <item:minecraft:air>],[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>], [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);
craftingTable.addShaped("flint_axe_left", <item:fiow:flint_axe>, [[<item:minecraft:flint>, <item:minecraft:flint>, <item:minecraft:air>],[<item:minecraft:flint>, <item:minecraft:stick>, <item:minecraft:air>], [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);
craftingTable.addShaped("flint_axe_right", <item:fiow:flint_axe>, [[<item:minecraft:air>, <item:minecraft:flint>, <item:minecraft:flint>],[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:flint>], [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

