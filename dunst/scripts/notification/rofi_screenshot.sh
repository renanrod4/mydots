#!/bin/sh

# Frenzy's totally not stolen from somebody else rofi Screenshot taker



rofi_command="rofi"

# Options
shot_now="󰄀"
select_shot="󰆐"
shot_2="󰎩"
shot_5="󰎰"
shot_10="󰽾"

# Variable passed to rofi
options="$shot_now\n$select_shot\n$shot_2\n$shot_5\n$shot_10"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $shot_now)
        scrot 'snap_%y_%m_%d_%H_%M.png' -q 100 -e 'mv $f ~/Documents/Snapshots/ ; notify-send Screenshot -i ~/Documents/Snapshots/$f -u normal "Snapshot Taken"'
        dunstify 
        ;;
    $select_shot)
		bash -c '~/.local/bin/scripts/select-shot.sh'
		;;
	$shot_2)
		notify-send Screenshot -u low -t 1500 'Screenshot will be taken in 2 sec' &&
		scrot 'snap_%y_%m_%d_%H_%M.png' -cd 2 -q 100 -e 'mv $f ~/Documents/Snapshots/ ; notify-send Screenshot -i ~/Documents/Snapshots/$f -u normal "Snapshot Taken"'
		;;
	$shot_5)
		notify-send Screenshot -u normal -t 4000 'Screenshot will be taken in 5 sec' &&
		scrot 'snap_%y_%m_%d_%H_%M.png' -cd 5 -q 100 -e 'mv $f ~/Documents/Snapshots/ ; notify-send Screenshot -i ~/Documents/Snapshots/$f -u normal "Snapshot Taken"'
		;;
	$shot_10)
		notify-send Screenshot -u normal -t 8000 'Screenshot will be taken in 10 sec' &&
		scrot 'snap_%y_%m_%d_%H_%M.png' -cd 10 -q 100 -e 'mv $f ~/Documents/Snapshots/ ; notify-send Screenshot -i ~/Documents/Snapshots/$f -u normal "Snapshot Taken"'
		;;
esac
