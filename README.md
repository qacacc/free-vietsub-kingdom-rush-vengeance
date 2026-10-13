# Việt hóa Kingdom Rush Vengeance

Bản Việt hóa cộng đồng cho **Kingdom Rush Vengeance – Tower Defense** trên PC/Steam.

Mục tiêu của dự án là cung cấp bản dịch tiếng Việt dễ đọc, thống nhất thuật ngữ và có thể cài đặt hoặc khôi phục an toàn mà không chỉnh sửa executable của game.

## Tính năng

- Việt hóa giao diện, hướng dẫn, tháp, anh hùng, kẻ địch, kỹ năng và hội thoại.
- Giữ nguyên khóa dữ liệu, biến định dạng và cấu trúc file gốc.
- Có script cài đặt, khôi phục và kiểm tra cú pháp.
- Không phân phối executable, DLL hoặc toàn bộ tài nguyên gốc của game.

## Yêu cầu

- Kingdom Rush Vengeance bản PC/Steam.
- Windows PowerShell 5.1 trở lên.
- Quyền ghi vào thư mục cài đặt game.

## Cài đặt nhanh

1. Nhấn **Code → Download ZIP** ở đầu trang GitHub.
2. Giải nén file ZIP.
3. Mở thư mục vừa giải nén và chạy `install-vietnamese.bat`.
4. Khởi động game và chọn ngôn ngữ **Español**.

Script sẽ tự tìm các vị trí Steam phổ biến và tạo bản sao lưu trước khi cài đặt. Nếu không tìm thấy game, script sẽ yêu cầu bạn nhập đường dẫn thư mục game.

### Cài đặt bằng PowerShell

Nếu muốn chỉ định đường dẫn thủ công:

```powershell
.\\scripts\\install.ps1 -GamePath "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Kingdom Rush Vengeance"
```

> Game chưa có mã ngôn ngữ `vi`, vì vậy bản Việt hóa sử dụng ô ngôn ngữ Spanish để nạp file dịch.

## Khôi phục bản gốc

Bạn có thể chạy `restore-original.bat` để khôi phục bằng một cú nhấp.

Hoặc dùng PowerShell:

```powershell
.\\scripts\\restore.ps1 -GamePath "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Kingdom Rush Vengeance"
```

Bạn cũng có thể khôi phục thủ công bằng file `Localized_sp.before-vietnamese.bak` trong thư mục `KR4_PC\\Localization`.

## Kiểm tra bản dịch

Lệnh kiểm tra số dòng, số khóa và các dòng không đúng định dạng:

```powershell
.\\scripts\\check-localization.ps1 -GamePath "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Kingdom Rush Vengeance"
```

Kết quả hợp lệ cần có `InvalidLines: 0`.

## Cấu trúc repository

```text
patch/
└── Localized_sp              # File bản dịch dùng trong game
install-vietnamese.bat        # Cài đặt nhanh bằng cách nhấp đúp
restore-original.bat          # Khôi phục nhanh bằng cách nhấp đúp
scripts/
├── install-auto.ps1          # Tự tìm thư mục game
├── install.ps1               # Cài đặt bản Việt hóa
├── restore-auto.ps1          # Tự tìm bản sao lưu
├── restore.ps1               # Khôi phục bản gốc
└── check-localization.ps1    # Kiểm tra cấu trúc file
```

## Đóng góp

Bạn có thể mở Issue hoặc Pull Request để báo lỗi dịch, đề xuất thuật ngữ hoặc cải thiện câu thoại. Khi đóng góp, vui lòng:

- Giữ nguyên tên khóa và biến định dạng.
- Không thay đổi số liệu gameplay.
- Ưu tiên câu dịch tự nhiên, ngắn gọn và phù hợp ngữ cảnh.
- Kiểm tra file bằng `check-localization.ps1` trước khi gửi.

## Bản quyền

Bản dịch và script trong repository này được phát hành theo giấy phép MIT ở mức mã nguồn đóng góp. Kingdom Rush Vengeance, executable, hình ảnh, âm thanh, font và các tài sản liên quan thuộc về Ironhide Game Studio.

Repository này không nhằm thay thế việc mua hoặc sở hữu hợp pháp trò chơi.
