tellraw @a [{"text":"XPlosives == Loaded ==","color":"gold"},{"text":"  version - a1.0 by ancar","color": "#f1fb81"}]

scoreboard objectives add xplosives.s.send trigger {"text":"Transmit Signal"}
scoreboard players set @a xplosives.s.send 0

scoreboard objectives add xplosives.s.chnl trigger {"text":"Channel"}
scoreboard players set @a xplosives.s.send 0
