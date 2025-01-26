# Activează spawn-ul (setăm spawn_active la 1)
scoreboard players set @a spawn_active 1

# Resetează scorurile doar pentru jucătorii care au un scor diferit de 0
scoreboard players reset @a[scores={random_mob_timer=1..}] random_mob_timer
scoreboard players reset @a[scores={random_mob_choice=1..}] random_mob_choice
scoreboard players reset @a[scores={countdown=1..}] countdown
scoreboard players reset @a[scores={tick_timer=1..}] tick_timer

scoreboard players set @a show_countdown 1

scoreboard players set @a countdown 11

# Mesaj
tellraw @a ["",{"text":"RANDOM MOB SPAWNER","color":"gold"},{"text":" - "},{"text":"ACTIVAT","color":"green"}]
