# Dacă timer-ul random_mob_timer este mai mare de 200 (10 secunde), începe spawn-ul și countdown-ul
execute as @a[scores={random_mob_timer=400..}] run function rms:spawn_random_mob

# Adaugă 1 la random_mob_timer (pentru a începe un nou ciclu de countdown)
scoreboard players add @a random_mob_timer 1

# Resetăm random_mob_timer la 0 după ce ajunge la 201
execute as @a[scores={random_mob_timer=401..}] run scoreboard players set @a random_mob_timer 0







# Pornim countdown-ul doar dacă random_mob_timer = 0 (adică la începutul unui nou ciclu de spawn)
execute as @a[scores={random_mob_timer=0}] run scoreboard players set @s countdown 21


# Crește tick_timer la fiecare tick
scoreboard players add @a tick_timer 1

# Dacă tick_timer ajunge la 20 (adică o secundă), scade 1 din countdown și resetează tick_timer la 0
execute as @a[scores={tick_timer=20}] run scoreboard players remove @s countdown 1
execute as @a[scores={tick_timer=20}] run scoreboard players set @s tick_timer 0

# Dacă countdown este mai mare decât 0, afișează-l pe ecran
execute as @a[scores={countdown=20,show_countdown=1}] run title @s actionbar {"text":"","color":"dark_green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=19,show_countdown=1}] run title @s actionbar {"text":"","color":"dark_green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=18,show_countdown=1}] run title @s actionbar {"text":"","color":"dark_green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=17,show_countdown=1}] run title @s actionbar {"text":"","color":"dark_green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=16,show_countdown=1}] run title @s actionbar {"text":"","color":"dark_green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=15,show_countdown=1}] run title @s actionbar {"text":"","color":"dark_green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=14,show_countdown=1}] run title @s actionbar {"text":"","color":"dark_green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=13,show_countdown=1}] run title @s actionbar {"text":"","color":"dark_green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=12,show_countdown=1}] run title @s actionbar {"text":"","color":"dark_green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=11,show_countdown=1}] run title @s actionbar {"text":"","color":"dark_green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=10,show_countdown=1}] run title @s actionbar {"text":"","color":"dark_green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=9,show_countdown=1}] run title @s actionbar {"text":"","color":"green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=8,show_countdown=1}] run title @s actionbar {"text":"","color":"green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=7,show_countdown=1}] run title @s actionbar {"text":"","color":"green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=6,show_countdown=1}] run title @s actionbar {"text":"","color":"green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=5,show_countdown=1}] run title @s actionbar {"text":"","color":"green","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=4,show_countdown=1}] run title @s actionbar {"text":"","color":"yellow","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=3,show_countdown=1}] run title @s actionbar {"text":"","color":"gold","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=2,show_countdown=1}] run title @s actionbar {"text":"","color":"red","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
execute as @a[scores={countdown=1,show_countdown=1}] run title @s actionbar {"text":"","color":"dark_red","extra":[{"score":{"name":"@s","objective":"countdown"}}]}
