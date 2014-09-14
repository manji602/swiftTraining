#### 03. Strings and Characters
定数はletで定義する。

```
let CONSTANTS = 1
```

変数はvarで定義する。

```
var variables = 0
```

型を明示的に示す場合は変数名の後ろにコロンを付ける。

```
let CONSTANTS_DOUBLE: Double = 1.0
```

キャストする場合は型()で呼び出す。

```
var messageHeader: String = "CONSTANTS_DOUBLE is "
var message: String = messageHeader + String(CONSTANTS)
println("message : " + message)
```

型を明示された変数はキャスト出来ない。

```
// var message: String = messageHeader + String(CONSTANTS_DOUBLE)
/* Definition conflicts with previous value */
```

ダブルクォートされたString内に変数を入れる場合は、「\\()」で定義する。

```
let NUM_OF_APPLES: NSInteger = 5
var appleSentence: String = "I have \(NUM_OF_APPLES) apples"
println(appleSentence)
```
