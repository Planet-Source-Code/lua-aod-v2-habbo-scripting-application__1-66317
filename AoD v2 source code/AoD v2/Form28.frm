VERSION 5.00
Begin VB.Form Form28 
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   795
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   3795
   LinkTopic       =   "Form28"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   795
   ScaleWidth      =   3795
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Send"
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
      Width           =   3615
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "URL of pic"
      Top             =   120
      Width           =   3615
   End
End
Attribute VB_Name = "Form28"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.sckClient.SendData "CP" & Text1.Text & Chr(9) & Text1.Text & Chr(1)
End Sub
