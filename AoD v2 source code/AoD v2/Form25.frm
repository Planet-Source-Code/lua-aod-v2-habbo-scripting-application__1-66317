VERSION 5.00
Begin VB.Form Form25 
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   810
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   2685
   LinkTopic       =   "Form25"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   810
   ScaleWidth      =   2685
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Prolong"
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
      Width           =   2535
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
      Text            =   "Mission"
      Top             =   120
      Width           =   2535
   End
End
Attribute VB_Name = "Form25"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.sckClient.SendData "@Ename=Lua" & Chr(13) & "figure=2951021525190222851410001" & Chr(13) & "sex=m" & Chr(13) & "customData=_" & Text1.Text & Chr(13) & "ph_tickets=0" & Chr(13) & "ph_figure=" & Chr(13) & "photo_film=0" & Chr(13) & "directMail=1" & Chr(13) & Chr(1)
End Sub
