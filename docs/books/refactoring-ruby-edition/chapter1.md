# Chapter 1 - Refactoring, a First Example

## Code Examples

**Original**:
- [examples/chapter1/original](examples/chapter1/original)

**Refactored**:
- [examples/chapter1/refactored](examples/chapter1/refactored)

## Notes

> The key to testing is running tests after every small change so _when_ you mess up you don't have to look in many places to find the problem.
> Comparing the failing version of code to a previous working version (which I call Diff Debugging) is a useful technique, particularly so when the diffs are small.
> Because each change is so small, any errors are easy to find.
>
> – _Refactoring: Ruby Edition, Chapter 1, pp. 10_ (emphasis mine)

- I find myself doing this all the time.

> Any fool can write code that a computer can understand.
> Good programmers write code that humans can understand.
>
> – _Refactoring: Ruby Edition, Chapter 1, pp. 11_

- There's a lot of wisdom in this - and I don't think any engineer at any level can get past ever learning this.

> I often refactor when I'm reading some code.
> That way as I gain understanding, about the program, I embed that understanding into the code for later so I don't forget what I learned.
>
> – _Refactoring: Ruby Edition, Chapter 1, pp. 11_

- I love the idea of "Refactoring for learning" - it was first introduced to me in [Sandi Metz talk, "All the Little Things."](https://www.youtube.com/watch?v=8bZh5LMaSmE&list=PLqal2KPbpmUwQurG_ixyT9pAHcesUjvJ5&index=4)

- Loops can be replaced with the "Collection Closure" method, ref: https://refactoring.com/catalog/replaceLoopWithCollectionClosureMethod.html

## Discussion Notes

- [@mellowfish](https://github.com/mellowfish) shared a great quote which was relevant to the Refactoring discussion -> [“Make it work, make it right, make it fast.” by Kent Beck](https://www.kentbeck.com/). He actually rememebered an interesting evolved version of the quote, but I can't find the attribution anywhere (so I guess the credit is his!): “Make it right, make it readable, make it responsive, make it reusable.”
