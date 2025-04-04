read -p "enter the file name" file
read -p "enter the file to be saved" nfile
read -p "enter the line to be added" l
sed "s/\./.&\\$l/g" "$file" > "$nfile"
