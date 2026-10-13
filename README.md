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

## Cài đặt

1. Tải repository bằng nút **Code → Download ZIP** hoặc clone bằng Git.
2. Giải nén repository.
3. Mở PowerShell trong thư mục repository.
4. Chạy lệnh sau, thay đường dẫn bằng thư mục game của bạn:

   ```powershell
   .\\scripts\\install.ps1 -GamePath "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Kingdom Rush Vengeance"
   ```

5. Khởi động game và chọn ngôn ngữ **Español**.

> Game chưa có mã ngôn ngữ `vi`, vì vậy bản Việt hóa sử dụng ô ngôn ngữ Spanish để nạp file dịch.

## Khôi phục bản gốc

Script cài đặt tự tạo bản sao lưu trước khi thay đổi. Để khôi phục:

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
scripts/
├── install.ps1               # Cài đặt bản Việt hóa
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
