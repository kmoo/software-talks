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
> – _Refactoring: Ruby Edition, Chapter 8, pp. 201_

### Refactor with Deprecation

- This was a really cool idea! I love how he is using code to create a "new way" to deprecate code. Such a cool Rubyist / "sharp knives" way of thinking

### Replace Hash with Object

- Just makes sense. Working with JSON-based APIs for fetching data, we have needed to do (or should have done) this a lot.

### Change Unidirectional Association to Bidirectional

- This makes sense, but there were several nuances on page 212 that feel worthy of re-reading. I can't capture them easily here.

### Change Bidirectional Association to Unidirectional

> Bidirectional associations are useful, but they carry a price.
> The price is the added complexity of maintaining the two-way links and ensuring that objects are properly created and removed.
> Bidirectional associations are not natural for many programmers, so they often are a source of errors.
>
> Having many two-way links also makes it easy for mistakes to lead to zombies: objects that should be dead but still hang around because of a reference that was not cleared.
> 
> Bidirectional associations force an interdependency between two classes. Any change to one class may cause a change to another.
> Many interdependencies lead to a highly coupled system, in which any little change leads to a lot of unpredictable ramifications.
> 
> – _Refactoring: Ruby Edition, Chapter 8, pp. 214_

- I feel like unnecessary bidirectional association may be very hard to discern / recognize when entering a code-base. 
- `"The most difficult part of this refactoring is checking that I can do it" - Refactoring: Ruby Edition, Chapter 8, pp. 216`

### Replace Magic Numbers with Symbolic Constant

- This seems to be truly about just giving things proper names, conveying the right meaning, and preventing lost context over time.
- This "Replace Magic Numbers with Symbolic Constant" refactor could save hours of heart-ache in debugging something later on!

### Encapsulate Collection

> Make it return a copy of the collection and provide add/remove methods.
>
> – _Refactoring: Ruby Edition, Chapter 8, pp. 219_

> The attribute reader should not return the collection object itself, because that allows clients to manipulate the contents of the collection without the owning class knowing what is going on.
> It also reveals too much to clients about the object's internal data structures.
> An attribute reader for a multivalued attribute should return something that prevents the manipulation of the collection and hides unnecessary details about its structure.
>
> In addition there should not be an attribute writer for the collection: rather, there should be operations to add and remove elements.
> This gives the owning object control over adding and removing elements from the collection.
> 
> – _Refactoring: Ruby Edition, Chapter 8, pp. 219_

- This example is very simple. I've definitely made the mistake of _not_ doing this in the past, and it has bitten me!
- I like his parting thought here, `"A few years ago I was concerned that moving this kind of begavior over to the Person would lead to a bloated Person class. In practice, I've found that this usually isn't a problem." - Refactoring: Ruby Edition, Chapter 8, pp. 224`

### Replace Record with Data Class

- No thoughts

## Discussion Notes

- TBD
