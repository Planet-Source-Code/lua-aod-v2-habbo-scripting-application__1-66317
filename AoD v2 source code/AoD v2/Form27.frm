VERSION 5.00
Begin VB.Form Form27 
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   2220
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   1980
   LinkTopic       =   "Form27"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2220
   ScaleWidth      =   1980
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text5 
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
      TabIndex        =   6
      Text            =   "Wall parts"
      Top             =   1200
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Send poster"
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
      TabIndex        =   5
      Top             =   1920
      Width           =   1815
   End
   Begin VB.TextBox Text4 
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
      TabIndex        =   3
      Text            =   "Rotation"
      Top             =   1560
      Width           =   1215
   End
   Begin VB.TextBox Text3 
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
      TabIndex        =   2
      Text            =   "Y co-ord"
      Top             =   840
      Width           =   1215
   End
   Begin VB.TextBox Text2 
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
      TabIndex        =   1
      Text            =   "X co-ord"
      Top             =   480
      Width           =   1215
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
      Text            =   "Poster ID"
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "A_ - AZ"
      BeginProperty Font 
         Name            =   "ADMUI3Sm"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1440
      TabIndex        =   4
      Top             =   120
      Width           =   855
   End
End
Attribute VB_Name = "Form27"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.sckClient.SendData "@\i:666" & Chr(13) & "n:" & Text1.Text & " " & ":w=" & Text5.Text & " " & "l=" & Text2.Text & "," & Text3.Text & " " & Text4.Text & Chr(13) & "f:295102600118022285" & Chr(13) & "l:7 7 0.0" & Chr(13) & "c:Kick me to inject the poster data." & Chr(13) & "s:m" & Chr(1)
End Sub
