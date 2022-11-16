# Chapter 8 - Organizing Data

## Notes

### Self-Encapsulate Field

> I'm always of two minds with this choice. I'm usually happy to do what the rest of the team wants to do.
> Left to myself, though, I like to use direct variable access as a first resort, until it gets in the way.
> Once things start becoming awkward, I switch to indirect variable access.
> Refactoring gives you the freedom to change your mind.
>
> – _Refactoring: Ruby Edition, Chapter 8, pp. 189_

- I agree, and also lean towards direct variable access for the sake of simplicity. Ruby seems to make this easier than in Java and other languages I have used (but maybe that is just because I didn't use those languages properly).
- In his example he says, `"When you are using self-encapsulation you have to be careful about using the setting method in the constructor." - Refactoring: Ruby Edition, Chapter 8, pp. 190`. I've definitely fallen into this trap before, and caused tons of difficulties in updating code.

### Replace Data Value with Object

> A telephone number may be represented as a string for a while, but later you realize that the telephone needs special behavior for formatting, extracting the area code, and the like.
> For one or two items you may put the methods in the owning object, but quickly the code smells of duplication and feature envy.
> When the smell begins, turn the data value into an object.
>
> – _Refactoring: Ruby Edition, Chapter 8, pp. 191_

### Change Value to Reference

> _Reference objects_ are things like customer or account.
> Each object stands for one object in the real world, and you use the object identity to test whether they are equal.
> _Value objects_ are things like date or money.
> They are defined entirely through their data values.
> You don't mind that copies exist; you may have hundreds of [...] objects around your system.
> 
> [...] The decision between reference and value is not always clear.
> Sometimes you start with a simple value with a small amount of immutable data.
> Then you want to give it some changeable data and ensure that the changes ripple to everyone referring to the object.
> At this point you need to turn it into a reference object.
>
> – _Refactoring: Ruby Edition, Chapter 8, pp. 195_

### Change Reference to Value

> It's important to be clear on what _immutable_ means.
> If you have a money class with a currency and a value, that's usually an immutable value object.
> That does not mean that your salary cannot change.
> It means that to change your salary, you need to replace the existing money object with a new money object rather than changing the amount on an existing money object.
> Your relationship can change, but the money object itself does not.
>
> – _Refactoring: Ruby Edition, Chapter 8, pp. 199_

### Replace Array with Object

> `Arrays` are a common structure for organizing data.
> However, they should be used only to contain a collection of similar objects in some order.
> Sometimes, however, you see them used to contain a number of different things.
> Conventions such as "the first element on the `Array` is the person's name" are hard to remember.
> With an object you can use names of fields and methods to convey this information so you don't have to remember it or hope the comments are up to date.
> You can also encapsulate the information and use Move Method to add behavior to it.
> 
> – _Refactoring: Ruby Edition, Chapter 8, pp. 201

### Refactor with Deprecation

- This was a really cool idea! I love how he is using code to create a "new way" to deprecate code. Such a cool Rubyist / "sharp knives" way of thinking

### Replace Hash with Object

- Just makes sense. Working with JSON-based APIs for fetching data, we have needed to do (or should have done) this a lot.

### Change Unidirectional Association to Bidirectional

## Discussion Notes

- TBD
