1) Add a Column name row count at the last portion
   and fill the column with 1. just 1 no increment.
2) go to insert and the pivot table of the whole table

3) now put the the ROW_LEVES (Id, RowId ,Primarykey what you call)
   in the row and in the value put the RowCount
   By default pivot table gives a sum option
   so if any row is duplicate we can get the number of how much row
   is duplicated

4) Back to the previous file. add another column name "DUP?"
   Do a Vlookup. VLOOKUP(RowId, $Pivot$table,2,0) >1
   now remember when you select the pivot table choose the column not the value inside the column otherwise only formula will get copied
   we want the values.

   now you get the row which shows 	a row is duplicate or not

5) Another colum  name "OCCARANCE?"
=> =COUNTIF(ROW_ID_COLUMN:ROW_ID_COLUMN,ROW_ID_COLUMN2)
   =COUNTIF($C:$C,C2)

   it means the how many times c2 occurs in the Column C
   => when we scroll down it will be c3,c4,etc
   er mane holo ekta row tar nijesso column e koybar ase.
   so now we know how many times we have

-------------------------------------------------------

CREATE A COLUMN "REMOVE?"
REMOVE IT: remove korar jonno wkta bisoy kheyal rakhte hobe
amara sob gulo jodi detele kore dile hobe na . duplicate row 
gular moddhe ekta row rekhe baki gulo delete kore dibo.
so kajta kivabe kora jay.

lets explain a formula
	=COUNTIF($C$1:C2,C2)

	ei formula ta r mane holo
	amra C2 count  korbo and tar range hole prothom C1 theke suru kore oi C2 porjonto. 
	ekta example

	=COUNTIF($C$1:C100,100)

	means 100 number ti tar purber 100 row er moddhe kotobar silo
	pura ta na just previous 100. er maddhole 100 number row ta jodi are 3 bar thake tahole prothom row number hobe 1, second 2 and third 3
	tahole amra jodi filter kori je 
	IF
	COUNTIF($C$1:C2,C2)>1

	then we got all the dulicate data that we want to remove 
	this are the extra.
	then just remove it
	and reset the filter and you are good to go





---------------------------------------------------------




