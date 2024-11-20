# Transmission Function (xplosives:wireless_transmitter/transmit)
# This function will be triggered by the above command

# 1. tag player emitter
tag @s add emitter

# 2. Match Receiver's Channel with Triggering Player's Channel
execute as @e[type=armor_stand,tag=wireless_transmitter,tag=receiver] if score @s xplosives.s.chnl = @a[tag=emitter,limit=1] xplosives.s.chnl run tag @s add received
execute as @e[type=armor_stand,tag=wireless_transmitter,tag=receiver,tag=received] at @s run setblock ~ ~ ~ redstone_block
execute as @e[type=armor_stand,tag=wireless_transmitter,tag=receiver,tag=received] run say hi

# 3. Reset the Player's xplosive.s.send Score
scoreboard players reset @s xplosive.s.send
tag @s remove emitter

kill @e[type=armor_stand,tag=wireless_transmitter,tag=receiver,tag=received]