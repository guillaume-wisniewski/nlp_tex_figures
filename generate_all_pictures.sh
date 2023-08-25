for fn in `ls tex/*.tex`
do
    echo $fn
    xelatex $fn
done

mv *.pdf output
rm -f *.aux *.log