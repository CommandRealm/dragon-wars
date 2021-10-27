# called when a player is hit by an explosive arrow.


# removing advancement
advancement revoke @s only game:hit_by_explosive_arrow


# Explosion
summon creeper ~ ~1 ~ {Invulnerable:1b,Fuse:0s,ExplosionRadius:2,CustomName:'[{"text":"Explosive","color":"red","bold":true,"italic":false},{"text":" Bow","color":"gray"}]'}