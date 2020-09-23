VERSION 5.00
Begin VB.Form Form18 
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   1035
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   3195
   LinkTopic       =   "Form18"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1035
   ScaleWidth      =   3195
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Go"
      BeginProperty Font 
         Name            =   "Volter (Goldfish)"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   720
      Width           =   3015
   End
   Begin VB.TextBox Text1 
      Height          =   525
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "Form18.frx":0000
      Top             =   120
      Width           =   3015
   End
End
Attribute VB_Name = "Form18"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.sckClient.SendData Text1.Text
End Sub
