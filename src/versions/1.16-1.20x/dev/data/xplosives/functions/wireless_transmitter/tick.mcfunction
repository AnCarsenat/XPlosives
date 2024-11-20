# Summon Armor Stand and Tag as New Receiver
execute as @e[type=bat,tag=wireless_transmitter,tag=receiver] if entity @s at @s align xz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:0b,Invulnerable:1b,NoGravity:1b,Tags:["wireless_transmitter","receiver","new_receiver"]}

# Set Block at Receiver Location
execute as @e[type=bat,tag=wireless_transmitter,tag=receiver] if entity @s at @s align xz run setblock ~ ~ ~ dark_prismarine_slab

# Assign Channel to New Receivers and Remove 'new_receiver' Tag
execute as @e[type=armor_stand,tag=wireless_transmitter,tag=receiver,tag=new_receiver] at @s run scoreboard players operation @s xplosives.s.chnl = @p[distance=..5,sort=nearest] xplosives.s.chnl
execute as @e[type=armor_stand,tag=wireless_transmitter,tag=receiver,tag=new_receiver] run tag @s remove new_receiver

# Clean Up Bat Entity
kill @e[type=bat,tag=wireless_transmitter,tag=receiver]

# Enable Scores and Trigger Transmission
execute as @a run scoreboard players enable @s xplosive.s.send
execute as @a run scoreboard players enable @s xplosives.s.chnl 

execute as @a if score @s xplosive.s.send >= #value xplosive.s.send run function xplosives:wireless_transmitter/transmit
