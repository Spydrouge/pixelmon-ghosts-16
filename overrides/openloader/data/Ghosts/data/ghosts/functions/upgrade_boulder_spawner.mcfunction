
#Perform math
execute as @p run scoreboard players operation #SearchID ID = @s ID 
execute as @e[type=armor_stand,tag=IslandCenter] run scoreboard players operation @s IDMath = @s ID 
scoreboard players operation @e[type=armor_stand,tag=IslandCenter] IDMath -= #SearchID ID

#Create the structure block for the boulder spawner
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run setblock ~-8 ~-15 ~6 minecraft:structure_block[mode=load]{metadata:"protected",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,showair:0b,name:"ghosts:upgrade_boulder_spawner",id:"minecraft:structure_block",sizeX:1,sizeY:2,sizeZ:1,showboundingbox:0}
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run setblock ~-8 ~-14 ~-6 redstone_block
