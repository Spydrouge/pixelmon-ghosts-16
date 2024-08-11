execute as @p run scoreboard players operation #SearchID ID = @s ID 
execute as @e[type=armor_stand,tag=IslandCenter] run scoreboard players operation @s IDMath = @s ID 
scoreboard players operation @e[type=armor_stand,tag=IslandCenter] IDMath -= #SearchID ID

execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run summon skeleton ~ ~1 ~ {Tags:["invade3"],PersistenceRequired:1b,HandItems:[]}
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run summon skeleton ~ ~1 ~ {Tags:["invade3_start","invade3"],PersistenceRequired:1b}
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run summon skeleton ~ ~1 ~ {Tags:["invade3_start","invade3"],PersistenceRequired:1b}
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run summon skeleton ~ ~1 ~ {Tags:["invade3_start","invade3"],PersistenceRequired:1b}
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run summon skeleton_horse ~ ~1 ~ {Tame:1,Passengers:[{id:skeleton,HandItems:[{id:bow,tag:{Enchantments:[{lvl:2,id:punch}]},Count:1}],HandDropChances:[0.1f]}],Tags:["invade3_start","invade3"],PersistenceRequired:1b}

execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run execute at @p run spreadplayers ~ ~ 1 10 false @e[tag=invade3_start]



execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run tag @e[tag=invade3_start] remove invade3_start

title @p subtitle {"text":"Defend Yourself!"}
title @p title {"text":"You are under attack!"}
closeguiscreen