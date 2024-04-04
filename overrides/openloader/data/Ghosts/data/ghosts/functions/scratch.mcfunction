#execute as @a at @s unless predicate ghosts:at_spawn run say not at spawn
#execute as @a at @s if predicate ghosts:at_spawn run say at spawn

#execute at @a as @e[type=pixelmon:empty_pokeball,distance=0..300] at @s as @s[predicate=ghosts:ball_falling] run say Scratch
#execute at @a as @e[type=pixelmon:empty_pokeball,distance=0..300] at @s as @s run say exists

#execute at @a as @e[type=pixelmon:empty_pokeball,distance=0..300] at @s as @s[y=0,dy=5] run say Scratch2