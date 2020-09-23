VERSION 5.00
Begin VB.Form Form3 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "//packet send"
   ClientHeight    =   3225
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   5715
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3225
   ScaleWidth      =   5715
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      Height          =   525
      Left            =   120
      TabIndex        =   3
      Text            =   "Data to send comes here."
      Top             =   2280
      Width           =   5535
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Clear"
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
      Left            =   5040
      TabIndex        =   2
      Top             =   2880
      Width           =   495
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Send data"
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
      Top             =   2880
      Width           =   975
   End
   Begin VB.TextBox txtPacketLog 
      Appearance      =   0  'Flat
      Height          =   2055
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   120
      Width           =   5535
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.sckClient.SendData Text1.Text
End Sub

Private Sub Command2_Click()
txtPacketLog.Text = ""
Text1.Text = ""
End Sub

