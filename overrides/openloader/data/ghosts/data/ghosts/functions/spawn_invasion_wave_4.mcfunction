execute as @p run scoreboard players operation #SearchID ID = @s ID 
execute as @e[type=armor_stand,tag=IslandCenter] run scoreboard players operation @s IDMath = @s ID 
scoreboard players operation @e[type=armor_stand,tag=IslandCenter] IDMath -= #SearchID ID

execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run summon cave_spider ~ ~1 ~ {Tags:["invade4"],PersistenceRequired:1b}
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run summon cave_spider ~ ~1 ~ {Tags:["invade4_start","invade4"],PersistenceRequired:1b}
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run summon cave_spider ~ ~1 ~ {Tags:["invade4_start","invade4"],PersistenceRequired:1b}
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run summon cave_spider ~ ~1 ~ {Tags:["invade4_start","invade4"],PersistenceRequired:1b}
execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run summon cave_spider ~ ~2 ~ {Passengers:[ {id:creeper,Tags:["invade4_start","invade4"],PersistenceRequired:1b,ActiveEffects:[{Id:10,Duration:99999,Amplifier:2,ShowParticles:0b},{Id:22,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:100f},{Name:"generic.armor",Base:100f}],Health:100}]}

execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run execute at @p run spreadplayers ~ ~ 1 20 false @e[tag=invade4_start]



execute at @e[type=armor_stand,tag=IslandCenter,scores={IDMath=0}] run tag @e[tag=invade4_start] remove invade4_start

title @p subtitle {"text":"Defend Yourself!"}
title @p title {"text":"You are under attack!"}
closeguiscreen