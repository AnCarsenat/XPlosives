say xplosive loaded!

scoreboard objectives add xplosive.s.send trigger {"text":"Transmit Signal"}
scoreboard players set #value xplosive.s.send 1
scoreboard players set @a xplosive.s.send 0

scoreboard objectives add xplosives.s.chnl trigger {"text":"Channel"}
scoreboard players set @a xplosive.s.send 1
