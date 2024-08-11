execute as @p run scoreboard players operation #SearchID ID = @s ID 
execute as @e[type=armor_stand,tag=IslandCenter] run scoreboard players operation @s IDMath = @s ID 
scoreboard players operation @e[type=armor_stand,tag=IslandCenter] IDMath -= #SearchID ID

execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run summon husk ~ ~1 ~ {Tags:["invade2"],PersistenceRequired:1b}
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run summon husk ~ ~1 ~ {Tags:["invade2_start","invade2"],PersistenceRequired:1b}
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run summon husk ~ ~1 ~ {Tags:["invade2_start","invade2"],PersistenceRequired:1b}
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run summon husk ~ ~1 ~ {Tags:["invade2_start","invade2"],PersistenceRequired:1b}
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run summon husk ~ ~1 ~ {Tags:["invade2_start","invade2"],PersistenceRequired:1b}

execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run execute at @p run spreadplayers ~ ~ 1 10 false @e[tag=invade2_start]



execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run tag @e[tag=invade2_start] remove invade2_start

title @p subtitle {"text":"Defend Yourself!"}
title @p title {"text":"You are under attack!"}
closeguiscreen