# RD-SwiftUI
This repository is using for research SwiftUI

# 1. creating-and-combining-views

 `@main`: dùng để mô tả nơi khởi đầu của 1 ứng dụng.

`Spacer()`: Tạo ra 1 khoảng trống giữa các View khác, nó sẽ co giãn tới khoảng cách tối đa mà view cha có thể chứa.



```swift
@State private var region = MKCoordinateRegion(
  center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
  span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
)

var body: some View {
  Map(coordinateRegion: $region)
}
```

`@State`: Từ khóa khởi tạo 1 biến lưu trữ giá trị (Source of truth: Hiểu đơn giản là những thứ đang được hiển thị trên UI nó luôn được update theo trạng thái thực của biến), đây cũng là điểm đặc biệt của `@State` khác với cách khai báo biến thông thường, ở các components con trỏ đến nó, mỗi khi giá trị thay đổi thì nó sẽ tự thông báo để SwiftUI xử lý render lại UI của các components tương ứng.

* `@State` chỉ dùng để cập nhật trạng thái của View chứa nó, hoặc những View con, nên cấp độ truy cập luôn phải là `private`.

Tiền tố `$`: Khai báo 1 liên kết ràng buộc (binding) đến biến được khai báo dạng `@State`, tương tự như kiểu dữ liệu tham chiếu, khi giá trị của region trong đối tượng `Map` thay đổi, nó sẽ cập nhật trực tiếp đến giá trị của biến `region`.



`@Binding`: Từ khóa khai báo biến tương tự như `@State`, ý nghĩa của nó là giá trị biến này sẽ được quản lý và được View khác truyền đến.

```swift
struct ParentView: View {
  @State private var username: String = "Bumios"
  var body: some View {
    NameView(name: $username)
  }
}

struct NameView: View {
  @Binding var name: String
  var body: some View {
    Text(name)
  }
}
```



### `ObservableObject` & `@Published` (from Combine framework)

`ObservableObject`: Protocol có thể được kế thừa khi định nghĩa các object, mục đích của nó là có thể phát tín hiệu hoặc sự thay đổi để phía UI bên SwiftUI nhận biết để refresh components tương ứng.

`@Published`: Từ khóa này sẽ giúp Observable Object thông báo cho UI biết được thuộc tính nào thay đổi để xử lý việc refresh.



### makeCoordinator()

SwiftUI calls this `makeCoordinator()` method before `makeUIViewController(context:)`, so that you have access to the coordinator object when configuring your view controller.

Tip

You can use this coordinator to implement common Cocoa patterns, such as delegates, data sources, and responding to user events via target-action.



[?] Not clear yet:

`StateObject`
