#Perform math
execute as @p run scoreboard players operation #SearchID ID = @s ID 
execute as @e[type=armor_stand,tag=IslandCenter] run scoreboard players operation @s IDMath = @s ID 
scoreboard players operation @e[type=armor_stand,tag=IslandCenter] IDMath -= #SearchID ID

#Delete the antispawner, which should be underneath the altar island
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run setblock ~1 ~-1 ~8 air