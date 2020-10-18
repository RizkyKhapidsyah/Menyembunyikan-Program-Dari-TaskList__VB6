Attribute VB_Name = "Module1"
'Tekan tombol yang pertama untuk menyembunyikan program 'Anda dan tombol kedua untuk menampilkannya lagi di 'daftar TaskList
'Untuk memeriksa apakah program Anda ada atau tidak di 'daftar TaskList, coba tekan tombol Ctrl+Alt+Del di 'keyboard, lalu lihat pada daftar yang muncul...

Public Const RSP_SIMPLE_SERVICE = 1
Public Const RSP_UNREGISTER_SERVICE = 0

Declare Function GetCurrentProcessId Lib "kernel32" _
() As Long
Declare Function RegisterServiceProcess Lib _
"kernel32" (ByVal dwProcessID As Long, ByVal dwType _
As Long) As Long


