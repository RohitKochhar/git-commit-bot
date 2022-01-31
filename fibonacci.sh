i_Sum=0
for i_Num  in {0..3000000}
do
    i_Sum=`expr $i_Sum + $i_Num`
    echo $i_Sum >> output.txt
    git add .
    git commit -m "Added $i_Sum to output.txt"
    git push origin main
    sleep 1
done