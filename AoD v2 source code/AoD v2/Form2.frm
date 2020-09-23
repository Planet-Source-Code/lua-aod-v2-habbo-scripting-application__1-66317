VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "//connect"
   ClientHeight    =   840
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   2175
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   840
   ScaleWidth      =   2175
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   2535
      Left            =   2640
      TabIndex        =   2
      Text            =   "Text1"
      Top             =   360
      Width           =   2535
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
      Top             =   480
      Width           =   1935
   End
   Begin VB.TextBox txtHotel 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "www.habbohotel.com"
      Top             =   120
      Width           =   1935
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error Resume Next
Dim HotelReload As String
Dim tmp

Command1.Enabled = False
Command2.Enabled = True

Form1.sckClient.Close
Form1.sckServer.Close

Form2.Text1.Text = Form1.Text1.Text

HotelReload = "http://" & txtHotel.Text & "/client_js.action"

Form1.Inet1.URL = "http://" & txtHotel.Text & "/client_js.action"
codes = Form1.Inet1.OpenURL


tmp = Split(codes, "<param name=\" & Chr(34) & "src\" & Chr(34) & " value=\" & Chr(34))(1)
LoaderDCR = Split(tmp, "\" & Chr(34) & ">" & Chr(34) & ");")(0)

tmp = Split(codes, "<param name=\" & Chr(34) & "sw2\" & Chr(34) & " value=\" & Chr(34))(1)
sw2 = Split(tmp, "\" & Chr(34) & ">" & Chr(34) & ");")(0)
    
tmp = Split(codes, "<param name=\" & Chr(34) & "sw4\" & Chr(34) & " value=\" & Chr(34))(1)
sw4 = Split(tmp, "\" & Chr(34) & ">" & Chr(34) & ");")(0)
    
tmp = Split(codes, "<param name=\" & Chr(34) & "sw5\" & Chr(34) & " value=\" & Chr(34))(1)
sw5 = Split(tmp, "\" & Chr(34) & ">" & Chr(34) & ");")(0)
       
tmp = Split(codes, "<param name=\" & Chr(34) & "sw6\" & Chr(34) & " value=\" & Chr(34))(1)
sw6 = Split(tmp, "\" & Chr(34) & ">" & Chr(34) & ");")(0)
    
sw2 = sw2 & "end"
tmpport = Split(sw2, "connection.info.port=")(1)
InfoPort = Split(tmpport, "end")(0)
    
tmphost = Split(sw2, "connection.info.host=")(1)
InfoServer = Split(tmphost, ";")(0)
    
sw2 = Replace(sw2, "connection.info.host=" & InfoServer, "connection.info.host=" & sckServer.LocalIP)
sw2 = Replace(sw2, "end", "")
 
Form2.Text1.Text = Replace(Form2.Text1.Text, "HabboDCR", LoaderDCR)
Form2.Text1.Text = Replace(Form2.Text1.Text, "HabboInfoServer", sw2)
Form2.Text1.Text = Replace(Form2.Text1.Text, "HabboBinaryServer", sw4)
Form2.Text1.Text = Replace(Form2.Text1.Text, "ExternalVariables", sw5)
Form2.Text1.Text = Replace(Form2.Text1.Text, "ExternalTexts", sw6)
Form2.Text1.Text = Replace(Form2.Text1.Text, "http://www.habbo.com/client.action", HotelReload)
 
 
Form1.sckServer.RemoteHost = InfoServer
Form1.sckServer.RemotePort = InfoPort
Form1.sckClient.LocalPort = InfoPort
Form1.sckClient.Listen
LoopBackPort = InfoPort



Open App.Path & "\" & "loader.html" For Output As #1
Print #1, Form2.Text1.Text
Close #1

Form1.WebBrowser1.Navigate App.Path & "\loader.html"
Form1.WebBrowser1.Visible = True

End Sub

Private Sub Command2_Click()
Command2.Enabled = False
Command1.Enabled = True
Form1.sckClient.Close
Form1.sckServer.Close
Form1.Inet1.Cancel
Form1.WebBrowser1.Navigate "about:blank"
Form1.WebBrowser1.Visible = False
End Sub

Private Sub Form_Load()
Form1.Show
End Sub
