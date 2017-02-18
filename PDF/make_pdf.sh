echo "Generating lowres pages:"
for f in ../originais/*.tiff
do
    echo "Converting $f ..."
    convert $f -resize 1200 $f.lowres.jpg
done

echo "And now generating the lowres PDF..."
convert ../originais/Capa*.lowres.jpg ../originais/Pagina_*.lowres.jpg Software_para_o_Sintetizador__Guido_Stolfi.pdf
rm ../originais/*.lowres.jpg -f

echo "done."
