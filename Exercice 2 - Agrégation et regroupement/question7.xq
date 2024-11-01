(: Plus grande longueur moyenne des descriptions par genre. :)

let $livres :=
    doc ("../Donnees/books.xml")
    //book


let $moyenne :=

    for $genre in
        distinct-values
        (
            $livres
            /genre
        )
    
    return avg
        (
            $livres [genre = $genre]
            /string-length (description)
        )

return max ($moyenne)
