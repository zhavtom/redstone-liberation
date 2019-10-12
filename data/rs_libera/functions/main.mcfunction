#Resister Items
function rs_libera:items/redstone_pickaxe
function rs_libera:items/crystal_redstone_pickaxe

#Resister Blocks
function rs_libera:blocks/redstone_furnace

#Resister Scores
scoreboard players set @a[scores={rs_libera_10=..9}] rs_libera_10 10
scoreboard players set @a[scores={rs_libera_10=11..}] rs_libera_10 10
scoreboard players set @a[scores={rs_libera_7=..6}] rs_libera_7 7
scoreboard players set @a[scores={rs_libera_7=8..}] rs_libera_7 7
scoreboard players set @a[scores={rs_libera_0=..-1}] rs_libera_0 0
scoreboard players set @a[scores={rs_libera_0=1..}] rs_libera_0 0
scoreboard players set @a[scores={rs_libera_32767=32767}] rs_libera_32767 32767

#Sneak Detect
scoreboard players remove @a[scores={rs_libera_snk=1..}] rs_libera_snk 1