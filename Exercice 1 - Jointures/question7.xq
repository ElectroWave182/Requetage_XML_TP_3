(:
Liste des commandes indiquant le nom du client, la date de la commande, le titre du livre et la quantité commandée. Formater le résultat comme suit.
<order>
    <customer>CUSTOMER_NAME</customer>
    <date>ORDER_DATE</date>
    <book>BOOK_TITLE
        <qty>QUANTITY_ORDERED</qty>
    </book>
</order>
:)

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
