kill @e[type=minecraft:skeleton_horse,limit=1,distance=..5]
clear @p ceramics:clay_bucket{fluid:"contenttweaker:protein"} 1
give @p ceramics:clay_bucket
summon minecraft:horse
summon minecraft:lightning_bolt
execute at @p run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace contenttweaker:protein