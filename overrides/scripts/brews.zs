import crafttweaker.api.Brewing;

//Get Ether Brewing woorking
brewing.removeRecipe(<item:pixelmon:potion>, <item:pixelmon:leppa_berry>, <item:minecraft:potion>.withTag({Potion: "minecraft:water"}));
brewing.addRecipe(<item:pixelmon:ether>, <item:pixelmon:leppa_berry>, <item:minecraft:potion>.withTag({Potion: "minecraft:water"}));

//Disable the Hyper Potion Recipes
brewing.removeRecipe(<item:pixelmon:hyper_potion>, <item:pixelmon:figy_berry>, <item:pixelmon:super_potion>);
brewing.removeRecipe(<item:pixelmon:hyper_potion>, <item:pixelmon:wiki_berry>, <item:pixelmon:super_potion>);
brewing.removeRecipe(<item:pixelmon:hyper_potion>, <item:pixelmon:mago_berry>, <item:pixelmon:super_potion>);
brewing.removeRecipe(<item:pixelmon:hyper_potion>, <item:pixelmon:aguav_berry>, <item:pixelmon:super_potion>);
brewing.removeRecipe(<item:pixelmon:hyper_potion>, <item:pixelmon:iapapa_berry>, <item:pixelmon:super_potion>);

//Disable the Super Potion Recipie
brewing.removeRecipe(<item:pixelmon:super_potion>, <item:pixelmon:sitrus_berry>, <item:pixelmon:potion>);


//Enable Super Potion Recipes
brewing.addRecipe(<item:pixelmon:super_potion>, <item:pixelmon:figy_berry>, <item:pixelmon:potion>);
brewing.addRecipe(<item:pixelmon:super_potion>, <item:pixelmon:wiki_berry>, <item:pixelmon:potion>);
brewing.addRecipe(<item:pixelmon:super_potion>, <item:pixelmon:mago_berry>, <item:pixelmon:potion>);
brewing.addRecipe(<item:pixelmon:super_potion>, <item:pixelmon:aguav_berry>, <item:pixelmon:potion>);
brewing.addRecipe(<item:pixelmon:super_potion>, <item:pixelmon:iapapa_berry>, <item:pixelmon:potion>);


//Enable new Hyper Potion Recipe
brewing.removeRecipe(<item:pixelmon:hyper_potion>, <item:pixelmon:sitrus_berry>, <item:pixelmon:super_potion>);