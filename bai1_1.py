import tkinter as tk

def submit():
    name = entry_name.get()
    phone = entry_phone.get()
    address = entry_address.get()
    print(f"Tên: {name}")
    print(f"Số điện thoại: {phone}")
    print(f"Địa chỉ: {address}")

# Tạo cửa sổ chính
root = tk.Tk()
root.title("Thông tin cá nhân")

# Tạo nhãn cho các trường
label_name = tk.Label(root, text="Tên:")
label_name.grid(row=0, column=0, padx=10, pady=10)

label_phone = tk.Label(root, text="Số điện thoại:")
label_phone.grid(row=1, column=0, padx=10, pady=10)

label_address = tk.Label(root, text="Địa chỉ:")
label_address.grid(row=2, column=0, padx=10, pady=10)

# Tạo các ô nhập liệu
entry_name = tk.Entry(root)
entry_name.grid(row=0, column=1, padx=10, pady=10)

entry_phone = tk.Entry(root)
entry_phone.grid(row=1, column=1, padx=10, pady=10)

entry_address = tk.Entry(root)
entry_address.grid(row=2, column=1, padx=10, pady=10)

# Tạo nút "Gửi"
submit_button = tk.Button(root, text="Gửi", command=submit)
submit_button.grid(row=3, column=0, columnspan=2, pady=10)

# Hiển thị cửa sổ
root.mainloop()

