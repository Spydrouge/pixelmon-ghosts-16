#Perform math
execute as @p run scoreboard players operation #SearchID ID = @s ID 
execute as @e[type=armor_stand,tag=IslandCenter] run scoreboard players operation @s IDMath = @s ID 
scoreboard players operation @e[type=armor_stand,tag=IslandCenter] IDMath -= #SearchID ID

#Spawn the Balloon Islands for Ambiance
#Create the structure block, full of data. Make sure it is loading such that it will destroy itself. 
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run setblock ~-10 ~-10 ~-61 minecraft:structure_block[mode=load]{metadata:"protected",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,showair:0b,name:"ghosts:balloons",id:"minecraft:structure_block",sizeX:25,sizeY:21,sizeZ:20,showboundingbox:0}
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] if block ~-10 ~-10 ~-61 structure_block run say Armor Stand Found, Placed Ghostly Ambiance

#Remove the intermediary tag and add the final tag
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] if block ~-10 ~-10 ~-61 structure_block run tag @a[tag=dInitializedIsland] add InitializedIsland
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] if block ~-10 ~-10 ~-61 structure_block run tag @a[tag=dInitializedIsland] remove dInitializedIsland


#Create the redstone block that will activate the structure block
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] if block ~-10 ~-10 ~-61 structure_block run setblock ~-10 ~-9 ~-61 redstone_block




