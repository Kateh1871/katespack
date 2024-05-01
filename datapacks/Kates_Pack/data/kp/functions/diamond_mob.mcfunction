# creates diamond tier mob

# equipment replacing
execute as @e[scores={kp.equip=4}] run loot replace entity @s armor.feet loot kp:armor/diamond/boots
execute as @e[scores={kp.equip=4}] run loot replace entity @s armor.legs loot kp:armor/diamond/leggings
execute as @e[scores={kp.equip=4}] run loot replace entity @s armor.chest loot kp:armor/diamond/chestplate
execute as @e[scores={kp.equip=4}] run loot replace entity @s armor.head loot kp:armor/diamond/helmet

execute as @e[scores={kp.equip=4}] run data merge entity @s {DeathLootTable:"kp:armor/diamond/loot"}

# changing equipment drop chances
execute as @e[scores={kp.equip=4}] run data merge entity @s {HandDropChances:[0.05f,0.05f]}
execute as @e[scores={kp.equip=4}] run data merge entity @s {ArmorDropChances:[0.02f,0.02f,0.02f,0.02f]}
execute as @e[scores={kp.equip=4}] run scoreboard players set @s kp.equip 1