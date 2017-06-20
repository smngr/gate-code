declare -a Energy=("80.40" "80.45" "80.50" "80.55" "80.60" "80.65" "80.70" "80.75" "80.80" "80.85" "80.90" "80.95" "81")

for e in "${Energy[@]}"
    do Gate -a [en,"$e"][out,/media/sf_linux_share/Data/GATE_Simulations/iThemba_52mmRange_Validation/range_"$e"MeV.txt] batch-en.mac
done
