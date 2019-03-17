import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myDog = Dog()
        myDog.name = "nyan"
        myDog.age = 5
        
        
        // デフォルトRealmを取得します
        let realm = try! Realm()
        
        
        // 追加
//        try! realm.write {
//            realm.add(myDog)
//        }
        
        // 取得
        var saved_dogs_data = realm.objects(Dog.self)
        
        

        // 先頭の犬を取り出し
        if let dog = saved_dogs_data.first {

//            // 更新
//            try! realm.write() {
//                dog.name = "Change"
//            }


            // 削除
            try! realm.write() {
                realm.deleteAll()
            }

        }
        
        saved_dogs_data = realm.objects(Dog.self)
        // ためしに名前を表示
        for dog in saved_dogs_data {
            print("name: \(dog.name)")
        }
        
        }
        
}
