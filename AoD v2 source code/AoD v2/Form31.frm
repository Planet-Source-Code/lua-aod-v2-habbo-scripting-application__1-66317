VERSION 5.00
Begin VB.Form Form31 
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   810
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   1890
   LinkTopic       =   "Form31"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   810
   ScaleWidth      =   1890
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox Check1 
      Caption         =   "Enable"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Message"
      Top             =   120
      Width           =   1695
   End
End
Attribute VB_Name = "Form31"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
If Check1.Value = 1 And InStr(sckBuff, "@\") Then
User = Split(sckBuff, "n:")(1)
User = Split(User, Chr(13))(0)

Form1.Show

SendKeys "Welcome, " & User & ", " & Text1.Text
SendKeys "{enter}"
End If
End Sub
