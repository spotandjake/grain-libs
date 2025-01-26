---
title: Sexp
---

Utilities for working with S-expressions.

S-expressions are a simple and powerful way to represent data and code.
They are used in many programming languages, including Lisp and Scheme.

Grammer:
```ebnf
sexp -> wss (atom | ('(' list)) wss
list -> '(' wss sexp* ')'
atom -> symbol | number
```

## Types

Type declarations included in the Sexp module.

### Sexp.**Sexp**

```grain
enum Sexp {
  Atom(String),
  List(List<Sexp>),
}
```

### Sexp.**ParseError**

```grain
enum ParseError {
  UnexpectedChar{
    message: String,
    line: Number,
    column: Number,
  },
  UnexpectedEndOfInput{
    message: String,
    line: Number,
    column: Number,
  },
}
```

## Values

Functions and constants included in the Sexp module.

### Sexp.**charByteCount**

```grain
charByteCount : (c: Char) => Number
```

### Sexp.**fromString**

```grain
fromString : (string: String) => Result<Sexp, ParseError>
```

### Sexp.**fromBytes**

```grain
fromBytes : (bytes: Bytes) => Result<Sexp, ParseError>
```

