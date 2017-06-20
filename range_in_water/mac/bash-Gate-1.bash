declare -a Energy=("50" "60" "70" "80" "90" "100" "110" "120" "125")

for e in "${Energy[@]}"
    do Gate -a [en,"$e"][out,/media/sf_linux_share/Data/GATE_Simulations/RangeInWater/18112016/RangeInWater_"$e"MeV_mono.txt] batch-en.mac &
done
