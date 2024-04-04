#Process only ONE PLAYER at a time; otherwise, the same ID could get assigned to two people
execute as @a[tag=bInitializedIsland,limit=1] unless entity @s[x=-1,z=-1,y=60,dx=2,dz=2,dy=40] run tag @s add cInitializedIsland
tag @a[tag=cInitializedIsland] remove bInitializedIsland

tellraw @a[tag=cInitializedIsland] {"text":"Positioning Armor Stand"}

#Place the armor stand
execute as @p[tag=cInitializedIsland] run summon armor_stand ~ 65 ~ {NoGravity:1,NoBasePlate:1,Invulnerable:1,Invisible:1,Tags:["IslandCenter"]}

#Make sure all armor stands that are island centers have an ID. It will default to zero.
scoreboard players add @e[type=armor_stand,tag=IslandCenter] ID 0
execute at @a[tag=cInitializedIsland] run say [DEBUG] 1 Armor Stand Spawned

#Now assign a matching ID to the armor stand and to the player. 
scoreboard players operation @e[type=armor_stand,tag=IslandCenter,scores={ID=0}] ID = #NextID ID
scoreboard players operation @p[tag=cInitializedIsland] ID = #NextID ID
scoreboard players add #NextID ID 1

#Perform math
execute as @p run scoreboard players operation #SearchID ID = @s ID 
execute as @e[type=armor_stand,tag=IslandCenter] run scoreboard players operation @s IDMath = @s ID 
scoreboard players operation @e[type=armor_stand,tag=IslandCenter] IDMath -= #SearchID ID

#Spawn the Balloon Islands for Ambiance
#Create the structure block, full of data. Make sure it is loading such that it will destroy itself. 
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run setblock ~-10 ~-10 ~-61 minecraft:structure_block[mode=load]{metadata:"protected",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,showair:0b,name:"ghosts:balloons",id:"minecraft:structure_block",sizeX:25,sizeY:21,sizeZ:20,showboundingbox:0}
say Placed Ghostly Ambiance

#Create the redstone block that will activate the structure block
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run setblock ~-10 ~-10 ~-60 redstone_block

#Place a temporary block to stop spawns so player can't cheat and get a high level pokemon as their starter


#Remove the intermediary tag and add the final tag
tag @a[tag=cInitializedIsland] add InitializedIsland
tag @a[tag=cInitializedIsland] remove cInitializedIsland

#say is running
#predicate never worked right
#execute at @a as @e[type=minecraft:player,distance=..10,tag=bInitializedIsland] unless predicate ghosts:at_spawn run tag @s add cInitializedIsland
