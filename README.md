#   `%lcs`

A [diff](https://en.wikipedia.org/wiki/Diff) is a data comparison showing the differences between two data structures, typically files.  The basic diff algorithm uses the concept of a [_longest common subsequence_](https://rosettacode.org/wiki/Longest_common_subsequence) (LCS), typically over lines.  (We will retain operations over lines for simplicity of output, but there could be good reasons for analyzing per character instead.)

![](https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Nubio_Diff_Screenshot3.png/330px-Nubio_Diff_Screenshot3.png)

Here the longest common subsequence is `this is changed` and other text represents deletions or interpolations.

This algorithm returns the longest common subsequence in reverse order.

Our proof-of-concept algorithm will not be the most efficient solution.

1. Retrieve each base text (there should be two).  (Convert `cord` to `tape` using `++crip`.)
2. Break into constituent units (here, lines).  (In Hoon, we will have a `(list tape)` or a `wall`.)
3. Recursively check if we are at the end of either sequence; if so, return nothing (to add).
4. Otherwise, if the first elements match, append the head to the LCS and continue to calculate at #3.
5. If the first elements don't match, then we try both possible sequences from this point forward at #3.

