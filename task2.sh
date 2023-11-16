echo "Making Task 2 folder if it not present already"
if ! [ -d ./task2 ]; then
    mkdir task2
fi

echo "Moving into Task 2 folder"
cd task2

echo "Making 3 files (a,b,c).txt in task2"
touch a.txt b.txt c.txt

echo "Moving out of Task 2 in main folder"
cd ..

echo "Making Task2_temp folder if it is not present already"
if ! [ -d ./task2_temp ]; then
    mkdir task2_temp
fi

echo "Copying (a,b,c).txt in task2_temp folder"
cp ./task2/* ./task2_temp
echo -e "Swapping names task2 <> task2_temp \n"

mv task2 c
mv task2_temp task2
mv c task2_temp
