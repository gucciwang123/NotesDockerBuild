mkdir -p /out/Precalculus
mkdir -p /out/data

rm data.json
touch data.json

echo "[" >> data.json

for i in *.tex;
do
	name=${i%.*}
	number=`echo ${name} | grep -o "[1-9]*" | head -1`
	type=`echo ${name} | grep -o "[A-Za-z]*" | head -1`

	echo "{\"number\":\"${number}\",\"type\":\"${type}\",\"file\":\"${name}\"}," >> data.json

	pdflatex $i
	pdflatex $i
	mv *.pdf /out/Precalculus
done

truncate -s-2 data.json
echo "]" >> data.json

python3 data.py
