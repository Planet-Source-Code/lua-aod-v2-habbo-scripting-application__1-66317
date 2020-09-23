VERSION 5.00
Begin VB.Form Form26 
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   2400
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   2115
   LinkTopic       =   "Form26"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2400
   ScaleWidth      =   2115
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text4 
      Height          =   735
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   4
      Text            =   "Form26.frx":0000
      Top             =   1200
      Width           =   1335
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   120
      TabIndex        =   3
      Text            =   "rotation"
      Top             =   840
      Width           =   1335
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   2
      Text            =   "co-ords"
      Top             =   480
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "wall parts"
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Go"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   2040
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "AS - **"
      BeginProperty Font 
         Name            =   "ADMUI3Sm"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1560
      TabIndex        =   5
      Top             =   120
      Width           =   975
   End
End
Attribute VB_Name = "Form26"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.sckClient.SendData "AS" & Text1.Text & Chr(9) & "post.it" & Chr(9) & " " & Chr(9) & ":w=" & Text2.Text & " " & "l=" & Text3.Text & " " & Text4.Text & Chr(9) & "ffffff" & Chr(1)
End Sub
