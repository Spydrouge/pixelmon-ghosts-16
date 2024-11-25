#kill any means of trying to retain or use the masterball or duplicate it
execute at @p run kill @e[type=pixelmon:pixelmon,distance=..300]
execute at @p run kill @e[type=pixelmon:empty_pokeball,distance=..300]
execute at @p run kill @e[type=minecraft:item,distance=..300]

execute at @p run clear @p pixelmon:poke_ball

#run standard code for finding the armor stand
execute as @p run scoreboard players operation #SearchID ID = @s ID 
execute as @e[type=armor_stand,tag=IslandCenter] run scoreboard players operation @s IDMath = @s ID 
scoreboard players operation @e[type=armor_stand,tag=IslandCenter] IDMath -= #SearchID ID

#delete the masterball loot chest
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run setblock ~ ~2 ~7 air