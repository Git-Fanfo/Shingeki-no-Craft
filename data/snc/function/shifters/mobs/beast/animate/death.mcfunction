# Check in case something breaks
## function snc:shifters/mobs/beast/action/grab/disable
kill @e[tag=aj.beast.locator.consume,sort=nearest,limit=1]
function animated_java:beast/animations/pause_all
function animated_java:beast/animations/death/play