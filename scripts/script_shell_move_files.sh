### script shell - move files ###

# mauricio vancine
# 02-03-2019

# directory
cd your_path

# move files
for i in $(ls *.csv)
do 
mv -v $i new_path 
done

