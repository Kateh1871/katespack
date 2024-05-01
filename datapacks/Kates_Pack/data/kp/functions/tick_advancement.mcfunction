# repeats every tick


# combat advancements

execute as @e[scores={kp.totalKill=1..}] run advancement grant @s only kp:combat/root

execute as @e[scores={kp.totalKill=100..}] run advancement grant @s only kp:combat/kill100
execute as @e[scores={kp.totalKill=1000..}] run advancement grant @s only kp:combat/kill1000

execute as @e[scores={kp.zombieKill=100..}] run advancement grant @s only kp:combat/zombie100
execute as @e[scores={kp.skeletonKill=100..}] run advancement grant @s only kp:combat/skeleton100
execute as @e[scores={kp.creeperKill=100..}] run advancement grant @s only kp:combat/creeper100
execute as @e[scores={kp.creeperKill=101..}] run advancement grant @s only kp:combat/creeper101


# farming advancements

execute as @e[scores={kp.wheatPlanted=80..}] run advancement grant @s only kp:farming/wheat24
execute as @e[scores={kp.wheatPlanted=1000..}] run advancement grant @s only kp:farming/wheat1000


# misc planting

execute as @e[scores={kp.carrotPlanted=80..}] run advancement grant @s only kp:farming/carrot24
execute as @e[scores={kp.potatoPlanted=80..}] run advancement grant @s only kp:farming/potato24
execute as @e[scores={kp.beetPlanted=80..}] run advancement grant @s only kp:farming/beet24


# nether advancements

execute as @e[scores={kp.piglinKill=10..}] run advancement grant @s only kp:nether/piglin10



# unique equipment effects

execute as @e[nbt={Inventory:[{Slot:103b,tag:{display:{Name:'"Oppenheimer\'s Hat"'}}}]}] run effect give @s minecraft:resistance 5 0 true