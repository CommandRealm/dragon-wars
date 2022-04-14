# called when someone steps on the pad.

tag @s add elytra_course_pad

#teleport
tp @s @s


clear @s

# getting elytra
function lobby:get_elytra


item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:63,display:{Name:'[{"text":""}]',color:8931749},AttributeModifiers:[{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:1.0}]}