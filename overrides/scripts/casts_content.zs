#loader contenttweaker
import mods.contenttweaker.item.ItemBuilder;

val allSands = 
[
	"soul",
	"black",
	"white",
	"orange",
	"blue",
	"pink",
	"purple"

];

val allParts =
[
	"blank",
	//"bow_limb",
	//"bowstring",
	"arrowhead",
	"bowshaft",
	"broad_axe_head",
	"arrow_shaft",
	"bowguide",
	"crossbow_arm",
	"large_bowshaft",
	"body_plate",
	"feet_plate",
	"head_plate",
	"legs_plate",
	"mail",
	"broad_blade",
	"coin",
	"gear",
	"hammer_head",
	"ingot",
	"large_plate",
	"pickaxe_head",
	"plate",
	"repair_kit",
	"small_axe_head",
	"small_blade",
	"tool_binding",
    "tool_handle",
	"tough_handle",
	"wire",
	"nugget",
	"gem",
	"rod"
];

for i in allSands{
	for j in allParts{
	
		new ItemBuilder().build(i + "_sand_cast" + "/" + j + "_"+ i + "_sand_cast");
	}
}