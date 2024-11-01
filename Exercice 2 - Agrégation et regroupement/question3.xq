(: Prix minimum, moyen et maximum des livres. :)

let $prix :=
    doc ("../Donnees/books.xml")
    //book
    /price

return
    <stats>
        <minimum>
            {min ($prix)}
        </minimum>
        <moyenne>
            {avg ($prix)}
        </moyenne>
        <maximum>
            {max ($prix)}
        </maximum>
    </stats>
