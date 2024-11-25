#Process only ONE PLAYER at a time; otherwise, the same ID could get assigned to two people
execute as @a[tag=bInitializedIsland,limit=1] unless entity @s[x=-1,z=-1,y=60,dx=2,dz=2,dy=40] run tag @s add cInitializedIsland
tag @a[tag=cInitializedIsland] remove bInitializedIsland

tellraw @a[tag=cInitializedIsland] {"text":"Positioning Armor Stand"}

#Place the armor stand
execute as @p[tag=cInitializedIsland] run summon armor_stand ~ 65 ~ {NoGravity:1,NoBasePlate:1,Invulnerable:1,Invisible:1,Tags:["IslandCenter"]}

#Make sure all armor stands that are island centers have an ID. It will default to zero.
scoreboard players add @e[type=armor_stand,tag=IslandCenter] ID 0
execute at @e[tag=IslandCenter] run say [DEBUG] 1 Armor Stand Spawned

#Now assign a matching ID to the armor stand and to the player. 
scoreboard players operation @e[type=armor_stand,tag=IslandCenter,scores={ID=0}] ID = #NextID ID
scoreboard players operation @p[tag=cInitializedIsland] ID = #NextID ID
scoreboard players add #NextID ID 1


#Remove the intermediary tag and add the final tag
tag @a[tag=cInitializedIsland] add dInitializedIsland
tag @a[tag=cInitializedIsland] remove cInitializedIsland

#say is running
#predicate never worked right
#execute at @a as @e[type=minecraft:player,distance=..10,tag=bInitializedIsland] unless predicate ghosts:at_spawn run tag @s add cInitializedIsland
