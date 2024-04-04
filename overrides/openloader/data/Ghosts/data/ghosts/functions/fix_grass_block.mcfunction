execute as @p run scoreboard players operation #SearchID ID = @s ID 
execute as @e[type=armor_stand,tag=IslandCenter] run scoreboard players operation @s IDMath = @s ID 
scoreboard players operation @e[type=armor_stand,tag=IslandCenter] IDMath -= #SearchID ID
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run fill ~3 ~-1 ~-1 ~3 ~-1 ~-1 dirt replace coarse_dirt
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run fill ~3 ~-1 ~-1 ~3 ~-1 ~-1 grass_block replace dirt