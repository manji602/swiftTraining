#### Class and Structures

##### class

objective-cと異なり「.h」のようなヘッダファイルは存在しない。XCode上からは、「File->New->iOS->Source->Swift File」を選択して.swiftファイルを作成することができる。

簡単なサンプルクラス

```
// classSample.swift
import Foundation

class classSample {
    var name: String
    
    // イニシャライザはfuncをつけない
    init(name: String) {
        self.name = name
    }
    
    func test() {
        println("This is test function")
    }
}
```

プロジェクト内のclassは、別の.swiftファイルからもimportなしで普通に呼び出せることをXCode上で確認済。（ドキュメントは未確認なので認識間違えているかも）

```
// import classSample の記述は不要
var _classSample:classSample?
_classSample = classSample(name: "myClass")
_classSample?.test()
```

##### sub class

あるクラスを継承したクラスを作るには、`class subClass : MainClass`のように記述してあげる。

```
class subClassSample : classSample {
    var age: Int = 0
    
    init(name: String, age: Int) {
        super.init(name: name)
        self.age = age
    }

    // オーバーライドする場合はoverrideを先頭につける
    override func test() {
        println("This is overrided function")
    }
}
```

##### structure

C言語の構造体のようなもの？classとstructの違いは、classの場合はリファレンスが渡されるのに対し、structは実体がコピーされて渡される。

sample code: TBD
