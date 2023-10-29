MODPATH="/data/adb/modules/samsungProps"
model=$(getprop ro.bootloader)

if echo "$model" | grep -q "A528B"; then
        mv "$MODPATH"/system_a52sxq.prop "$MODPATH"/system.prop
elif echo "$model" | grep -q "M526"; then
        mv "$MODPATH"/system_m52xq.prop "$MODPATH"/system.prop
elif echo "$model" | grep -q "A525"; then
        mv "$MODPATH"/system_a52q.prop "$MODPATH"/system.prop
elif echo "$model" | grep -q "A725"; then
        mv "$MODPATH"/system_a72q.prop "$MODPATH"/system.prop
elif echo "$model" | grep -q "A736"; then
        mv "$MODPATH"/system_a73xq.prop "$MODPATH"/system.prop
fi
