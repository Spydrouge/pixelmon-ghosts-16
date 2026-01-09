import crafttweaker.api.CampFireManager;

//did it with a datapack
//craftingTable.addShapeless("unfired_bone_china", <item:ceramics:unfired_porcelain> * 1, [<item:minecraft:clay_ball>, <item:minecraft:bone_meal>]);

campfire.addRecipe("badly_made_brick",<item:minecraft:brick>,<item:minecraft:clay_ball>, 0.5, 1800);

var blood_bucket = <item:ceramics:clay_bucket>.withTag({fluid:"tconstruct:blood" as string}).transformReplace(<item:ceramics:clay_bucket>);
var glowstone_dust = <item:minecraft:glowstone_dust>;
var egg = <item:minecraft:egg>;
var blood_grass = <item:tconstruct:blood_slime_tall_grass>;

//NBT Recipes - can't be done with datapacks
craftingTable.addShaped("blood_cake_clay_bucket", <item:tconstruct:blood_cake>, [
    [blood_bucket, blood_bucket, blood_bucket],
    [glowstone_dust, egg, glowstone_dust],
	[blood_grass, blood_grass, blood_grass]
]);

var slime_bucket = <item:ceramics:clay_bucket>.withTag({fluid:"tconstruct:earth_slime" as string}).transformReplace(<item:ceramics:clay_bucket>);
var sugar = <item:minecraft:sugar>;
var slime_grass = <item:tconstruct:earth_slime_tall_grass>;

//NBT Recipes - can't be done with datapacks
craftingTable.addShaped("earth_cake_clay_bucket", <item:tconstruct:earth_cake>, [
    [slime_bucket, slime_bucket, slime_bucket],
    [sugar, egg, sugar],
	[slime_grass, slime_grass, slime_grass]
]);

var sky_slime_bucket = <item:ceramics:clay_bucket>.withTag({fluid:"tconstruct:sky_slime" as string}).transformReplace(<item:ceramics:clay_bucket>);
var sky_slime_grass = <item:tconstruct:sky_slime_tall_grass>;

//NBT Recipes - can't be done with datapacks
craftingTable.addShaped("sky_cake_clay_bucket", <item:tconstruct:sky_cake>, [
    [sky_slime_bucket, sky_slime_bucket, sky_slime_bucket],
    [sugar, egg, sugar],
	[sky_slime_grass, sky_slime_grass, sky_slime_grass]
]);

var ender_slime_bucket = <item:ceramics:clay_bucket>.withTag({fluid:"tconstruct:ender_slime" as string}).transformReplace(<item:ceramics:clay_bucket>);
var ender_slime_grass = <item:tconstruct:earth_slime_tall_grass>;

//NBT Recipes - can't be done with datapacks
craftingTable.addShaped("ender_cake_clay_bucket", <item:tconstruct:ender_cake>, [
    [ender_slime_bucket, ender_slime_bucket, ender_slime_bucket],
    [sugar, egg, sugar],
	[ender_slime_grass, ender_slime_grass, ender_slime_grass]
]);

var magma_cream_bucket = <item:ceramics:cracked_clay_bucket>.withTag({fluid:"tconstruct:magma" as string});
var crimson_roots = <item:minecraft:crimson_roots>;

craftingTable.addShaped("magma_cake_clay_bucket", <item:tconstruct:magma_cake>, [
    [magma_cream_bucket, magma_cream_bucket, magma_cream_bucket],
    [glowstone_dust, egg, glowstone_dust],
	[crimson_roots, crimson_roots, crimson_roots]
]);

var wheat = <item:minecraft:wheat>;
var water_bucket = <item:ceramics:clay_bucket>.withTag({fluid:"minecraft:water" as string}).transformReplace(<item:ceramics:clay_bucket>);

craftingTable.addShaped("dough_ceramics_water_bucket", <item:farmersdelight:wheat_dough>*3, [
    [water_bucket, wheat],
    [wheat, wheat]
]);

var plank = <tag:items:minecraft:planks>;
var stick = <tag:items:forge:rods/wooden>;
var wool = <tag:items:minecraft:wool>;
var creosote_bucket_ie = <item:ceramics:clay_bucket>.withTag({fluid:"immersiveengineering:creosote" as string}).transformReplace(<item:ceramics:clay_bucket>);
var creosote_bucket_tf = <item:ceramics:clay_bucket>.withTag({fluid:"thermal:creosote" as string}).transformReplace(<item:ceramics:clay_bucket>);


craftingTable.addShaped("treated_wood_ceramics_ie", <item:immersiveengineering:treated_wood_horizontal>*8, [
    [plank, plank, plank],
    [plank, creosote_bucket_ie, plank],
	[plank, plank, plank]
]);

craftingTable.addShaped("treated_wood_ceramics_tf", <item:immersiveengineering:treated_wood_horizontal>*8, [
    [plank, plank, plank],
    [plank, creosote_bucket_tf, plank],
	[plank, plank, plank]
]);

craftingTable.addShaped("torch_creosote_ceramics_ie", <item:minecraft:torch>*12, [
    [],
    [wool, creosote_bucket_ie],
	[stick, stick, stick]
]);

craftingTable.addShaped("torch_creosote_ceramics_tf", <item:minecraft:torch>*12, [
    [],
    [wool, creosote_bucket_tf],
	[stick, stick, stick]
]);


