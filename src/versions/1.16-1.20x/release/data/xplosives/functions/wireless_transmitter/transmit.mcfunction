# Transmission Function (xplosives:wireless_transmitter/transmit)
# This function will be triggered by the above command

# 1. tag player emitter
tag @s add emitter
tellraw @p ["",{"text":"entity : ","color":"gold"},{"selector":"@e[tag=emitter]"},{"text":" emitted on : ","color":"gold"},{"score":{"name":"a[tag=emitter]","objective":"xplosives.s.chnl"}}]

# 2. Match Receiver's Channel with Triggering Player's Channel
execute as @e[type=armor_stand,tag=wireless_transmitter,tag=receiver] if score @s xplosives.s.chnl = @a[tag=emitter,limit=1] xplosives.s.chnl run tag @s add received
execute as @e[type=armor_stand,tag=wireless_transmitter,tag=receiver,tag=received] at @s run setblock ~ ~ ~ redstone_block
execute as @e[type=armor_stand,tag=wireless_transmitter,tag=receiver,tag=received] run tellraw @p ["",{"text":"detonated : ","color":"gold"},{"selector":"@s","color":"dark_gray"},{"text":" at : ","color":"gold"},{"nbt":"Pos","entity":"@s","color":"dark_gray"},{"text":" on channel : ","color":"gold"},{"score":{"name":"@s","objective":"xplosives.s.chnl"},"color":"dark_gray"}]

# 3. Reset the Player's xplosive.s.send Score
scoreboard players reset @s xplosives.s.send
tag @s remove emitter

kill @e[type=armor_stand,tag=wireless_transmitter,tag=receiver,tag=received]