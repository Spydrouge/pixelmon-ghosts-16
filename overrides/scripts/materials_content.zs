#loader contenttweaker
import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.tool.ItemBuilderTool;
import mods.contenttweaker.item.advance.ItemBuilderAdvanced;
import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.stairs.BlockBuilderStairs;
import mods.contenttweaker.block.advance.BlockBuilderAdvanced;
import mods.contenttweaker.block.basic.BlockBuilderBasic;
import mods.contenttweaker.block.pillar.BlockBuilderPillarRotatable;
import mods.contenttweaker.fluid.FluidBuilder;


// ====== ITEMS =====

//ESTABLISH OUR DIFFERENT CATEGORIES OF METAL IN NEED OF RECIPES
//(THIS MUST BE AN EXACT COPY PASTE OF CODE IN MATERIALS_CONTENT)
//needs nuggets, gears, dust, plates, ingots, blocks

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
val forestryMetals = 
[
	"tin",
	"bronze"
];

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

//LOAD THE ARRAYS

val allNuggets = new stdlib.List<string>();
val allGears = new stdlib.List<string>();
val allDusts = new stdlib.List<string>();
val allPlates = new stdlib.List<string>();
val allIngots = new stdlib.List<string>();
val allBlocks = new stdlib.List<string>();

for i in newMetals{
	allNuggets.add(i);
	allGears.add(i);
	allDusts.add(i);
	allPlates.add(i);
	allIngots.add(i);
	allBlocks.add(i);
}
for i in vanillaMetals{
	allGears.add(i);
}

for i in pokeMetals{
	allNuggets.add(i);
	allGears.add(i);
	allDusts.add(i);
	allPlates.add(i);
}
for i in forestryMetals{
	allNuggets.add(i);
	allDusts.add(i);
	allPlates.add(i);
}

for i in tinkersMetals{
	allGears.add(i);
	allDusts.add(i);
	allPlates.add(i);
}

//BUILD

for i in allNuggets{
	new ItemBuilder().build(i + "_nugget");
}

for i in allGears{
	new ItemBuilder().build(i + "_gear");
}

for i in allDusts{
	new ItemBuilder().build(i + "_dust");
}

for i in allPlates{
	new ItemBuilder().build(i + "_plate");
}

for i in allIngots{
	new ItemBuilder().build(i + "_ingot");
}

for i in allBlocks{
	
	new BlockBuilder()
		.withHarvestLevel(1)
		.withHardnessAndResistance(6,6)
		.withHarvestTool(<tooltype:pickaxe>)
		.setRequiresTool()
		.build(i + "_block");
}











