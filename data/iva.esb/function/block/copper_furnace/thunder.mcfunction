data modify block ~ ~ ~ lit_time_remaining set value 23
execute if block ~ ~ ~ furnace[facing=north] run setblock ~ ~ ~ furnace[lit=true,facing=north]
execute if block ~ ~ ~ furnace[facing=south] run setblock ~ ~ ~ furnace[lit=true,facing=south]
execute if block ~ ~ ~ furnace[facing=west] run setblock ~ ~ ~ furnace[lit=true,facing=west]
execute if block ~ ~ ~ furnace[facing=east] run setblock ~ ~ ~ furnace[lit=true,facing=east]