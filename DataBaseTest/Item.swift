import RealmSwift

class Item: Object{
    // 品名
    @objc dynamic var name: String? = nil
    // 金額
    @objc dynamic var price = 0
    // 登録日時
    @objc dynamic var created = Date()
}
