---
title: Stream
---

A module for working with streams of bytes.

Streams are used to read data from a byte array, and keep track of the current position in the stream.

```grain
from "./stream.gr" include Stream
```

```grain
let bytes = Stream.fromString("hello")
assert Stream.Get.char(bytes) == "h"
assert Stream.GetAndAdvance.char(bytes) == "h"
assert Stream.Expect.char("h", bytes) == true
assert Stream.ExpectAndAdvance.char("e", bytes) == true
```

## Types

Type declarations included in the Stream module.

### Stream.**Stream**

```grain
type Stream
```

A stream of bytes.

## Values

Functions and constants included in the Stream module.

### Stream.**fromBytes**

```grain
fromBytes : (bytes: Bytes) => Stream
```

Create a stream from a byte object.

Parameters:

|param|type|description|
|-----|----|-----------|
|`bytes`|`Bytes`|The byte array to convert into a stream|

Returns:

|type|description|
|----|-----------|
|`Stream`|: A stream object|

Examples:

```grain
Stream.fromBytes(b"hello")
```

### Stream.**fromString**

```grain
fromString : (string: String) => Stream
```

Create a stream from a string.

Parameters:

|param|type|description|
|-----|----|-----------|
|`string`|`String`|The string to convert into a stream|

Returns:

|type|description|
|----|-----------|
|`Stream`|: A stream object|

Examples:

```grain
Stream.fromString("hello")
```

### Stream.**isEmpty**

```grain
isEmpty : (stream: Stream) => Bool
```

Checks if we have reached the end of the stream.

Parameters:

|param|type|description|
|-----|----|-----------|
|`stream`|`Stream`|The stream to check|

Returns:

|type|description|
|----|-----------|
|`Bool`|`true` if we are at the end of the stream, `false` otherwise|

Examples:

```grain
let stream = Stream.fromString("hello")
assert Stream.isEmpty(stream) == false
Stream.advance(5, stream)
assert Stream.isEmpty(stream) == true
```

### Stream.**advance**

```grain
advance : (byteCount: Number, stream: Stream) => Void
```

Advance the stream by a given number of bytes.

Parameters:

|param|type|description|
|-----|----|-----------|
|`byteCount`|`Number`|The number of bytes to advance the stream by|
|`stream`|`Stream`|The stream to advance|

Examples:

```grain
let stream = Stream.fromString("hello")
Stream.advance(4, stream)
assert Stream.Get.char(stream) == "0"
```

### Stream.**advanceLine**

```grain
advanceLine : (stream: Stream) => Void
```

Advance the stream by one line.

The columns is reset to 0 and the line count is incremented.
line and column positions do not affect the position in the stream.

Parameters:

|param|type|description|
|-----|----|-----------|
|`stream`|`Stream`|The stream to advance|

Examples:

```grain
let stream = Stream.fromString("helloworld")
Stream.advanceLine(stream)
Stream.advanceLine(stream)
assert Stream.Get.char(stream) == "h"
assert Stream.getLine(stream) == 2
```

### Stream.**getPosition**

```grain
getPosition : (stream: Stream) => Number
```

Get the current position in the stream.

Parameters:

|param|type|description|
|-----|----|-----------|
|`stream`|`Stream`|The stream to get the position of|

Examples:

```grain
let stream = Stream.fromString("hello")
assert Stream.getPosition(stream) == 0
Stream.advance(1, stream)
assert Stream.getPosition(stream) == 1
```

### Stream.**getLine**

```grain
getLine : (stream: Stream) => Number
```

Get the current line in the stream.

Parameters:

|param|type|description|
|-----|----|-----------|
|`stream`|`Stream`|The stream to get the line of|

Examples:

```grain
let stream = Stream.fromString("hello\nworld")
assert Stream.getLine(stream) == 1
Stream.advanceLine(stream)
assert Stream.getLine(stream) == 2
```

### Stream.**getColumn**

```grain
getColumn : (stream: Stream) => Number
```

Get the current column in the stream.

Parameters:

|param|type|description|
|-----|----|-----------|
|`stream`|`Stream`|The stream to get the column of|

Examples:

```grain
let stream = Stream.fromString("hello\nworld")
assert Stream.getColumn(stream) == 1
Stream.advance(5, stream)
assert Stream.getColumn(stream) == 6
Stream.advanceLine(stream)
assert Stream.getColumn(stream) == 1
```

### Stream.**getBytes**

```grain
getBytes : (stream: Stream) => Bytes
```

Get the remaining bytes in the stream.

Parameters:

|param|type|description|
|-----|----|-----------|
|`stream`|`Stream`|The stream to get the remaining bytes of|

Examples:

```grain
Stream.getBytes(Stream.fromString("hello")) == b"hello"
```

## Stream.Get

Utilities for reading the next item in the stream.

These functions read the next item in the stream, but do not advance the stream.

```grain
let stream = Stream.fromString("hello")
assert Stream.Get.char(stream) == "h"
```

### Values

Functions and constants included in the Stream.Get module.

#### Stream.Get.**byte**

```grain
byte : (stream: Stream) => Uint8
```

Get the next byte in the stream.

Parameters:

|param|type|description|
|-----|----|-----------|
|`stream`|`Stream`|The stream to get the byte from|

Returns:

|type|description|
|----|-----------|
|`Uint8`|: The next byte in the stream|

Examples:

```grain
let stream = Stream.fromString("hello")
assert Stream.Get.byte(stream) == 104
```

#### Stream.Get.**bytes**

```grain
bytes : (byteCount: Number, stream: Stream) => Bytes
```

Get the next `byteCount` bytes in the stream.

Parameters:

|param|type|description|
|-----|----|-----------|
|`byteCount`|`Number`|The number of bytes to get|
|`stream`|`Stream`|The stream to get the bytes from|

Returns:

|type|description|
|----|-----------|
|`Bytes`|: The next `byteCount` bytes in the stream|

Examples:

```grain
let stream = Stream.fromString("hello")
assert Stream.Get.bytes(2, stream) == b"he"
```

#### Stream.Get.**int64**

```grain
int64 : (stream: Stream) => Int64
```

#### Stream.Get.**int32**

```grain
int32 : (stream: Stream) => Int32
```

#### Stream.Get.**int16**

```grain
int16 : (stream: Stream) => Int16
```

#### Stream.Get.**int8**

```grain
int8 : (stream: Stream) => Int8
```

#### Stream.Get.**uInt64**

```grain
uInt64 : (stream: Stream) => Uint64
```

#### Stream.Get.**uInt32**

```grain
uInt32 : (stream: Stream) => Uint32
```

#### Stream.Get.**uInt16**

```grain
uInt16 : (stream: Stream) => Uint16
```

#### Stream.Get.**uInt8**

```grain
uInt8 : (stream: Stream) => Uint8
```

#### Stream.Get.**float64**

```grain
float64 : (stream: Stream) => Float64
```

#### Stream.Get.**float32**

```grain
float32 : (stream: Stream) => Float32
```

#### Stream.Get.**char**

```grain
char : (stream: Stream) => Char
```

## Stream.GetAndAdvance

### Values

Functions and constants included in the Stream.GetAndAdvance module.

#### Stream.GetAndAdvance.**byte**

```grain
byte : (stream: Stream) => Uint8
```

#### Stream.GetAndAdvance.**bytes**

```grain
bytes : (byteCount: Number, stream: Stream) => Bytes
```

#### Stream.GetAndAdvance.**int64**

```grain
int64 : (stream: Stream) => Int64
```

#### Stream.GetAndAdvance.**int32**

```grain
int32 : (stream: Stream) => Int32
```

#### Stream.GetAndAdvance.**int16**

```grain
int16 : (stream: Stream) => Int16
```

#### Stream.GetAndAdvance.**int8**

```grain
int8 : (stream: Stream) => Int8
```

#### Stream.GetAndAdvance.**uint64**

```grain
uint64 : (stream: Stream) => Uint64
```

#### Stream.GetAndAdvance.**uInt32**

```grain
uInt32 : (stream: Stream) => Uint32
```

#### Stream.GetAndAdvance.**uInt16**

```grain
uInt16 : (stream: Stream) => Uint16
```

#### Stream.GetAndAdvance.**uInt8**

```grain
uInt8 : (stream: Stream) => Uint8
```

#### Stream.GetAndAdvance.**float64**

```grain
float64 : (stream: Stream) => Float64
```

#### Stream.GetAndAdvance.**float32**

```grain
float32 : (stream: Stream) => Float32
```

#### Stream.GetAndAdvance.**char**

```grain
char : (stream: Stream) => Char
```

## Stream.ExpectAndAdvance

### Values

Functions and constants included in the Stream.ExpectAndAdvance module.

#### Stream.ExpectAndAdvance.**byte**

```grain
byte : (byte: Uint8, stream: Stream) => Bool
```

#### Stream.ExpectAndAdvance.**bytes**

```grain
bytes : (bytes: Bytes, stream: Stream) => Bool
```

#### Stream.ExpectAndAdvance.**int64**

```grain
int64 : (value: Int64, stream: Stream) => Bool
```

#### Stream.ExpectAndAdvance.**int32**

```grain
int32 : (value: Int32, stream: Stream) => Bool
```

#### Stream.ExpectAndAdvance.**int16**

```grain
int16 : (value: Int16, stream: Stream) => Bool
```

#### Stream.ExpectAndAdvance.**int8**

```grain
int8 : (value: Int8, stream: Stream) => Bool
```

#### Stream.ExpectAndAdvance.**uInt64**

```grain
uInt64 : (value: Uint64, stream: Stream) => Bool
```

#### Stream.ExpectAndAdvance.**uInt32**

```grain
uInt32 : (value: Uint32, stream: Stream) => Bool
```

#### Stream.ExpectAndAdvance.**uInt16**

```grain
uInt16 : (value: Uint16, stream: Stream) => Bool
```

#### Stream.ExpectAndAdvance.**uInt8**

```grain
uInt8 : (value: Uint8, stream: Stream) => Bool
```

#### Stream.ExpectAndAdvance.**float64**

```grain
float64 : (value: Float64, stream: Stream) => Bool
```

#### Stream.ExpectAndAdvance.**float32**

```grain
float32 : (value: Float32, stream: Stream) => Bool
```

#### Stream.ExpectAndAdvance.**char**

```grain
char : (value: Char, stream: Stream) => Bool
```

