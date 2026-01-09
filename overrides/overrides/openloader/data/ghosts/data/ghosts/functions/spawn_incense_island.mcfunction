execute as @p run scoreboard players operation #SearchID ID = @s ID 
execute as @e[type=armor_stand,tag=IslandCenter] run scoreboard players operation @s IDMath = @s ID 
scoreboard players operation @e[type=armor_stand,tag=IslandCenter] IDMath -= #SearchID ID

#Next, Create the structure block, full of data. Make sure it is loading such that it will destroy itself. 
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run setblock ~4 ~4 ~5 minecraft:structure_block[mode=load]{metadata:"protected",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,showair:0b,name:"ghosts:parkour_infuser",id:"minecraft:structure_block",sizeX:7,sizeY:3,sizeZ:6,showboundingbox:0}

#Create the redstone block that will activate the structure block
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run setblock ~4 ~5 ~5 redstone_block