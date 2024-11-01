(: Même requête que la question 7 en formulant les conditions de jointure à l’aide de prédicats de chemin. :)

for $commande in doc ("../Donnees/orders.xml") //order
return

    <order>
        <customer>
        
        {
            doc ("../Donnees/customers.xml")
            //customer [@id = $commande /customer /@id]
            /name
            /text ()
        }
        
        </customer>
        <date>
        
        {
            $commande
            /date
            /text ()
        }
        
        </date>
        <book>
        
        {
            doc ("../Donnees/books.xml")
            //book [@id = $commande /book /@id]
            /title
            /text ()
        }
        
            <_/><qty>
            
            {
                $commande
                /book
                /qty
                /text ()
            }
            
            </qty>
        </book>
    </order>
