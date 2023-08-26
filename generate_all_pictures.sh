for fn in `ls tex/*.tex`
do
    echo "== generating $fn =="
    xelatex $fn
done

mv *.pdf output
rm -f *.aux *.log