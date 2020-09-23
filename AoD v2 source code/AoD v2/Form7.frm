VERSION 5.00
Begin VB.Form Form7 
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   825
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   1845
   LinkTopic       =   "Form7"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   825
   ScaleWidth      =   1845
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Text            =   "@Gclub_habbo	active	"
      Top             =   960
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Go"
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
      TabIndex        =   1
      Top             =   480
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "ADMUI3Sm"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Amount of hc days"
      Top             =   120
      Width           =   1695
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.sckClient.SendData Text2.Text & Text1.Text & ""
Form1.sckClient.SendData "BKYou have " & Text1.Text & " hc days." & ""
End Sub
