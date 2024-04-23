import crafttweaker.api.CraftingTableManager;

//ESTABLISH OUR DIFFERENT CATEGORIES OF METAL IN NEED OF RECIPES
//(THIS CODE SHOULD BE AN EXACT COPY PASTE OF CODE IN MATERIALS_CONTENT)
//needs nuggets, gears, dust, plates, ingots, blocks
val ingots = 
[ 
	<item:minecraft:iron_ingot>,
	<item:minecraft:gold_ingot>,
	<item:minecraft:netherite_ingot>,
	<item:astralsorcery:starmetal_ingot>,
	<item:botania:manasteel_ingot>,
	<item:botania:terrasteel_ingot>,
	<item:botania:elementium_ingot>,
	<item:contenttweaker:zinc_ingot>,
	<item:contenttweaker:brass_ingot>,
	<item:immersiveengineering:ingot_copper>,
	<item:immersiveengineering:ingot_aluminum>,
	<item:immersiveengineering:ingot_lead>,
	<item:immersiveengineering:ingot_silver>,
	<item:immersiveengineering:ingot_nickel>,
	<item:immersiveengineering:ingot_uranium>,
	<item:immersiveengineering:ingot_constantan>,
	<item:immersiveengineering:ingot_electrum>,
	<item:immersiveengineering:ingot_steel>,
	<item:immersiveengineering:ingot_hop_graphite>,
	<item:materialis:fairy_ingot>,
	<item:byg:pendorite_ingot>,
	<item:thermal:copper_ingot>,
	<item:thermal:tin_ingot>,
	<item:thermal:lead_ingot>,
	<item:thermal:silver_ingot>,
	<item:thermal:nickel_ingot>,
	<item:thermal:bronze_ingot>,
	<item:thermal:electrum_ingot>,
	<item:thermal:invar_ingot>,
	<item:thermal:constantan_ingot>,
	<item:thermal:signalum_ingot>,
	<item:thermal:lumium_ingot>,
	<item:thermal:enderium_ingot>,
	<item:bettercompat:aurinium_ingot>,
	<item:tinkersarchery:tantalum_ingot>,
	<item:tinkersarchery:cobalt_tantalum_ingot>,
	<item:tinkersarchery:galaxy_alloy_ingot>,
	<item:tconstruct:copper_ingot>,
	<item:tconstruct:cobalt_ingot>,
	<item:tconstruct:slimesteel_ingot>,
	<item:tconstruct:tinkers_bronze_ingot>,
	<item:tconstruct:rose_gold_ingot>,
	<item:tconstruct:pig_iron_ingot>,
	<item:tconstruct:queens_slime_ingot>,
	<item:tconstruct:manyullyn_ingot>,
	<item:tconstruct:hepatizon_ingot>,
	<item:pixelmon:aluminium_ingot>,
	<item:pixelmon:silver_ingot>,
	<item:pixelmon:platinum_ingot>
];

val nuggets = 
[ 
	<item:minecraft:iron_nugget>,
	<item:minecraft:gold_nugget>,


	<item:botania:manasteel_nugget>,
	<item:botania:terrasteel_nugget>,
	<item:botania:elementium_nugget>,


	<item:immersiveengineering:nugget_copper>,
	<item:immersiveengineering:nugget_aluminum>,
	<item:immersiveengineering:nugget_lead>,
	<item:immersiveengineering:nugget_silver>,
	<item:immersiveengineering:nugget_nickel>,
	<item:immersiveengineering:nugget_uranium>,
	<item:immersiveengineering:nugget_constantan>,
	<item:immersiveengineering:nugget_electrum>,
	<item:immersiveengineering:nugget_steel>,

	<item:materialis:fairy_nugget>,
	
	<item:thermal:copper_nugget>,
	<item:thermal:tin_nugget>,
	<item:thermal:lead_nugget>,
	<item:thermal:silver_nugget>,
	<item:thermal:nickel_nugget>,
	<item:thermal:bronze_nugget>,
	<item:thermal:electrum_nugget>,
	<item:thermal:invar_nugget>,
	<item:thermal:constantan_nugget>,
	<item:thermal:signalum_nugget>,
	<item:thermal:lumium_nugget>,
	<item:thermal:enderium_nugget>,
	<item:bettercompat:aurinium_nugget>,
	<item:tinkersarchery:tantalum_nugget>,
	<item:tinkersarchery:cobalt_tantalum_nugget>,
	<item:tinkersarchery:galaxy_alloy_nugget>,
	<item:tconstruct:copper_nugget>,
	<item:tconstruct:cobalt_nugget>,
	<item:tconstruct:slimesteel_nugget>,
	<item:tconstruct:tinkers_bronze_nugget>,
	<item:tconstruct:rose_gold_nugget>,
	<item:tconstruct:pig_iron_nugget>,
	<item:tconstruct:queens_slime_nugget>,
	<item:tconstruct:manyullyn_nugget>,
	<item:tconstruct:hepatizon_nugget>,
	<item:contenttweaker:platinum_nugget>
];

val blocks = 
[ 
	<item:minecraft:iron_block>,
	<item:minecraft:gold_block>,
	<item:minecraft:netherite_block>,
	<item:astralsorcery:starmetal>,
	<item:botania:manasteel_block>,
	<item:botania:terrasteel_block>,
	<item:botania:elementium_block>,


	<item:immersiveengineering:storage_copper>,
	<item:immersiveengineering:storage_aluminum>,
	<item:immersiveengineering:storage_lead>,
	<item:immersiveengineering:storage_silver>,
	<item:immersiveengineering:storage_nickel>,
	<item:immersiveengineering:storage_uranium>,
	<item:immersiveengineering:storage_constantan>,
	<item:immersiveengineering:storage_electrum>,
	<item:immersiveengineering:storage_steel>,

	<item:materialis:fairy_block>,
	<item:byg:pendorite_block>,
	<item:thermal:copper_block>,
	<item:thermal:tin_block>,
	<item:thermal:lead_block>,
	<item:thermal:silver_block>,
	<item:thermal:nickel_block>,
	<item:thermal:bronze_block>,
	<item:thermal:electrum_block>,
	<item:thermal:invar_block>,
	<item:thermal:constantan_block>,
	<item:thermal:signalum_block>,
	<item:thermal:lumium_block>,
	<item:thermal:enderium_block>,
	<item:bettercompat:aurinium_block>,
	<item:tinkersarchery:tantalum_block>,
	<item:tinkersarchery:cobalt_tantalum_block>,
	<item:tinkersarchery:galaxy_alloy_block>,
	<item:tconstruct:copper_block>,
	<item:tconstruct:cobalt_block>,
	<item:tconstruct:slimesteel_block>,
	<item:tconstruct:tinkers_bronze_block>,
	<item:tconstruct:rose_gold_block>,
	<item:tconstruct:pig_iron_block>,
	<item:tconstruct:queens_slime_block>,
	<item:tconstruct:manyullyn_block>,
	<item:tconstruct:hepatizon_block>,
	<item:pixelmon:aluminium_block>,
	<item:pixelmon:silver_block>,
	<item:pixelmon:platinum_block>
];



/*
for i in ingots{
	craftingTable.removeRecipe(i);
}
for i in nuggets{
	craftingTable.removeRecipe(i);
}
for i in blocks{
	craftingTable.removeRecipe(i);
}*/
