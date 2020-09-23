VERSION 5.00
Begin VB.Form Form16 
   BackColor       =   &H00000000&
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   8130
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   10875
   LinkTopic       =   "Form16"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8130
   ScaleWidth      =   10875
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Image Image3 
      Height          =   7290
      Left            =   0
      Picture         =   "Form16.frx":0000
      Top             =   0
      Visible         =   0   'False
      Width           =   10800
   End
   Begin VB.Image Image1 
      Height          =   7785
      Left            =   0
      Picture         =   "Form16.frx":1004E2
      Top             =   0
      Width           =   10875
   End
   Begin VB.Image Image2 
      Height          =   2055
      Left            =   0
      Top             =   120
      Width           =   2895
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   ">>Next"
      BeginProperty Font 
         Name            =   "Volter (Goldfish)"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   7800
      Width           =   1455
   End
End
Attribute VB_Name = "Form16"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Label1_Click()
Image3.Visible = True
Image1.Visible = False
End Sub
