export TZ='Etc/UTC'

current_time=$(date)

work_end="17:00"

current_minutes=$(date -d "$current_time" +%s)
work_end_minutes=$(date -d "$work_end" +"%s")

remaining_seconds=$((work_end_minutes - current_minutes))

remaining_hours=$((remaining_seconds / 3600))
remaining_minutes=$(((remaining_seconds % 3600) / 60))
echo "Current time is $current_time"
echo "Work day ends after $remaining_hours hours and $remaining_minutes minutes"
