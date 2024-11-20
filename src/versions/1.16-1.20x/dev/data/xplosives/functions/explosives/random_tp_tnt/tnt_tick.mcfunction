execute as @e[type=bat,tag=custom_tnt,tag=random_tp_tnt] if entity @s at @s align xz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:0b,Invulnerable:1b,NoGravity:1b,Tags:["custom_tnt","random_tp_tnt"]}
execute as @e[type=bat,tag=custom_tnt,tag=random_tp_tnt] if entity @s at @s align xz run setblock ~ ~ ~ tnt
kill @e[type=bat,tag=custom_tnt,tag=random_tp_tnt]

execute at @e[type=armor_stand,tag=custom_tnt,tag=random_tp_tnt] if entity @e[type=tnt,distance=..0.45] as @e[type=tnt,distance=..1] run function xplosives:explosives/random_tp_tnt/explosion

execute as @e[type=armor_stand,tag=custom_tnt,tag=random_tp_tnt] at @s unless block ~ ~ ~ tnt run kill @s