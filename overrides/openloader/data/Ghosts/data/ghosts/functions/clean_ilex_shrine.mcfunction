#Perform math
execute as @p run scoreboard players operation #SearchID ID = @s ID 
execute as @e[type=armor_stand,tag=IslandCenter] run scoreboard players operation @s IDMath = @s ID 
scoreboard players operation @e[type=armor_stand,tag=IslandCenter] IDMath -= #SearchID ID

#Erase the structure block for the boulder
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run setblock ~-20 ~39 ~-20 air
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run setblock ~-20 ~40 ~-20 air

