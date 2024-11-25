#Perform math
execute as @p run scoreboard players operation #SearchID ID = @s ID 
execute as @e[type=armor_stand,tag=IslandCenter] run scoreboard players operation @s IDMath = @s ID 
scoreboard players operation @e[type=armor_stand,tag=IslandCenter] IDMath -= #SearchID ID

#Create the structure block 
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run setblock ~-20 ~40 ~-20 minecraft:structure_block[mode=load]{metadata:"protected",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,showair:0b,name:"pixelmon:shrines/ilex_shrine_a",id:"minecraft:structure_block",sizeX:13,sizeY:9,sizeZ:13,showboundingbox:0}
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run setblock ~-20 ~39 ~-20 redstone_block

title @p subtitle {"text":"A boulder has drifted near!"}
title @p title {"text":"What a strange aura it gives off..."}