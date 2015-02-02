for f in *.csv
do
    filename=$(basename "$f")
    extension="${filename##*.}"
    filename="${filename%.*}"
    mongoimport --host 192.168.59.103:27017 -d Northwind -c "$filename" --type csv --file "$f" --headerline
done
