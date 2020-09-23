VERSION 5.00
Begin VB.Form Form24 
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   3330
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   1725
   LinkTopic       =   "Form24"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3330
   ScaleWidth      =   1725
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "inject furniture"
      BeginProperty Font 
         Name            =   "ADMUI3Sm"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   3000
      Width           =   1455
   End
   Begin VB.TextBox Text8 
      Height          =   285
      Left            =   120
      TabIndex        =   7
      Text            =   "hex colour"
      Top             =   2640
      Width           =   1455
   End
   Begin VB.TextBox Text7 
      Height          =   285
      Left            =   120
      TabIndex        =   6
      Text            =   "Furniture height"
      Top             =   2280
      Width           =   1455
   End
   Begin VB.TextBox Text6 
      Height          =   285
      Left            =   120
      TabIndex        =   5
      Text            =   "Right/left width"
      Top             =   1920
      Width           =   1455
   End
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   120
      TabIndex        =   4
      Text            =   "Left/right width"
      Top             =   1560
      Width           =   1455
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   120
      TabIndex        =   3
      Text            =   "Right/left co-ords"
      Top             =   1200
      Width           =   1455
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   120
      TabIndex        =   2
      Text            =   "Left/right co-ords"
      Top             =   840
      Width           =   1455
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "Furni sprite"
      Top             =   480
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Furni ID"
      Top             =   120
      Width           =   855
   End
End
Attribute VB_Name = "Form24"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error Resume Next
Form1.sckClient.SendData "@`I" & Text1.Text & Chr(2) & Text2.Text & Chr(2) & Text3.Text & Text4.Text & Text5.Text & Text6.Text & Text7.Text & Text8.Text & Chr(2) & Text9.Text & Chr(2) & Chr(2) & "H" & Chr(2) & Chr(1)
End Sub
