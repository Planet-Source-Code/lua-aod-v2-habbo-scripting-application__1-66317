VERSION 5.00
Begin VB.Form Form13 
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   3165
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   2145
   BeginProperty Font 
      Name            =   "Volter (Goldfish)"
      Size            =   6.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form13"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3165
   ScaleWidth      =   2145
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text8 
      Height          =   255
      Left            =   840
      TabIndex        =   17
      Top             =   1920
      Width           =   1215
   End
   Begin VB.TextBox Text7 
      Height          =   255
      Left            =   3480
      TabIndex        =   15
      Top             =   2160
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.TextBox Text6 
      Height          =   225
      Left            =   3480
      TabIndex        =   13
      Top             =   2520
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.TextBox Text5 
      Height          =   255
      Left            =   840
      TabIndex        =   11
      Top             =   1560
      Width           =   1215
   End
   Begin VB.TextBox Text4 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   840
      TabIndex        =   7
      Top             =   1200
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   840
      TabIndex        =   6
      Top             =   840
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   3480
      TabIndex        =   3
      Top             =   2760
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   840
      TabIndex        =   1
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label Label11 
      Caption         =   "[Disconnected]"
      Height          =   255
      Left            =   120
      TabIndex        =   18
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Label Label10 
      Caption         =   "Film:"
      Height          =   255
      Left            =   120
      TabIndex        =   16
      Top             =   1920
      Width           =   375
   End
   Begin VB.Label Label9 
      Caption         =   "acess count"
      Height          =   255
      Left            =   2640
      TabIndex        =   14
      Top             =   2160
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label Label8 
      Caption         =   "BirthdayL"
      Height          =   255
      Left            =   2760
      TabIndex        =   12
      Top             =   2400
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label Label7 
      Caption         =   "Tickets:"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   1560
      Width           =   615
   End
   Begin VB.Label Label6 
      Caption         =   "IP:"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   1200
      Width           =   615
   End
   Begin VB.Label Label5 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   1200
      Width           =   615
   End
   Begin VB.Label Label4 
      Caption         =   "Figure:"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   840
      Width           =   615
   End
   Begin VB.Label Label3 
      Caption         =   "Email:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2760
      TabIndex        =   4
      Top             =   2760
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label Label2 
      Caption         =   "Name:"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   480
      Width           =   615
   End
   Begin VB.Label Label1 
      Caption         =   "Stats."
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1095
   End
End
Attribute VB_Name = "Form13"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
