function snc:shifters/mobs/beast/action/grab/disable
kill @e[tag=aj.beast.locator.right_hand,sort=nearest,limit=1]
function animated_java:beast/animations/pause_all
function animated_java:beast/animations/death/play