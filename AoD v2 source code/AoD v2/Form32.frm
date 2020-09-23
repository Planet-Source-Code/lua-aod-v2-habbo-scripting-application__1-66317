VERSION 5.00
Begin VB.Form Form32 
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   1155
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   2340
   LinkTopic       =   "Form32"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1155
   ScaleWidth      =   2340
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox Check1 
      Caption         =   "Enable custom filter"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   840
      Value           =   1  'Checked
      Width           =   2175
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "????"
      Top             =   480
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "haha"
      Top             =   120
      Width           =   2175
   End
End
Attribute VB_Name = "Form32"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
