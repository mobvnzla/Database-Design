> ER (entity relationship model): is a DB model which allows to build an conceptual scheme based on diagrams, which makes use of the following elements:
>
> > - Entity: any IRL object or abstract object which have data to be stored is an entity.
>
> > - Attributes: attributes are all the features that identify an entity as unique. attributes are all the data of a entity or relationship able to be collected.
> >
> > ![atrribute](/youtube_guide/4Entity%20Relationship%20model/attribute.png)
>
> > - Identifiers: are unique and mandatory attributes.
> >
> > ![identifier](/youtube_guide/4Entity%20Relationship%20model/identifier.png)
>
> > - Relationship: allows two or more entities to be related, making it easier to clearly represent what is happening in the real world and is mainly represent by a diamond and an action verb.
> >
> >   i.e. given waitress and customer as entities the relationship between them is serve, waitress <- serve -- customer, this is an example of a binary relationship and one way to read it is "one waitress serves many customers" and the other way is "a customer is served by one waitress" ![binary_relationshi](/youtube_guide/4Entity%20Relationship%20model/binary_relationship.png)
> >
> >   Binary relationship in not the only type of relationship
> >
> >   Ternary relationship: it relates more than 2 entities
> >
> > ![ternary_relationship](/youtube_guide/4Entity%20Relationship%20model/ternay_relationship.png)
> >
> > Double relationship: given vehicle and user as entities we can find the grafical schema will looks like this
> >
> > ![double_relationship](/youtube_guide/4Entity%20Relationship%20model/double_relationship.png)
> >
> > Reflective relationship: given Employee as entity and the condition that there are 2 types of employees (employee and employee manager), so the next schema is read like "an employee is the manager of another employees" and "employees have a manager that is also an employee"
> >
> > ![reflective_relationship](/youtube_guide/4Entity%20Relationship%20model/Reflective_relationship.png)
>
> > - Cardinality: is the number of relationships a entity is able to participate
> >
> > ![cardinality](/youtube_guide/4Entity%20Relationship%20model/cardinality_ER_diagram.png)
