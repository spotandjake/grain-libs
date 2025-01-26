---
title: Stream
---

## Types

Type declarations included in the Stream module.

### Stream.**Stream**

```grain
type Stream
```

## Values

Functions and constants included in the Stream module.

### Stream.**charByteCount**

```grain
charByteCount : (c: Char) => Number
```

### Stream.**fromBytes**

```grain
fromBytes : (bytes: Bytes) => Stream
```

### Stream.**fromString**

```grain
fromString : (string: String) => Stream
```

### Stream.**isEmpty**

```grain
isEmpty : (stream: Stream) => Bool
```

### Stream.**advance**

```grain
advance : (byteCount: Number, stream: Stream) => Void
```

### Stream.**advanceLine**

```grain
advanceLine : (stream: Stream) => Void
```

### Stream.**getPosition**

```grain
getPosition : (stream: Stream) => Number
```

### Stream.**getLine**

```grain
getLine : (stream: Stream) => Number
```

### Stream.**getColumn**

```grain
getColumn : (stream: Stream) => Number
```

### Stream.**getBytes**

```grain
getBytes : (stream: Stream) => Bytes
```

## Stream.Get

### Values

Functions and constants included in the Stream.Get module.

#### Stream.Get.**byte**

```grain
byte : (stream: Stream) => Uint8
```

#### Stream.Get.**bytes**

```grain
bytes : (byteCount: Number, stream: Stream) => Bytes
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

