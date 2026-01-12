#If NextID's ID is zero
scoreboard objectives add ID dummy
execute unless score NextID ID matches 1.. run function ghosts:initialize_variables

#Initializers are run in reverse to give each of them their own tick

#this one mysteriously started running incorrectly, and so was moved to a quest book command
execute as @a[tag=dInitializedIsland, limit=1] at @s unless entity @s[x=-5,z=-5,y=60,dx=10,dz=10,dy=40] run function ghosts:spawn_balloons

execute as @a[tag=bInitializedIsland, limit=1] at @s unless entity @s[x=-5,z=-5,y=60,dx=10,dz=10,dy=40] run function ghosts:initialize_armor_stand

execute as @a[tag=!InitializedIsland,tag=!aInitializedIsland,tag=!bInitializedIsland,tag=!cInitializedIsland,tag=!dInitializedIsland,limit=1] run function ghosts:initialize_new_island

