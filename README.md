# 110% efficiency
*~sjsanc, 2020*

This concerns the following kata on CodeWars.com: [Convert a Number to a String!](https://www.codewars.com/kata/5265326f5fda8eb1160004c8/ruby)

The top rated solution is the most simple one.

But another user, [dmccraw](https://www.codewars.com/users/dmccraw), decided to go with a much more convoluted way of solving this issue. User [sjsanc](https://www.codewars.com/users/sjsanc) jokingly suggested that this answer is a very efficient method.

I decided to put this to the test!

## Instructions

With Ruby installed on your system, run
```bash
ruby codewars_5265326f5fda8eb1160004c8_benchmarks.rb
```
to benchmark both answers.

## My results

```
top_solution
  0.000010   0.000002   0.000012 (  0.000010)
dmccraw
  0.000008   0.000001   0.000009 (  0.000008)
```

To my surprise, dmccraw's solution was indeed a bit faster to compute!
