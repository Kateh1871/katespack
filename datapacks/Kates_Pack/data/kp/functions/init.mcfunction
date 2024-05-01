
# general init
gamerule commandBlockOutput false
gamerule logAdminCommands false


# mob equipment init
scoreboard objectives add kp.equip trigger


# random number generator init
scoreboard objectives add RNG_Constant dummy
scoreboard objectives add RNG_Variable dummy 

# generation constants, should be large odd (probably prime too) numbers
scoreboard players set C_1000 RNG_Constant 1000
scoreboard players set C_314159 RNG_Constant 314159
scoreboard players set C_2718281 RNG_Constant 2718281 

# rng seed
scoreboard players set RNGseed RNG_Variable 0 


# advancement tracking init
# combat advancement tracking
scoreboard objectives add kp.totalKill totalKillCount
scoreboard objectives add kp.zombieKill minecraft.killed:minecraft.zombie
scoreboard objectives add kp.skeletonKill minecraft.killed:minecraft.skeleton
scoreboard objectives add kp.creeperKill minecraft.killed:minecraft.creeper

# farming advancement tracking
scoreboard objectives add kp.wheatPlanted minecraft.used:minecraft.wheat_seeds
scoreboard objectives add kp.carrotPlanted minecraft.used:minecraft.carrot
scoreboard objectives add kp.potatoPlanted minecraft.used:minecraft.potato
scoreboard objectives add kp.beetPlanted minecraft.used:minecraft.beetroot_seeds

# nether advancement tracking
scoreboard objectives add kp.piglinKill minecraft.killed:minecraft.piglin_brute



