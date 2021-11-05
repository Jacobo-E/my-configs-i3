#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar polyOne 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar statusBar 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar workSpace 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar modei3 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar powerMe 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar spotify 2>&1 | tee -a /tmp/polybar1.log & disown

polybar secondRice 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."

