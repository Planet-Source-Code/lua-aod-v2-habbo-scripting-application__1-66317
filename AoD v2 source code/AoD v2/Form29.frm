VERSION 5.00
Begin VB.Form Form29 
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   1545
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   2970
   LinkTopic       =   "Form29"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1545
   ScaleWidth      =   2970
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Send data"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   1200
      Width           =   2775
   End
   Begin VB.TextBox Text1 
      Height          =   1005
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "Form29.frx":0000
      Top             =   120
      Width           =   2775
   End
End
Attribute VB_Name = "Form29"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.sckClient.SendData Text1.Text
End Sub
