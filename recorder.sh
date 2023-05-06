#!/bin/zsh

set -e

name=$(date +%d-%m-%y_%H:%M:%S)

if [[ $(pgrep "wf-recorder") == "" ]]; then
    RECORDING="true"
else
    RECORDING="false"
fi

if [[ $RECORDING == "true" ]]; then
    b=$(echo -e "With_microphone\nWithout_microphone" | wofi -p "Select type of recording to be taken" -d)
    if [[ $b == "Without_microphone" ]]; then
        a="alsa_output.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp__sink.monitor"
    else
        a="alsa_input.pci-000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp_6__source"
    fi
    sleep 1
    notify-send "Starting recorder $b"
    wf-recorder -a$a -f "$HOME/Videos/ScreenRecord/$name.mp4"
else
    notify-send "Killing recorder"
    pgrep "wf-recorder" | xargs -I dot kill -2 dot
fi
