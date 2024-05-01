

function kp:random
# RNG RNG_Variable is random number, only one is generated per tick ranging from [0, 999]
# -----------------------

# kp.equip scores:
#  0 - no equipment
#  1 - already equipped
#  2 - stone
#  3 - iron
#  4 - diamond
#  5 - alpha zombie
#  6 - chain
#  7 - cactus
#  8 - unused
#  9 - swiftness skeleton
# 10 - unused

# -----------------------


# select random mobs to equip this tick

execute as @e[type=minecraft:zombie] unless score @s kp.equip matches 1 run scoreboard players enable @s kp.equip
execute as @e[type=minecraft:skeleton] unless score @s kp.equip matches 1 run scoreboard players enable @s kp.equip

# 0.2 chance of no equipment
execute as @e[scores={kp.equip=0}] if score RNG RNG_Variable matches 0..199 run scoreboard players set @s kp.equip 1


# 0.3 chance of stone tier

execute as @e[scores={kp.equip=0}] if score RNG RNG_Variable matches 200..499 run scoreboard players set @s kp.equip 2

# give zombies the weapon

execute as @e[type=minecraft:zombie, scores={kp.equip=2}] run loot replace entity @s weapon.mainhand loot kp:entities/stone/weapon
function kp:stone_mob


# reload the random number generator
# all mobs after this point make up 0.5 of all mobs so adjust chance accordingly
function kp:random


# ------------------------

# iron tier zombie creator

# 0.25 chance of setting equip score to 3 for iron tier
execute as @e[type=minecraft:zombie, scores={kp.equip=0}] if score RNG RNG_Variable matches 350..599 run scoreboard players set @s kp.equip 3

execute as @e[scores={kp.equip=3}] run loot replace entity @s weapon.mainhand loot kp:entities/iron/weapon
function kp:iron_mob


# diamond tier zombie creator
# 0.05 chance of getting diamond tier zombie

execute as @e[type=minecraft:zombie, scores={kp.equip=0}, sort=random, limit=2] if score RNG RNG_Variable matches 600..649 run scoreboard players set @s kp.equip 4
execute as @e[scores={kp.equip=4}] run loot replace entity @s weapon.mainhand loot kp:entities/diamond/weapons
function kp:diamond_mob


# alpha zombie, has netherite equivalent armor without wearing anything
# holds high level enchanted stone axe/sword
# could make slightly bigger in new update
# 0.01 chance of creating
execute as @e[type=minecraft:zombie, scores={kp.equip=0}, sort=random, limit=1] if score RNG RNG_Variable matches 700..709 run scoreboard players set @s kp.equip 5
function kp:alpha_zombie


# chain zombie 0.14 chance

execute as @e[type=minecraft:zombie, scores={kp.equip=0}] if score RNG RNG_Variable matches 710..849 run scoreboard players set @s kp.equip 6
execute as @e[scores={kp.equip=6}] run loot replace entity @s weapon.mainhand loot kp:entities/iron/weapon
function kp:chain_mob


# cactus zombie 0.15 chance

execute as @e[type=minecraft:zombie, scores={kp.equip=0}] if score RNG RNG_Variable matches 850..999 run scoreboard players set @s kp.equip 7
execute as @e[scores={kp.equip=7}] run loot replace entity @s weapon.mainhand loot kp:entities/stone/weapon
function kp:cactus_mob




# stone skeleton 0.35 chance




#iron skeleton 0.2 chance

execute as @e[type=minecraft:skeleton, scores={kp.equip=0}] if score RNG RNG_Variable matches 400..599 run scoreboard players set @s kp.equip 3
function kp:iron_mob


# diamond skeleton 0.1 chance

execute as @e[type=minecraft:skeleton, scores={kp.equip=0}, sort=random, limit=2] if score RNG RNG_Variable matches 600..699 run scoreboard players set @s kp.equip 4
function kp:diamond_mob


# swiftness skeleton 0.05 chance

execute as @e[type=minecraft:skeleton, scores={kp.equip=0}, sort=random, limit=1] if score RNG RNG_Variable matches 700..749 run scoreboard players set @s kp.equip 9
function kp:swiftness_skeleton






