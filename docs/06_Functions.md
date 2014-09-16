#### Functions

swiftでは、関数は基本的には以下のように記述する。

```
func functionName(arg1Label: arg1Type, arg2Label: arg2Type, ...) -> returnType {
    ...
}
```

呼び出すときは、以下のように呼び出す

```
functionName(arg1, arg2Label: arg2, ...)
```

この呼び方に関しては、Objective-Cで第一引数のLabelを省略していた記法を継承しているものと思われる。
参考：[stackoverflow](http://stackoverflow.com/questions/24122886/function-parameter-names-dont-behave-according-to-documentation)

```
Specifically, Swift gives the first parameter name in a method a local parameter name by default, and gives the second and subsequent parameter names both local and external parameter names by default. This convention matches the typical naming and calling convention you will be familiar with from writing Objective-C methods, and makes for expressive method calls without the need to qualify your parameter names.
```

##### sample code

StringとIntを受け取ってStringを返す関数のサンプル

```
    func functionSampleWithName(name: String, age: Int) -> String {
        return "Hello \(name), your age is \(age)"
    }
```

配列を返す関数のサンプル

```
    func functionSampleReturnsHash() -> (min: Int, max: Int) {
        var min: Int = 0
        var max: Int = 100
        return (min, max)
    }
```

配列を受け取る関数のサンプル

```
    func functionSampleWithArray(array: [String]) {
        for element in array {
            println(element)
        }
    }
```

可変な引数の数を受け取れる関数のサンプル

```
    func functionSampleWithVariableArray(numbers: Int...) -> Int {
        var sum: Int = 0
        for element in numbers {
            sum = sum + element
        }
        return sum
    }
```

関数はネストできる

```
    func functionSampleNest() {
        func nestedFunction() {
            println("this is nested function")
        }
        nestedFunction()
    }
```

関数を戻り値にすることもできる

```
    func functionSampleReturnsFunction1() -> (String -> String) {
        func returnFunctionWithMessage(message: String) -> String {
            return "This is returned function " + message
        }
        return returnFunctionWithMessage
    }
    func functionSampleReturnsFunction2() -> () {
        func returnFunction() {
            println("This is returned function")
        }
        return returnFunction()
    }
```

関数を引数にすることもできる

```
    func functionSampleWithFunction(function: String -> String) {
        var returnString: String = function("Hello")
        println(returnString)
    }
```

引数のラベルに別名をつけることができる

```
    func functionSampleWithAnotherLabel(anotherLabel label: String) {
        println("anotherLabel " + label)
    }
```
