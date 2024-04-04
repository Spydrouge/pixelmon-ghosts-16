import mods.jei.JEI;


//<recipetype:tconstruct:material>.removeByName("tconstruct:tools/materials/utherium");
//<recipetype:tconstruct:casting_table>.removeByName("materialis:tools/materials/casting/utherium");
//<recipetype:tconstruct:casting_table>.removeRecipe(<item:tconstruct:small_axe_head>);

//<recipetype:tconstruct:melting>.removeByName("materialis:smeltery/melting/metal/utherium/"+i);
//never worked 
//<recipetype:tconstruct:casting_table>.removeRecipe(<item:tconstruct:${i}>.withTag({"Material":"materialis:utherium"}));

//never worked
//<recipetype:tconstruct:casting_table>.removeByName("materialis:smeltery/casting/metal/utherium");

//worked. couldn't get $[j] to work with the tags. 
//mods.jei.JEI.hideItem(<item:tconstruct:${i}>.withTag({"Material":"materialis:utherium"}));
