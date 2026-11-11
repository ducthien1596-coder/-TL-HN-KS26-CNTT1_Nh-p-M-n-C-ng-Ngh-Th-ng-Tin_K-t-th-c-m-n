# BÀI LÀM – HACKATHON 02
- **Mã đề:** 08
- **Họ tên:** Trần Đức Thiện
- - **Lớp:** CNTT1
- **Hệ A10 hành (Windows/macOS):** Windown 11

## 4.2. Thao tác máy tính cơ bản bằng CLI
### Các lệnh đã chạy
```shell
pwd

 get-childitem ./xuong-in-wedsite

move-item ./yeu_cau_khach_hang.txt docs

 mkdir backup

copy-item data/don_in_thang_6.xlsx backup

 remove-item \*.tmp
cd logs

Get-ChildItem -Force

cd ..

 get-childitem -recurse -force
 ```

## 4.3. Lọc log truy cập website

**a) Lọc các dòng chứa status=500**
 ```powershell
 select-string -pattern "status=500" ./logs/order.log
 ```
 - kết quả
logs\order.log:5:2026-06-28 08:15:01 POST /api/thanh-toan status=500
logs\order.log:11:2026-06-28 08:34:07 POST /api/tai-file status=500
 
 **b) Đếm số dòng chứa status=404**
```powershell
  get-content logs/order.log | select-string -pattern "status=404" | Measure-Object -Line
  ```
  - kết quả
Lines Words Characters Property
----- ----- ---------- --------
    4

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)
### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)
```powershell

 New-Item -ItemType File -Name tong_hop.ps1
  cd logs
   New-Item -ItemType File -Name tong_hop.txt
  select-string -pattern "status=500" ./logs/order.log
    select-string "status=404" order.log
  
 ```
 

### Nội dung file logs/tong_hop.txt
```text
"=== BAO CAO SU CO WEDBISE ===" > HOANTHIEN


 select-string "status=404" order.log
order.log:3:2026-06-28 08:08:39 GET /mau-tet-cu status=404
order.log:6:2026-06-28 08:19:12 GET /images/poster-2.jpg status=404
order.log:7:2026-06-28 08:23:23 GET /images/poster-2.jpg status=404
order.log:18:2026-06-28 08:54:24 GET /tin-tuc status=404
 






 select-string -pattern "status=500" ./logs/order.log
logs\order.log:5:2026-06-28 08:15:01 POST /api/thanh-toan status=500
logs\order.log:11:2026-06-28 08:34:07 POST /api/tai-file status=500
logs\order.log:12:2026-06-28 08:37:18 POST /api/dat-in status=500
logs\order.log:14:2026-06-28 08:43:40 POST /api/thanh-toan status=500
logs\order.log:16:2026-06-28 08:49:02 POST /api/thanh-toan status=500
logs\order.log:17:2026-06-28 08:52:13 POST /api/thanh-toan status=500
```
## 4.5. README.md và bảo vệ thông tin bí mật
```
# PrintNow - Xưởng in ấn.
*Website* đặt in ấn **trực tuyến**
| Thư mục | Nội dung |
| --- | --- |
| docs | Tài liệu bàn giao |
| data | Bảng tính đơn in |
| logs | Log truy cập wedsite|

Code block chứa lệnh các lệnh liệt kê
- get-childitem -recurse -force

- [ x ] Sắp xếp thư mục tự dán
- [ ] Upload lên githup

- [ ] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi
.txt)
DB_HOST=localhost
DB_PASSWORD=fake_pass_pn06
STORAGE_KEY=demo_store_pn_0606
TEN_BIEN=
```

## 4.6. Kiểm tra trang web DB_HOST=localhost
## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi
### Bảng lỗi
**### Bảng lỗi**



| Tab phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |

| --- | --- | --- |

| Network | logo.png - 404 Not Found / Failed to load resource | Sửa src="images/logo.png" thành src="images/logo-ai-hub.png" trong web/index.html dòng 10 |

| Console | Failed to load resource: net:ERR\_FILE\_NOT\_FOUND | Sửa đường dẫn ảnh như trên, tải lại trang bằng Ctrl + Shift + R |



Ảnh bằng chứng:

- evidence/network.png

- evidence/console.png



**### Báo cáo lỗi gửi trưởng nhóm (Lỗi Console - Bảng đơn giá không có dữ liệu)**



\*\*Context:\*\* Mở file web/index.html` bằng Chrome, mở DevTools (F12), tải lại trang (F5).

\*\*Expected:\*\* Logo hiển thị và bảng đơn giá model tải đủ dữ liệu.

\*\*Actual:\*\* Logo không hiển thị, bảng đơn giá model trống, tab Console báo lỗi màu đỏ.

\*\*Log:\*\*




