Hello World: 72 101 108 108 111 32 87 111 114 108 100

+++++++              Write 7 into first mem addr to count loop iterations
[>++++++++++<-]>++.  Increment next mem addr 10 * 7 times, add 2 and output char: H

<+++                 Write 3 into first mem addr
[>++++++++++<-]>-.   Increment next mem addr 10 * 3 times (it still has 72 stored), subtract 1 and output: e
+++++++..            Increment same mem addr 7 times to output l two times
+++.                 Increment same mem addr 3 times to output o

[-]                  Clear mem addr
<+++                 Write 3 into first mem addr
[>++++++++++<-]>++.  Increment next mem addr 10 * 3 times, add 2 and output space

<+++++
[>+++++++++++<-]>.   Increment next mem addr 11 * 5 times (it still has 32 stored) and output char: W

<++++                Write 4 into first mem addr
[>++++++<-]>.        Increment next mem addr 6 * 4 times and output char: o
+++.                 Increment same mem addr 3 times and output char: r
------.              Decrement same mem addr 6 times and output char: l
--------.            Decrement same mem addr 8 times and output char: d