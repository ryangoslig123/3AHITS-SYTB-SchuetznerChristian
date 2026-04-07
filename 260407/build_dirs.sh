mkdir $1

for i in 01 02
do
    mkdir $1/$1_$i

    for j in 1 2 3; do
        > $1/$1_$i/$1.$i.$j.txt
    done
done

tree