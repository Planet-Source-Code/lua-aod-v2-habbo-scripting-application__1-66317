VERSION 5.00
Begin VB.Form Form23 
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   1515
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   5490
   LinkTopic       =   "Form23"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1515
   ScaleWidth      =   5490
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Save"
      Height          =   255
      Left            =   1080
      TabIndex        =   3
      Top             =   1200
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   3000
      TabIndex        =   2
      Text            =   "0"
      Top             =   1200
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Clear"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   1200
      Width           =   855
   End
   Begin VB.ListBox List1 
      Height          =   1035
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5295
   End
End
Attribute VB_Name = "Form23"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
lstChatLog.Clear
End Sub

Private Sub Command2_Click()
On Error Resume Next
GuardarChat App.Path & "\Chat Log.html", List1
End Sub

Private Sub Form_Load()
MsgBox ("Chatlog might not work...")
End Sub

Public Sub GuardarChat(sLocation As String, List1 As ListBox)
'Save chat function
On Error Resume Next
Dim sCurrent As String
Dim I As Integer
Open sLocation For Output As #1
I = 0
Do Until I = List1.ListCount
sCurrent = List1.List(I)
Print #1, sCurrent & "<br>"
I = I + 1
Loop
Close #1
End Sub
