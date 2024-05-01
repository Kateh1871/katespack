# creates cactus tier mob

# equipment replacing
execute as @e[scores={kp.equip=7}] run loot replace entity @s armor.feet loot kp:armor/cactus/boots
execute as @e[scores={kp.equip=7}] run loot replace entity @s armor.legs loot kp:armor/cactus/leggings
execute as @e[scores={kp.equip=7}] run loot replace entity @s armor.chest loot kp:armor/cactus/chestplate
execute as @e[scores={kp.equip=7}] run loot replace entity @s armor.head loot kp:armor/cactus/helmet

# changing equipment drop chances
execute as @e[scores={kp.equip=7}] run data merge entity @s {HandDropChances:[0.3f,0.10f]}
execute as @e[scores={kp.equip=7}] run data merge entity @s {ArmorDropChances:[0.05f,0.05f,0.05f,0.05f]}
execute as @e[scores={kp.equip=7}] run scoreboard players set @s kp.equip 1