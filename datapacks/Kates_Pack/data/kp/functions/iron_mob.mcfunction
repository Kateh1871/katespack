# creates iron tier mob

# equipment replacing
execute as @e[scores={kp.equip=3}] run loot replace entity @s armor.feet loot kp:armor/iron/boots
execute as @e[scores={kp.equip=3}] run loot replace entity @s armor.legs loot kp:armor/iron/leggings
execute as @e[scores={kp.equip=3}] run loot replace entity @s armor.chest loot kp:armor/iron/chestplate
execute as @e[scores={kp.equip=3}] run loot replace entity @s armor.head loot kp:armor/iron/helmet

execute as @e[scores={kp.equip=3}] run data merge entity @s {DeathLootTable:"kp:chests/iron/loot"}

# changing equipment drop chances
execute as @e[scores={kp.equip=3}] run data merge entity @s {HandDropChances:[0.2f,0.1f]}
execute as @e[scores={kp.equip=3}] run data merge entity @s {ArmorDropChances:[0.1f,0.1f,0.1f,0.1f]}
execute as @e[scores={kp.equip=3}] run scoreboard players set @s kp.equip 1