import crafttweaker.api.tag.MCTag;
import crafttweaker.api.tag.TagManager;
import crafttweaker.api.tag.TagManagerItem;
import mods.jei.JEI;


//ESTABLISH OUR DIFFERENT CATEGORIES OF METAL IN NEED OF RECIPES
//(THIS CODE SHOULD BE AN EXACT COPY PASTE OF CODE IN MATERIALS_CONTENT)
//needs nuggets, gears, dust, plates, ingots, blocks
val newMetals = 
[ 
	"zinc",
	"brass"
];

//needs gears
var vanillaMetals =
[
	"iron",
	"gold"
];

// needs nuggets, gears, dust, plates
var pokeMetals = 
[
	"platinum"
];

//needs dust, plates, nuggets
//val forestryMetals = 
//[
//	"tin",
//	"bronze"
//];

//needs gears, dust, plates
var tinkersMetals = 
[
	"silicon_bronze",
	"cobalt",
	"fairy",
	"manyullyn",
	"hepatizon",
	"pig_iron",
	"rose_gold"
];

//needs gears
val immersiveMetals = 
[
	"aluminum",
	"constantan",
	"electrum",
	"lead",
	"nickel",
	"steel",
	"uranium"
];

var astralMetals =
[
	"starmetal"
];

val nonRodImmersiveMetals = 
[
	"constantan",
	"electrum",
	"lead",
	"nickel",
	"uranium"
];

var nonRodVanillaMetals =
[
	"gold"
];


//LOAD THE ARRAYS

val allNuggets = new stdlib.List<string>();
val allGears = new stdlib.List<string>();
val allDusts = new stdlib.List<string>();
val allPlates = new stdlib.List<string>();
val allIngots = new stdlib.List<string>();
val allBlocks = new stdlib.List<string>();
val allMetals = new stdlib.List<string>();
val allRods = new stdlib.List<string>();

for i in newMetals{
	allNuggets.add(i);
	allGears.add(i);
	allDusts.add(i);
	allPlates.add(i);
	allIngots.add(i);
	allBlocks.add(i);
	
	allMetals.add(i);
	allRods.add(i);
}
for i in vanillaMetals{
	allGears.add(i);
	
	allMetals.add(i);
	
}

for i in pokeMetals{
	allNuggets.add(i);
	allGears.add(i);
	allDusts.add(i);
	allPlates.add(i);
	
	allMetals.add(i);
	allRods.add(i);
}
//for i in forestryMetals{
//	allNuggets.add(i);
//	allDusts.add(i);
//	allPlates.add(i);
//	
//	allMetals.add(i);
//}

for i in tinkersMetals{
	allGears.add(i);
	allDusts.add(i);
	allPlates.add(i);
	allMetals.add(i);
	allRods.add(i);
}

for i in nonRodImmersiveMetals{
	allRods.add(i);
}

for i in nonRodVanillaMetals{
	allRods.add(i);
}

for i in astralMetals{
	allNuggets.add(i);
	allGears.add(i);
	allPlates.add(i);
	allRods.add(i);
}

var lavaMetals =
[
	"cobalt",
	"slimesteel",
	"pig_iron",
	"constantan",
	"nickel",
	"platinum",
	"uranium",
	"invar",
	"cobalt_tantalum"
	
];

var blazingMetals = 
[
	"elementium",
	"terrasteel",
	"aurinium",
	"manyullyn",
	"hepatizon",
	"queens_slime",
	"netherite"
];





//this also works
//<tag:items:forge:tagmanager>;
var loc = "";
var molt = <fluid:tconstruct:molten_iron> * 1;
var temp = 150;

val forgeNuggets = <tag:items:forge:nuggets>;
val forgeIngots = <tag:items:forge:ingots>;
val forgeGears = <tag:items:forge:gears>;
val forgeDusts = <tag:items:forge:dusts>;
val forgePlates = <tag:items:forge:plates>;
val forgeBlocks = <tag:items:forge:storage_blocks>;
val forgeRods = <tag:items:forge:rods>;


//val forestryMinerBag = <tag:items:forestry:backpack/allow/miner>;
for i in allNuggets{

	//oredict tags
	forgeNuggets.add(<item:contenttweaker:${i}_nugget>);
	//forestryMinerBag.add(<item:contenttweaker:${i}_nugget>);

	loc = "forge:nuggets/"+i;
	
	if(i == "silicon_bronze")
	{
		molt = <fluid:tconstruct:molten_tinkers_bronze> * 16;
	}
	else if(i == "fairy" ||i == "starmetal" )
	{
		molt = <fluid:materialis:molten_${i}> * 16;
	}
	else
	{
		molt = <fluid:tconstruct:molten_${i}> * 16;
	}
	
	if(i in blazingMetals)
	{
		temp = 1200;
	}
	else if(i in lavaMetals)
	{
		temp = 900;
	}
	else
	{
		temp = 250;
	}

	<tagmanager:items>.getTag(loc).add(<item:contenttweaker:${i}_nugget>);
	
	//melting recipe
	<recipetype:tconstruct:melting>.addMeltingRecipe(i + "_nugget_melt", <tagmanager:items>.getTag(loc), molt, temp, 50);
	
	//casting recipes
	<recipetype:tconstruct:casting_table>.addItemCastingRecipe(i + "_nugget_cast", <item:tconstruct:nugget_cast>, molt, <item:contenttweaker:${i}_nugget>, 20, false, false);
	
	<recipetype:tconstruct:casting_table>.addItemCastingRecipe(i + "_nugget_red_sand_cast", <item:tconstruct:nugget_red_sand_cast>, molt, <item:contenttweaker:${i}_nugget>, 20, true, false);
	
	<recipetype:tconstruct:casting_table>.addItemCastingRecipe(i + "_nugget_sand_cast", <item:tconstruct:nugget_sand_cast>, molt, <item:contenttweaker:${i}_nugget>, 20, true, false);
}

for i in allBlocks{
	//oredict tags
	forgeBlocks.add(<block:contenttweaker:${i}_block>.asItem());
	//forestryMinerBag.add(<block:contenttweaker:${i}_block>.asItem());

	loc = "forge:storage_blocks/"+i;
	
	if(i == "silicon_bronze")
	{
		molt = <fluid:tconstruct:molten_tinkers_bronze> * 296;
	}
	else if(i == "fairy" ||i == "starmetal" )
	{
		molt = <fluid:materialis:molten_${i}> * 296;
	}
	else
	{
		molt = <fluid:tconstruct:molten_${i}> * 296;
	}
	
	if(i in blazingMetals)
	{
		temp = 1200;
	}
	else if(i in lavaMetals)
	{
		temp = 900;
	}
	else
	{
		temp = 250;
	}

	<tagmanager:items>.getTag(loc).add(<block:contenttweaker:${i}_block>.asItem());
	
	//melting recipe
	<recipetype:tconstruct:melting>.addMeltingRecipe(i + "_block_melt", <tagmanager:items>.getTag(loc), molt, temp, 50);
	
	//casting recipes
	<recipetype:tconstruct:casting_basin>.addItemCastingRecipe(i + "_block_cast", <item:minecraft:air>, molt, <block:contenttweaker:${i}_block>.asItem(), 300, false, false);

}

for i in allGears{
	//oredict tags
	forgeGears.add(<item:contenttweaker:${i}_gear>);
	//forestryMinerBag.add(<item:contenttweaker:${i}_gear>);
	
	loc = "forge:gears/"+i;
	
	if(i == "silicon_bronze")
	{
		molt = <fluid:tconstruct:molten_tinkers_bronze> * 576;
	}
	else if(i == "fairy" ||i == "starmetal" )
	{
		molt = <fluid:materialis:molten_${i}> * 576;
	}
	else
	{
		molt = <fluid:tconstruct:molten_${i}> * 576;
	}
	
	if(i in blazingMetals)
	{
		temp = 1200;
	}
	else if(i in lavaMetals)
	{
		temp = 900;
	}
	else
	{
		temp = 250;
	}
	
	<tagmanager:items>.getTag(loc).add(<item:contenttweaker:${i}_gear>);
	
	//melting recipe
	<recipetype:tconstruct:melting>.addMeltingRecipe(i + "_gear_melt", <tagmanager:items>.getTag(loc), molt, temp, 50);
	
	//casting recipes
	<recipetype:tconstruct:casting_table>.addItemCastingRecipe(i + "_gear_cast", <item:tconstruct:gear_cast>, molt, <item:contenttweaker:${i}_gear>, 120, false, false);
	
	
	<recipetype:tconstruct:casting_table>.addItemCastingRecipe(i + "_gear_red_sand_cast", <item:tconstruct:gear_red_sand_cast>, molt, <item:contenttweaker:${i}_gear>, 120, true, false);
	
	<recipetype:tconstruct:casting_table>.addItemCastingRecipe(i + "_gear_sand_cast", <item:tconstruct:gear_sand_cast>, molt, <item:contenttweaker:${i}_gear>, 120, true, false);
}

for i in allPlates{
	//oredict tags
	forgePlates.add(<item:contenttweaker:${i}_plate>);
	//forestryMinerBag.add(<item:contenttweaker:${i}_plate>);
	
	loc = "forge:plates/"+i;
	
	if(i == "silicon_bronze")
	{
		molt = <fluid:tconstruct:molten_tinkers_bronze> * 144;
	}
	else if(i == "fairy" || i == "starmetal" )
	{
		molt = <fluid:materialis:molten_${i}> * 144;
	}
	else
	{
		molt = <fluid:tconstruct:molten_${i}> * 144;
	}
	
	if(i in blazingMetals)
	{
		temp = 1200;
	}
	else if(i in lavaMetals)
	{
		temp = 900;
	}
	else
	{
		temp = 250;
	}
	
	<tagmanager:items>.getTag(loc).add(<item:contenttweaker:${i}_plate>);
	
	//melting recipe
	<recipetype:tconstruct:melting>.addMeltingRecipe(i + "_plate_melt", <tagmanager:items>.getTag(loc), molt, temp, 50);
	
	//casting recipes
	<recipetype:tconstruct:casting_table>.addItemCastingRecipe(i + "_plate_cast", <item:tconstruct:plate_cast>, molt, <item:contenttweaker:${i}_plate>, 60, false, false);
	
	<recipetype:tconstruct:casting_table>.addItemCastingRecipe(i + "_plate_red_sand_cast", <item:tconstruct:plate_red_sand_cast>, molt, <item:contenttweaker:${i}_plate>, 60, true, false);
	
	<recipetype:tconstruct:casting_table>.addItemCastingRecipe(i + "_plate_sand_cast", <item:tconstruct:plate_sand_cast>, molt, <item:contenttweaker:${i}_plate>, 60, true, false);
}

for i in allIngots{
	//oredict tags
	//forgeIngots.add(<item:contenttweaker:${i}_ingot>);
	//forestryMinerBag.add(<item:contenttweaker:${i}_ingot>);
	
	loc = "forge:ingots/"+i;

	
	if(i == "silicon_bronze")
	{
		molt = <fluid:tconstruct:molten_tinkers_bronze> * 144;
	}
	else if(i == "fairy" ||i == "starmetal" )
	{
		molt = <fluid:materialis:molten_${i}> * 144;
	}
	else
	{
		molt = <fluid:tconstruct:molten_${i}> * 144;
	}
	
	if(i in blazingMetals)
	{
		temp = 1200;
	}
	else if(i in lavaMetals)
	{
		temp = 900;
	}
	else
	{
		temp = 250;
	}
	
	<tagmanager:items>.getTag(loc).add(<item:contenttweaker:${i}_ingot>);
	
	//melting recipe
	<recipetype:tconstruct:melting>.addMeltingRecipe(i + "_ingot_melt", <tagmanager:items>.getTag(loc), molt, temp, 50);
	
	//casting recipes
	<recipetype:tconstruct:casting_table>.addItemCastingRecipe(i + "_ingot_cast", <item:tconstruct:ingot_cast>, molt, <item:contenttweaker:${i}_ingot>, 60, false, false);
	
	<recipetype:tconstruct:casting_table>.addItemCastingRecipe(i + "_ingot_red_sand_cast", <item:tconstruct:ingot_red_sand_cast>, molt, <item:contenttweaker:${i}_ingot>, 60, true, false);
	
	<recipetype:tconstruct:casting_table>.addItemCastingRecipe(i + "_ingot_sand_cast", <item:tconstruct:ingot_sand_cast>, molt, <item:contenttweaker:${i}_ingot>, 60, true, false);
}

for i in allRods{
	
	loc = "forge:rods/"+i;

	
	if(i == "silicon_bronze")
	{
		molt = <fluid:tconstruct:molten_tinkers_bronze> * 72;
	}
	else if(i == "fairy" ||i == "starmetal" )
	{
		molt = <fluid:materialis:molten_${i}> * 72;
	}
	else
	{
		molt = <fluid:tconstruct:molten_${i}> * 72;
	}
	
	if(i in blazingMetals)
	{
		temp = 1200;
	}
	else if(i in lavaMetals)
	{
		temp = 900;
	}
	else
	{
		temp = 250;
	}
	
	<tagmanager:items>.getTag(loc).add(<item:contenttweaker:${i}_rod>);
	
	//melting recipe
	<recipetype:tconstruct:melting>.addMeltingRecipe(i + "_rod_melt", <tagmanager:items>.getTag(loc), molt, temp, 50);
	
	//casting recipes
	<recipetype:tconstruct:casting_table>.addItemCastingRecipe(i + "_rod_cast", <item:tconstruct:rod_cast>, molt, <item:contenttweaker:${i}_rod>, 60, false, false);
	
	<recipetype:tconstruct:casting_table>.addItemCastingRecipe(i + "_rod_red_sand_cast", <item:tconstruct:rod_red_sand_cast>, molt, <item:contenttweaker:${i}_rod>, 60, true, false);
	
	<recipetype:tconstruct:casting_table>.addItemCastingRecipe(i + "_rod_sand_cast", <item:tconstruct:rod_sand_cast>, molt, <item:contenttweaker:${i}_rod>, 60, true, false);
}

for i in allMetals{
	
}


//ALLOYS

//Thermal included
//<recipetype:tconstruct:alloying>.addRecipe("invar_alloy", [<fluid:tconstruct:molten_nickel>, <fluid:tconstruct:molten_iron>*2], <fluid:tconstruct:molten_invar>*3, 500);







