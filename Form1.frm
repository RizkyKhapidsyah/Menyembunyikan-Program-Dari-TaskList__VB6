VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Menyembunyikan Program dari TaskList"
   ClientHeight    =   2565
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5025
   LinkTopic       =   "Form1"
   ScaleHeight     =   2565
   ScaleWidth      =   5025
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Tampilkan"
      Height          =   495
      Left            =   2520
      TabIndex        =   1
      Top             =   1680
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Sembunyikan"
      Height          =   495
      Left            =   720
      TabIndex        =   0
      Top             =   1680
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Sub HideApp(Hide As Boolean)
    Dim ProcessID As Long
    ProcessID = GetCurrentProcessId()

    If Hide Then
        retval = RegisterServiceProcess(ProcessID, _
                 RSP_SIMPLE_SERVICE)
    Else
        retval = RegisterServiceProcess(ProcessID, _
                 RSP_UNREGISTER_SERVICE)
    End If
End Sub

Private Sub Command1_Click()
    HideApp (True)
End Sub

Private Sub Command2_Click()
    HideApp (False)
End Sub


