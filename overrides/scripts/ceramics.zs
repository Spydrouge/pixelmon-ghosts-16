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