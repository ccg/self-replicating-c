# self-replicating-c
Copied Ken Thompson's ideas for creating a self-replicating C program

[Reflections on Trusting Trust by Ken Thompson](http://cm.bell-labs.com/who/ken/trust.html)

The main points in this implementation:

1. You have to find a way to skip over the list, otherwise it will be
self-referential, which means that adding a character to the list will cause at
least one character to be added to the length of the source code, which will
grow without bound. Starting at the 0, i.e., the null terminator in a C string,
is a clever trick.

2. Converting the character literals into their integer ASCII-value
representation is the other clever trick, because it avoids having to escape
metacharacters, which would lead to escaping escaped metacharacters
(meta-metacharacters), which would lead to escaping escaped escaped
metacharacters (meta-meta-metacharacters), ad infinitum.

Because of #2, the first program (a.c) is not self-replicating. Its output is
a self-replicating program.
