(: Prix moyen des livres de genre « Computer ». :)

let $moyenne := avg
(
    doc ("../Donnees/books.xml")
    //book [genre = "Computer"]
    /price
)

return $moyenne
