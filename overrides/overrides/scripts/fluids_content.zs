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

// ====== FLUIDS =====

new FluidBuilder(false, 0xffaa7fc6).build("pixelmon_potion");

new FluidBuilder(false, 0xffD67171).build("pixelmon_super_potion");

new FluidBuilder(false, 0xffF788B6).build("pixelmon_hyper_potion");

new FluidBuilder(false, 0xff2078C0).build("pixelmon_max_potion");

//These are the Status Effect Healers

new FluidBuilder(false, 0xffF8CF48).build("pixelmon_antidote");

new FluidBuilder(false, 0xff67CFDF).build("pixelmon_awakening");

new FluidBuilder(false, 0xff6FD76F).build("pixelmon_burn_heal");

new FluidBuilder(false, 0xffD5E500).build("pixelmon_full_heal");

new FluidBuilder(false, 0xffF0A0A0).build("pixelmon_ice_heal");

new FluidBuilder(false, 0xffF8F88F).build("pixelmon_paralyze_heal");

//these are battle items

new FluidBuilder(false, 0xffDCB84D).build("pixelmon_dire_hit");

new FluidBuilder(false, 0xffC870B8).build("pixelmon_x_accuracy");

new FluidBuilder(false, 0xffE18079).build("pixelmon_x_attack");

new FluidBuilder(false, 0xff787FE1).build("pixelmon_x_defence");

new FluidBuilder(false, 0xffC9C868).build("pixelmon_x_special_attack");

new FluidBuilder(false, 0xff5CB0B0).build("pixelmon_x_special_defence");

new FluidBuilder(false, 0xff68C8C8).build("pixelmon_x_speed");

//PP restoring items [TODO] Unfinished

new FluidBuilder(false, 0xff44245E).build("pixelmon_ether");
new FluidBuilder(false, 0xff68B040).build("pixelmon_max_ether");
new FluidBuilder(false, 0xffB16942).build("pixelmon_elixer");
new FluidBuilder(false, 0xff40B0B0).build("pixelmon_max_elixer");




//Calcium Liquid

new FluidBuilder(false, 0xffeeeeee).build("calcium");
new FluidBuilder(false, 0xffDE583B).build("protein");
new FluidBuilder(false, 0xffDEBC4B).build("carbohydrates");
