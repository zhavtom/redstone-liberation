#Resister Items
function rs_libera:items/redstone_pickaxe
function rs_libera:items/crystal_redstone_pickaxe

#Resister Blocks
function rs_libera:blocks/redstone_furnace

#Resister Scores
scoreboard players set @a[scores={rs_libera_one=..0}] rs_libera_one 1
scoreboard players set @a[scores={rs_libera_one=2..}] rs_libera_one 1

#Sneak Detect
scoreboard players remove @a[scores={rs_libera_snk=1..}] rs_libera_snk 1