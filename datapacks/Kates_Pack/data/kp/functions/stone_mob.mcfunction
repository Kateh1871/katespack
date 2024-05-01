# creates stone tier mob

# equipment replacing
execute as @e[scores={kp.equip=2}] run loot replace entity @s armor.feet loot kp:armor/stone/boots
execute as @e[scores={kp.equip=2}] run loot replace entity @s armor.legs loot kp:armor/stone/leggings
execute as @e[scores={kp.equip=2}] run loot replace entity @s armor.chest loot kp:armor/stone/chestplate
execute as @e[scores={kp.equip=2}] run loot replace entity @s armor.head loot kp:armor/stone/helmet

# changing equipment drop chances
execute as @e[scores={kp.equip=2}] run data merge entity @s {HandDropChances:[0.4f,0.10f]}
execute as @e[scores={kp.equip=2}] run data merge entity @s {ArmorDropChances:[0.25f,0.25f,0.25f,0.25f]}
execute as @e[scores={kp.equip=2}] run scoreboard players set @s kp.equip 1