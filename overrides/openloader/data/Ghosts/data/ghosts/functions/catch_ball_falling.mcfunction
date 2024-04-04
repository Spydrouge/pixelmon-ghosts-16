#WORKS TODAY
execute at @a as @e[type=pixelmon:empty_pokeball,distance=0..300] at @s as @s[y=0,dy=5] run say Ghosts Rescued Falling Ball
execute at @a as @e[type=pixelmon:empty_pokeball,distance=0..300] at @s as @s[y=0,dy=5] run tp @p

#WORKED UNTIL TODAY

#execute at @a at @e[type=pixelmon:empty_pokeball,distance=..300] if predicate ghosts:ball_falling run say Ghosts Rescued Falling Ball
#execute at @a as @e[type=pixelmon:empty_pokeball,distance=..300] if predicate ghosts:ball_falling run tp @p


#PROBLEMS
#execute as @e at @s if predicate ghosts:ball_falling run say Ghosts Rescued Falling Ball
#execute as @e at @s if predicate ghosts:ball_falling run tp @p

#execute as @e[predicate=ghosts:ball_falling] run say Ghosts Rescued Falling Ball
#execute as @e[predicate=ghosts:ball_falling] run tp @p

#This will actually break the game XD No idea why, is it checking things in unloaded chunks??
#execute as @e[type=pixelmon:empty_pokeball,x=-1000000,dx=2000000,z=-1000000,dz=2000000,y=0,dy=40] run say Ghosts Rescued Falling Ball
#execute as @e[type=pixelmon:empty_pokeball,x=-1000000,dx=2000000,z=-1000000,dz=2000000,y=0,dy=40] run tp @p

#This of course runs only around spawn.
#execute as @e[type=pixelmon:empty_pokeball,x=-20,dx=40,z=-20,dz=40,y=0,dy=40] run say Ghosts Rescued Falling Ball
#execute as @e[type=pixelmon:empty_pokeball,x=-20,dx=40,z=-20,dz=40,y=0,dy=40] run tp @p

#Trying to figure out at_spawn
#execute positioned 0 0 0 run execute as @a[predicate=ghosts:at_spawn] run say found you
#execute positioned 0 0 0 run execute as @a[predicate=!ghosts:at_spawn] run say still running


#NOT ATTEMPTED YET
#execute at @e as @s if predicate ghosts:ball_falling run say Ghosts Rescued Falling Ball
#execute at @e as @s if predicate ghosts:ball_falling run tp @p

#execute run say hi
#say is running