$execute \
    if score minutes $(shifter)_vars matches 0 \
    if score seconds $(shifter)_vars matches 0.. run \
        function snc:shifters/human/timer/above_zero {"shifter":$(shifter),"time":$(time)}

$execute if score minutes $(shifter)_vars matches ..-1 run function snc:shifters/human/timer/below_zero {"shifter":$(shifter)}

$execute if score seconds $(shifter)_vars matches ..-1 run function snc:shifters/human/timer/below_zero {"shifter":$(shifter)}