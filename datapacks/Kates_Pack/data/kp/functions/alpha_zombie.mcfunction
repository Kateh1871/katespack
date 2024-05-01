
# add all attributes for boss
# has armor and toughness of netherite
# has slowness, fire resistance, and strength
# has a very high change to summon zombies for help

data merge entity @e[scores={kp.equip=5},limit=1] {CustomNameVisible:1b,DeathLootTable:"kp:entities/alpha_zombie/loot",Health:30f,CustomName:'{"text":"Alpha Zombie","color":"dark_red","bold":true,"underlined":true}',active_effects:[{id:"minecraft:slowness",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:strength",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:1b,duration:-1,show_particles:0b}],Attributes:[{Name:generic.knockback_resistance,Base:0.4},{Name:generic.armor,Base:20},{Name:generic.armor_toughness,Base:12},{Name:zombie.spawn_reinforcements,Base:1f}]}


# gives it either a high level stone axe or sword

execute as @e[scores={kp.equip=5}] run loot replace entity @s weapon.mainhand loot kp:entities/alpha_zombie/weapon
execute as @e[scores={kp.equip=2}] run data merge entity @s {HandDropChances:[0.1f,0.1f]}


# sets equipment type marker to equipped

execute as @e[scores={kp.equip=5}] run scoreboard players set @s kp.equip 1

