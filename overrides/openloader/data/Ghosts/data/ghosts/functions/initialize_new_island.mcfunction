#Process only ONE PLAYER at a time; otherwise, the same ID could get assigned to two people
tag @a[tag=!InitializedIsland,tag=!aInitializedIsland,tag=!bInitializedIsland,tag=!cInitializedIsland,tag=!dInitializedIsland,limit=1] add aInitializedIsland
tellraw @a[tag=aInitializedIsland] {"text":"Initializing Island Center"}

#First let's get them to an island
execute as @p[tag=aInitializedIsland] run skyblock manage teams createAndJoin
execute as @p[tag=aInitializedIsland] run skyblock home

#Next let's take away from recipes



#Remove one intermediary tag and add the next tag
tag @a[tag=aInitializedIsland,limit=1] add bInitializedIsland
tag @a[tag=aInitializedIsland,limit=1] remove aInitializedIsland

say Initialize_New_Island Ran