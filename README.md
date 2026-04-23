# Giaoducsom
Tạo báo cáo cho giáo dục sớm

## Tự động push sau khi commit

Repo này có sẵn Git hook `post-commit` để tự động chạy:

```bash
git push origin <current-branch>
```

### Bật tự động push

```bash
bash scripts/setup-auto-push.sh
```

Lệnh trên sẽ cấu hình:

- `core.hooksPath=.githooks`
- dùng `.githooks/post-commit` sau mỗi lần commit thành công.

### Tắt tạm thời cho một lần commit

```bash
AUTO_PUSH_DISABLED=1 git commit -m "your message"
```
