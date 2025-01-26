# Dezactivează spawn-ul (setăm spawn_active la 0)
scoreboard players set @a spawn_active 0

# Mesaj
tellraw @a ["",{"text":"RANDOM MOB SPAWNER","color":"gold"},{"text":" - "},{"text":"DEZACTIVAT","color":"red"}]