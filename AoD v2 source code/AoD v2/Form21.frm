VERSION 5.00
Begin VB.Form Form21 
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   1770
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   3570
   LinkTopic       =   "Form21"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1770
   ScaleWidth      =   3570
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text4 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   120
      TabIndex        =   4
      Text            =   "mission"
      Top             =   1080
      Width           =   3375
   End
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   120
      TabIndex        =   3
      Text            =   "name"
      Top             =   0
      Width           =   3375
   End
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   120
      TabIndex        =   2
      Text            =   "sex"
      Top             =   720
      Width           =   3375
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Go"
      BeginProperty Font 
         Name            =   "Arial"
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
      Top             =   1440
      Width           =   3375
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "Form21.frx":0000
      Top             =   360
      Width           =   3375
   End
End
Attribute VB_Name = "Form21"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.sckClient.SendData "@Ename=" & Text3.Text & Chr(13) & "figure=" & Text1.Text & Chr(13) & "sex=" & Text2.Text & Chr(13) & "customData=" & Text4.Text & Chr(13) & "photo_film=0" & Chr(13) & "directMail=1" & Chr(1) & "Bg" & Chr(1)
End Sub
