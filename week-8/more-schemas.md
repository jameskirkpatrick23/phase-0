![schema image](/imgs/One-To-One-Schema.png?raw=true "One To One Schema")

The reason that this relationship is one to one is that while there can be many cars made by the same manufacturer, and of the same model, and even of the same year, there can only be one liscence plate attached to a car, and in some cases if they are not sole yet they do not even have one. That liscence plate however maps itself to a person's driver's license number and therefore all the personal information of that individual.


![schema image](/imgs/Grocery-List-Schema.png?raw=true "Grocery List Schema")

This is the Many to Many relationship schema


What is a one-to-one database?
A one to one database is a connection of two data tables by way of a key. That key reprsents a set of data all unto itself which is wholly important and unimportant at the same time. For example, a car may have a liscence plate. That in and of itself represents a huge amount of data, IE the person who drives it and all their information. Or it may not, thus rendering the data key useless. (TLDR one to one has a field that gateways into a different data structure if it is used)

When would you use a one-to-one database? (Think generally, not in terms of the example you created).
You would use a one to one database when you have information you want to link, that is partially housed within the parent data structure, yet is optional to the overall data

What is a many-to-many database?
A many to many database is much easier to understand, it is when two data structures are reliant upon each-other yet wholly self sustaining. That interaction however allows the use of a joining table to bring the identifying parts of the structures together.

When would you use a many-to-many database? (Think generally, not in terms of the example you created).
whenever you have sets of data that can stand on their own, yet consistently interact

What is confusing about database schemas? What makes sense?
I am a little confused on what I should make into a key and what I should not. Most of the interactions make sense however when I see the schema itself