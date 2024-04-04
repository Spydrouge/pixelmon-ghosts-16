#First, run standard code for fidning the armor stand
execute as @p run scoreboard players operation #SearchID ID = @s ID 
execute as @e[type=armor_stand,tag=IslandCenter] run scoreboard players operation @s IDMath = @s ID 
scoreboard players operation @e[type=armor_stand,tag=IslandCenter] IDMath -= #SearchID ID

#Spawn the masterball chest
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run setblock ~ ~2 ~7 pixelmon:master_chest{chestOneTime:1b,Owner:[I;0,0,0,0],customDrop:1b,ForgeData:{},specialEvent:0b,visibility:0s,dropOneTime:1b,timeEnabled:0b,grotto:0b,id:"pixelmon:poke_chest",customDrops:[{id:"pixelmon:poke_ball",Count:1b,tag:{PokeBallID:"master_ball"}}]}

#Spawn Drifloon
#execute @p[r=1,score_shinyloonfail_min=0,score_shinyloonfail=0]
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] positioned ~1.5 ~0.5 ~8 run pokespawn drifloon lvl:2 ability:FlareBoost nature:Lonely growth:7 shiny

#Close screen and prompt turn around
closeguiscreen
title @p subtitle {"text":"Act quickly but carefully."}
title @p title {"text":"Look behind you, child..."}
tellraw @p {"text":"A ball that falls into the void may be lost forever!","color":"red"}