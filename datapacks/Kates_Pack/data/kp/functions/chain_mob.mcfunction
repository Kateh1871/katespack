# creates chain tier mob

# equipment replacing
execute as @e[scores={kp.equip=6}] run loot replace entity @s armor.feet loot kp:armor/chain/boots
execute as @e[scores={kp.equip=6}] run loot replace entity @s armor.legs loot kp:armor/chain/leggings
execute as @e[scores={kp.equip=6}] run loot replace entity @s armor.chest loot kp:armor/chain/chestplate
execute as @e[scores={kp.equip=6}] run loot replace entity @s armor.head loot kp:armor/chain/helmet

# changing equipment drop chances
execute as @e[scores={kp.equip=6}] run data merge entity @s {HandDropChances:[0.3f,0.10f]}
execute as @e[scores={kp.equip=6}] run data merge entity @s {ArmorDropChances:[0.15f,0.15f,0.15f,0.15f]}
execute as @e[scores={kp.equip=6}] run scoreboard players set @s kp.equip 1