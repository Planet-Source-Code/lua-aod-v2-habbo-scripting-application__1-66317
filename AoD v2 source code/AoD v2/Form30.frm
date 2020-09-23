VERSION 5.00
Begin VB.Form Form30 
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   1200
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   1800
   LinkTopic       =   "Form30"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1200
   ScaleWidth      =   1800
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox Check1 
      Caption         =   "Enable"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   840
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "Trigger word"
      Top             =   480
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Word trigger"
      Top             =   120
      Width           =   1575
   End
End
Attribute VB_Name = "Form30"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
If Check1.Value = 1 And InStr(sckBuff, Text1.Text) Then

Form1.Show

SendKeys Text2.Text
SendKeys "{enter}"
End If
End Sub
