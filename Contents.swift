import UIKit

var greeting = "Hello, playground"


//クラスと構造体 -
//Swiftでの、クラスと構造体の最も大きな違いは、値渡し(call by value)か参照渡し(call by reference)か、という点
//（変数に代入するときに、値を入れるか、参照を入れるか）


struct TweetData {
    var userId: String!
    var content: String!
    var date: Date
    
    init(userId: String, content: String, date: Date) {
        self.userId = userId
        self.content = content
        self.date = date
    }
}


//値渡し(構造体の場合)
var tweet1 = TweetData(userId: "_ha2f", content: "ストラクト", date: Date())
tweet1.userId = "_ha1f"

var tweet2 = tweet1
tweet2.userId = "aritaku03"

print(tweet1.userId) //　->　_ha1f (クラスの場合はaritaku03が出力)


let tweet = TweetData(userId: "_ha1f", content: "クラス", date: Date())

tweet.userId = "aritaku03"// error
tweet = TweetData()//　error

//構造体の場合はどちらもエラーになる
//構造体だと中身も含めてひとつなので、値すら置き換えることができません。

//構造体の場合、自動的にすべての値がコピーされる(違う値で書き換えできない)イメージ、
//クラスの場合は全ての値が参照され何度も書き換え可能

