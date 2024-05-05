tag @s remove snc.projectile
# snowball < item_display
execute on vehicle run kill @s
# item_display > item_display
execute on passengers run kill @s[type=item_display]
kill