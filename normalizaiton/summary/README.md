# Normalize

### The main idea is to organize the data of a database by following the next steps

> ## FN 1
>
> - atomize database data: create new columns in order to atomize the data in case it is necessary
>
> - the columns of the table must not be variants of each other: create a separate table for each set of related data
>
> - stablish an unique primary keys

> ## FN 2
>
> - Create separate tables for sets of values that apply to multiple records. a useful way to also apply this is: 'separate by tables the elements that do not depend on the primary key'
>
> - Relate these tables with a foreign key.

> ## FN 3
>
> - Delete the fields that do not depend on the key.

<p style="text-align: center;"><em>and that's it folks</em></p>
