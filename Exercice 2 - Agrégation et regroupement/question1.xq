(: Nombre total de livres dans le catalogue. :)

let $total := count
(
    doc ("../Donnees/books.xml")
    /catalog
    /book
)

return $total
