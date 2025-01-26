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

```grain
from "./grain-sexp.gr" include Sexp
```

```grain
Sexp.fromString("(add foo)") == Ok(List([Atom("add"), Atom("foo")]))
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

Represents an S-expression.

S-expressions are a simple and powerful way to represent data and code.

Variants:

```grain
Atom(String)
```

Represents an S-expression edge node.

```grain
List(List<Sexp>)
```

Represents an S-expression list node.

Examples:

```grain
Sexp.fromString("(add foo)") == Ok(List([Atom("add"), Atom("foo")]))
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

Represents an error that occurred while parsing an S-expression.

Variants:

```grain
UnexpectedChar{
  message: String,
  line: Number,
  column: Number,
}
```

An error that occurs when an unexpected character is found during parsing.

This error will happen either when a closing parenthesis is missing, or
when we are done parsing and there are still unparsed characters.

Fields:

|name|type|description|
|----|----|-----------|
|`message`|`String`|An error that occurs when an unexpected character is found during parsing.<br/><br/>This error will happen either when a closing parenthesis is missing, or<br/>when we are done parsing and there are still unparsed characters.|
|`line`|`Number`|An error that occurs when an unexpected character is found during parsing.<br/><br/>This error will happen either when a closing parenthesis is missing, or<br/>when we are done parsing and there are still unparsed characters.|
|`column`|`Number`|An error that occurs when an unexpected character is found during parsing.<br/><br/>This error will happen either when a closing parenthesis is missing, or<br/>when we are done parsing and there are still unparsed characters.|

```grain
UnexpectedEndOfInput{
  message: String,
  line: Number,
  column: Number,
}
```

An error that occurs when end of input is reached unexpectedly during parsing.

This error could occur when the file ends before a closing parenthesis is found, or
when an atom is expected but the file ends.

Fields:

|name|type|description|
|----|----|-----------|
|`message`|`String`|An error that occurs when end of input is reached unexpectedly during parsing.<br/><br/>This error could occur when the file ends before a closing parenthesis is found, or<br/>when an atom is expected but the file ends.|
|`line`|`Number`|An error that occurs when end of input is reached unexpectedly during parsing.<br/><br/>This error could occur when the file ends before a closing parenthesis is found, or<br/>when an atom is expected but the file ends.|
|`column`|`Number`|An error that occurs when end of input is reached unexpectedly during parsing.<br/><br/>This error could occur when the file ends before a closing parenthesis is found, or<br/>when an atom is expected but the file ends.|

## Values

Functions and constants included in the Sexp module.

### Sexp.**fromString**

```grain
fromString : (string: String) => Result<Sexp, ParseError>
```

Parse an S-expression from a string.

Parameters:

|param|type|description|
|-----|----|-----------|
|`string`|`String`|The string to parse|

Returns:

|type|description|
|----|-----------|
|`Result<Sexp, ParseError>`|The parsed S-expression|

Examples:

```grain
Sexp.fromString("(add foo)") == Ok(List([Atom("add"), Atom("foo")]))
```

```grain
Sexp.fromString("add") == Ok(Atom("add"))
```

### Sexp.**fromBytes**

```grain
fromBytes : (bytes: Bytes) => Result<Sexp, ParseError>
```

Parse an S-expression from a string.

Parameters:

|param|type|description|
|-----|----|-----------|
|`bytes`|`Bytes`|The string to parse|

Returns:

|type|description|
|----|-----------|
|`Result<Sexp, ParseError>`|The parsed S-expression|

Examples:

```grain
Sexp.fromBytes(b"(add foo)") == Ok(List([Atom("add"), Atom("foo")]))
```

```grain
Sexp.fromBytes(b"add") == Ok(Atom("add"))
```

