
# add all attributes for boss

data merge entity @e[scores={kp.equip=9},limit=1] {CustomNameVisible:1b,CustomName:'{"text":"Swiftness Skeleton","color":"#6285B3","bold":true,"italic":true}'}


# increase chance to drop equipment

execute as @e[scores={kp.equip=9}] run data merge entity @s {HandDropChances:[0.1f,0.1f]}
execute as @e[scores={kp.equip=9}] run data merge entity @s {ArmorDropChances:[0.05f,0.05f,0.05f,0.05f]}


# equip with swiftness armor

execute as @e[scores={kp.equip=9}] run loot replace entity @s armor.feet loot kp:entities/swiftness/boots
execute as @e[scores={kp.equip=9}] run loot replace entity @s armor.legs loot kp:entities/swiftness/leggings
execute as @e[scores={kp.equip=9}] run loot replace entity @s armor.chest loot kp:entities/swiftness/chestplate
execute as @e[scores={kp.equip=9}] run loot replace entity @s armor.head loot kp:entities/swiftness/helmet

# sets equipment type marker to equipped

execute as @e[scores={kp.equip=9}] run scoreboard players set @s kp.equip 1

