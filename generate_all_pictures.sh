for fn in `ls tex/*.tex`
do
    if [ $fn != "tex/common.tex" ]; then
        echo "== generating $fn =="
        xelatex $fn
    fi
done

mv *.pdf output
rm -f *.aux *.log