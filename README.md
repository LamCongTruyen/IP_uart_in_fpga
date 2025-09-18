# IP_uart_in_fpga
Xây dựng khối chức năng giao tiếp UART trên FPGA Altera Cyclone IV EP4CE6E22C8N hỗ trợ cho đồ án tốt nghiệp.

Khối chức năng giao tiếp UART này được thực hiện trên kit FPGA output là 2 tín hiệu rx,tx ở chân mong muốn. Được kết nối gián tiếp qua usb to ttl để kết nối với laptop.

Trên laptop sẽ có giao diện winform thực hiện kết nối cổng COM để gửi dữ liệu cũng như hiển thị dữ liệu từ FPGA gửi lên.

Với ý tưởng là winform sẽ nhận ảnh chụp từ ESP32 CAM sau đó chuyển ảnh thành chuỗi mã hex và truyền uart xuống FPGA, sau đó thực hiện mã hóa đối xứng AES và gửi dữ liệu
đã mã hóa lên winform. Trọng tâm của dự án sẽ là thuật toán mã hóa AES và xây dựng IP UART một cách tối ưu nhất có thể.

Bên dưới là hình ảnh giao diện winform chuyển đổi ảnh 64x64 thành mã hex và gửi xuống cho FPGA, sau khi nhận thì FPGA gửi lại toàn bộ dữ liệu đã nhận lên lại winform qua
UART:
<img width="1134" height="760" alt="image" src="https://github.com/user-attachments/assets/2e79c3c6-3b8c-49ec-be9c-af2a9fc6f38c" />
