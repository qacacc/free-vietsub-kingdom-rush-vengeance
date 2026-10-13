# Việt hóa Kingdom Rush Vengeance

Bản Việt hóa cộng đồng cho phiên bản PC/Steam của **Kingdom Rush Vengeance**.

## Cài đặt

1. Sao lưu thư mục game.
2. Chạy PowerShell với file `scripts/install.ps1` hoặc chép `patch/Localized_sp` vào:

   `KR4_PC/Localization/Localized_sp`

3. Trong game chọn ngôn ngữ **Español**. Game dùng ô ngôn ngữ này để nạp bản Việt hóa.

## Khôi phục

Chạy `scripts/restore.ps1` trong thư mục game. Script sẽ khôi phục file `Localized_sp` từ bản sao lưu nếu có.

## Kiểm tra

Chạy `scripts/check-localization.ps1 -GamePath "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Kingdom Rush Vengeance"` để kiểm tra số dòng, khóa và cú pháp cơ bản.

## Phạm vi phát hành

Repository chỉ chứa bản dịch và script hỗ trợ. Không phát hành executable, DLL, tài nguyên gốc của game hoặc font thương mại của bên thứ ba.

Kingdom Rush Vengeance và các tài sản liên quan thuộc về Ironhide Game Studio.
