Bài tập lớn PHP

!!! Nếu bị lỗi thì thay đổi các đường dẫn từ http://localhost:8080/webbansach/... thành http://localhost:${port}/webbansach/... (với port hiện tại của xampp)

## Laravel Migration

Thư mục `laravel` chứa bộ khung dự án Laravel. Dữ liệu từ project PHP gốc được chuyển dần sang các controller, model và view của Laravel. Bạn cần cài đặt Laravel bằng Composer rồi cấu hình kết nối cơ sở dữ liệu trong file `.env`.

Các route mẫu đã có sẵn:

- `/` trang chủ (`HomeController`)
- `/chuyen-muc/{id}` hiển thị sản phẩm theo chuyên mục
- `/san-pham/{id}` chi tiết sản phẩm
- `/tim-kiem` tìm kiếm sản phẩm

Sao chép nội dung HTML từ các file PHP cũ vào các Blade template tương ứng trong `resources/views` để hoàn tất quá trình chuyển đổi.
