The solution replaces `foldr` with a more efficient and safer approach that handles the summation iteratively.  This avoids the recursive stack build-up of the original `foldr` implementation.

```haskell
sumSquares' :: Int -> Integer
sumSquares' n = sum [x*x | x <- [1..n]]
```
This version explicitly computes the sum of squares using list comprehension and the `sum` function.  This approach is more memory efficient than `foldr` when dealing with large sequences and prevents stack overflow errors.  Alternatively, one could use `foldl'` which evaluates from left to right, but this is generally less efficient than iterative approaches for this type of computation.