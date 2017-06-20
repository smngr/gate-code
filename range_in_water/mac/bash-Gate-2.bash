declare -a Energy=("130" "140" "150" "160" "170" "180" "190" "191.8" "200")

for e in "${Energy[@]}"
     do Gate -a [en,"$e"][out,/media/sf_linux_share/Data/GATE_Simulations/RangeInWater/18112016/RangeInWater_"$e"MeV_mono.txt] batch-en.mac &
done
