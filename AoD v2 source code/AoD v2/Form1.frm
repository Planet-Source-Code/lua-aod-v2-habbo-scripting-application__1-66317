VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "shdocvw.dll"
Begin VB.Form Form1 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "//AoD Connection"
   ClientHeight    =   9090
   ClientLeft      =   150
   ClientTop       =   720
   ClientWidth     =   12015
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9090
   ScaleWidth      =   12015
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      Height          =   135
      Left            =   12120
      TabIndex        =   14
      Top             =   3000
      Width           =   495
   End
   Begin VB.CommandButton Command8 
      Height          =   375
      Left            =   12120
      Picture         =   "Form1.frx":0442
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   3240
      Width           =   495
   End
   Begin VB.CommandButton Command7 
      Height          =   495
      Left            =   12120
      Picture         =   "Form1.frx":05C8
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   2400
      Width           =   495
   End
   Begin VB.CommandButton Command6 
      Height          =   495
      Left            =   12120
      Picture         =   "Form1.frx":0ABA
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   1800
      Width           =   495
   End
   Begin VB.CommandButton Command5 
      Height          =   495
      Left            =   12120
      Picture         =   "Form1.frx":0F1C
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   1200
      Width           =   495
   End
   Begin VB.CommandButton Command4 
      Height          =   495
      Left            =   12120
      Picture         =   "Form1.frx":1602
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   600
      Width           =   495
   End
   Begin VB.CommandButton Command3 
      Height          =   495
      Left            =   12120
      Picture         =   "Form1.frx":1A34
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   0
      Width           =   495
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   9135
      Left            =   0
      TabIndex        =   7
      Top             =   0
      Visible         =   0   'False
      Width           =   12015
      ExtentX         =   21193
      ExtentY         =   16113
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin MSWinsockLib.Winsock sckServer 
      Left            =   1920
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock sckClient 
      Left            =   2400
      Top             =   120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   5040
      MultiLine       =   -1  'True
      TabIndex        =   6
      Text            =   "Form1.frx":2776
      Top             =   3720
      Visible         =   0   'False
      Width           =   6615
   End
   Begin VB.PictureBox RichTextBox1 
      Height          =   3255
      Left            =   5160
      ScaleHeight     =   3195
      ScaleWidth      =   3435
      TabIndex        =   5
      Top             =   480
      Visible         =   0   'False
      Width           =   3495
   End
   Begin VB.Frame Frame3 
      Caption         =   "Connect/Disconnect"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   120
      TabIndex        =   2
      Top             =   840
      Visible         =   0   'False
      Width           =   2415
      Begin VB.CommandButton Command2 
         Caption         =   "&Disconnect"
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
         Left            =   1200
         TabIndex        =   4
         Top             =   360
         Visible         =   0   'False
         Width           =   1095
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&Connect"
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
         TabIndex        =   3
         Top             =   360
         Visible         =   0   'False
         Width           =   1095
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "&connection set-up"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Visible         =   0   'False
      Width           =   1935
      Begin InetCtlsObjects.Inet Inet1 
         Left            =   2760
         Top             =   0
         _ExtentX        =   1005
         _ExtentY        =   1005
         _Version        =   393216
      End
      Begin VB.TextBox txtHotel 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   1
         Text            =   "www.habbohotel.com"
         Top             =   360
         Width           =   1695
      End
   End
   Begin VB.Image Image2 
      Height          =   9090
      Left            =   0
      Picture         =   "Form1.frx":2DDE
      ToolTipText     =   "Welcome to AoD v2."
      Top             =   0
      Width           =   12000
   End
   Begin VB.Image Image1 
      Height          =   15
      Left            =   360
      Top             =   480
      Width           =   255
   End
   Begin VB.Menu File 
      Caption         =   "&File"
      Begin VB.Menu Connect 
         Caption         =   "Connect"
         Shortcut        =   ^C
      End
      Begin VB.Menu Kill 
         Caption         =   "Kill"
         Shortcut        =   ^K
      End
      Begin VB.Menu hxjhjf 
         Caption         =   "-"
      End
      Begin VB.Menu Packet 
         Caption         =   "Packet log/Inject data"
         Shortcut        =   ^P
      End
      Begin VB.Menu block 
         Caption         =   "-"
      End
      Begin VB.Menu exit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu Functions 
      Caption         =   "Functions"
      Begin VB.Menu clientside 
         Caption         =   "Clientside"
         Begin VB.Menu hobba 
            Caption         =   "Hobba message"
         End
         Begin VB.Menu mod 
            Caption         =   "Mod message"
         End
         Begin VB.Menu hcdays 
            Caption         =   "HC days"
         End
         Begin VB.Menu coins 
            Caption         =   "Coins"
         End
         Begin VB.Menu ad 
            Caption         =   "Ad message"
         End
         Begin VB.Menu paintandfloor 
            Caption         =   "Paint and floor"
         End
         Begin VB.Menu blocky 
            Caption         =   "-"
         End
         Begin VB.Menu freerights 
            Caption         =   "Free rights (for A_)"
         End
      End
      Begin VB.Menu hshshshshs 
         Caption         =   "-"
      End
      Begin VB.Menu Serverside 
         Caption         =   "Serverside/Artmoney"
         Begin VB.Menu tele 
            Caption         =   "_Tele nuke"
         End
         Begin VB.Menu clone 
            Caption         =   "_Clone"
         End
         Begin VB.Menu doorbell 
            Caption         =   "_Doorbell enter"
         End
         Begin VB.Menu pib 
            Caption         =   "_Posters in black"
         End
         Begin VB.Menu prolongmission 
            Caption         =   "_Prolong mission"
         End
         Begin VB.Menu prolong 
            Caption         =   "_Prolong console mission"
         End
         Begin VB.Menu drinks 
            Caption         =   "_Easy drink"
            Begin VB.Menu hamburger 
               Caption         =   "Hamburger (only works in big rooms/public)"
            End
            Begin VB.Menu icecream 
               Caption         =   "Ice-cream"
            End
            Begin VB.Menu Carrot 
               Caption         =   "Carrot"
            End
            Begin VB.Menu Cola 
               Caption         =   "Cola"
            End
            Begin VB.Menu drink 
               Caption         =   "Invisible drink"
            End
            Begin VB.Menu blocker2 
               Caption         =   "-"
            End
            Begin VB.Menu invisibleplzs 
               Caption         =   "Invisible"
            End
         End
         Begin VB.Menu stop 
            Caption         =   "_Stop action"
            Begin VB.Menu lolsit 
               Caption         =   "Sit"
            End
            Begin VB.Menu Lay 
               Caption         =   "Lay"
            End
         End
      End
      Begin VB.Menu gfdss 
         Caption         =   "-"
      End
      Begin VB.Menu misc 
         Caption         =   "Misc"
         Begin VB.Menu cam 
            Caption         =   "Get cam"
         End
         Begin VB.Menu chooser 
            Caption         =   "Get :chooser"
         End
         Begin VB.Menu furni 
            Caption         =   "Get :furni"
         End
         Begin VB.Menu kdhfhfh 
            Caption         =   "-"
         End
         Begin VB.Menu fuse 
            Caption         =   "Fuse injection"
         End
         Begin VB.Menu hotelview 
            Caption         =   "Hotel view"
         End
         Begin VB.Menu blocker1 
            Caption         =   "-"
         End
      End
   End
   Begin VB.Menu about 
      Caption         =   "About"
      WindowList      =   -1  'True
      Begin VB.Menu aod 
         Caption         =   "AoD"
      End
      Begin VB.Menu proggy 
         Caption         =   "Program"
      End
      Begin VB.Menu kjkjkjk 
         Caption         =   "-"
      End
      Begin VB.Menu rooms 
         Caption         =   "Rooms (Big pictures)"
      End
   End
   Begin VB.Menu special 
      Caption         =   "Special"
      Visible         =   0   'False
      Begin VB.Menu shockwaveunban 
         Caption         =   "Shockwave unban"
      End
      Begin VB.Menu flooder 
         Caption         =   "Macro flooder"
      End
      Begin VB.Menu aboutlol 
         Caption         =   "About buttons"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Connection by Lua
Public sw1 As String
Public sw2 As String
Public sw3 As String
Public sw4 As String
Public sw5 As String
Public sw6 As String
Public LoaderDCR As String

Private Sub bringback_Click()
Form1.Height = 9750
File.Visible = True
Edit.Visible = True
Functions.Visible = True
about.Visible = True
End Sub

Private Sub aboutlol_Click()
MsgBox ("The buttons over there > are quick ways of commands.")
End Sub

Private Sub ad_Click()
Form9.Show
End Sub

Private Sub admin_Click()
Form22.Show
End Sub

Private Sub aod_Click()
Form15.Show
End Sub

Private Sub cam_Click()
sckClient.SendData "BLSI-55112730S5511273camera"
End Sub

Private Sub Carrot_Click()
Form1.sckClient.SendData Form4.Text3.Text
End Sub

Private Sub chatlog_Click()
Form23.Show
End Sub

Private Sub chooser_Click()
sckClient.SendData "@Bfuse_habbo_chooser"
End Sub

Private Sub clone_Click()
Form21.Show
End Sub

Private Sub coins_Click()
Form8.Show
End Sub

Private Sub Cola_Click()
Form1.sckClient.SendData Form4.Text2.Text
End Sub

Private Sub Command3_Click()
Unload Me
End Sub

Private Sub Command4_Click()
toolbar_Click
End Sub

Private Sub Command5_Click()
WebBrowser1.Navigate App.Path & "http://www.habbo.com/client.action"
WebBrowser1.Visible = True
End Sub

Private Sub Command6_Click()
Kill_Click
End Sub

Private Sub Command8_Click()
WebBrowser1.Navigate App.Path & "http://www.script0rx.pdnr.com"
WebBrowser1.Visible = True
End Sub

Private Sub Connect_Click()
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

Private Sub customfilter_Click()
Form32.Show
End Sub

Private Sub dance_Click()
dance.Checked = True
End Sub

Private Sub datasned_Click()
datasned.Checked = True

Form3.Hide
End Sub

Private Sub customfilta_Click()
Form32.Show
If Form32.Check1.Value = 1 Then
sckBuffer = Replace(sckBuffer, Form32.Text1.Text, Form32.Text2.Text)
End If
End Sub

Private Sub doorbell_Click()
Form20.Show
End Sub

Private Sub drink_Click()
Form1.sckClient.SendData Form4.Text1.Text
End Sub

Private Sub exit_Click()
Command3_Click
End Sub

Private Sub Form_Load()
Form2.Text1.Text = Text1.Text ' transfer the loader's html into a richtextbox
End Sub

Private Sub freerights_Click()
sckClient.SendData "@o"
End Sub

Private Sub furni_Click()
sckClient.SendData "@Bfuse_furni_chooser"
End Sub

Private Sub furniturelol_Click()
Form24.Show
End Sub

Private Sub fuse_Click()
Form12.Show
End Sub

Private Sub hamburger_Click()
sckClient.SendData Form4.Text5.Text
End Sub

Private Sub hcdays_Click()
Form7.Show
End Sub

Private Sub hobba_Click()
Form5.Show
End Sub

Private Sub hotelview_Click()
sckClient.SendData "@R"
End Sub

Private Sub icecream_Click()
sckClient.SendData Form4.Text4.Text
End Sub

Private Sub kickheader_Click()
Form14.Show
End Sub

Private Sub invisibleplzs_Click()
sckClient.SendData "@\i:666" & Chr(13) & "n:28" & Chr(9) & "90000" & Chr(13) & "f:295102600118022285" & Chr(13) & "l:7 7 0.0" & Chr(13) & "c:Kick me for a drink-to-mouth. (EDIT AY TO AY)" & Chr(13) & "s:m" & Chr(1)
End Sub

Private Sub Kill_Click()
Command2.Enabled = False
Command1.Enabled = True
sckClient.Close
sckServer.Close
Inet1.Cancel
WebBrowser1.Navigate "about:blank"
WebBrowser1.Visible = False
End Sub

Private Sub Lay_Click()
sckClient.SendData Form4.Text7.Text
End Sub

Private Sub lolsit_Click()
sckClient.SendData Form4.Text6.Text
End Sub

Private Sub mod_Click()
Form6.Show
End Sub

Private Sub noconnection_Click()
noconnection.Checked = True
Module1.UpdateStatus (PacketStatusAsString)
On Error Resume Next
If PacketStatus = "lolz" Then
   Form1.sckClient.SendData "@amod_warn/[AoD] Welcome to habbo. [AoD]" & vbCrLf & "- Lua "
   End If
End Sub

Private Sub nohobba_Click()
nohobba.Checked = True
End Sub

Private Sub Packet_Click()
Form3.Show
End Sub

Private Sub paintandfloor_Click()
Form10.Show
End Sub

Private Sub pib_Click()
Form27.Show
End Sub

Private Sub proggy_Click()
Form17.Show
End Sub

Private Sub room_Click()
Form19.Show
End Sub

Private Sub prolong_Click()
Form33.Show
End Sub

Private Sub prolongmission_Click()
Form25.Show
End Sub

Private Sub remoteuser_Click()
Form33.Show
End Sub

Private Sub roomheader_Click()
Form18.Show
End Sub

Private Sub rooms_Click()
Form16.Show
End Sub

Private Sub sckclient_Close()
On Error Resume Next
sckClient.Close
sckClient.Listen
sckServer.Close
End Sub
Private Sub sckclient_ConnectionRequest(ByVal requestID As Long)
On Error Resume Next
sckServer.Close
sckServer.Connect
Do Until sckServer.State = sckConnected
DoEvents
Loop
sckClient.Close
sckClient.Accept requestID
End Sub
Private Sub sckClient_DataArrival(ByVal bytesTotal As Long)
On Error Resume Next
Dim sData As String
sckClient.GetData sData
Form3.txtPacketLog.Text = sData & vbNewLine & Form3.txtPacketLog.Text
sckServer.SendData sData
Debug.Print sData
End Sub
Private Sub sckserver_Close()
On Error Resume Next
sckClient.Close
sckClient.Listen
sckServer.Close
End Sub
Private Sub sckserver_DataArrival(ByVal bytesTotal As Long)
On Error Resume Next
Dim sckBuff As String
On Error Resume Next
sckServer.GetData sckBuff
Form3.txtPacketLog.Text = sckBuff & vbNewLine & Form3.txtPacketLog.Text
sckClient.SendData sckBuff
Debug.Print sckBuff
Indentify = Left(sckBuff, 2)
UpdateStatus (Indentify)
End Sub

Private Sub statsonhabbo_Click()
Form13.Show
End Sub

Private Sub sendpic_Click()
Form28.Show
End Sub

Private Sub stickyheader_Click()
Form26.Show
End Sub

Private Sub tele_Click()
Form11.Show
End Sub

Private Sub toolbar_Click()
File.Visible = False
Edit.Visible = False
Functions.Visible = False
about.Visible = False
Form1.Height = 9450
statsonhabbo.Visible = False
special.Visible = False
End Sub

Private Sub tradeheader_Click()
Form29.Show
End Sub

Private Sub tradehobba_Click()
tradehobba.Checked = True
End Sub

Private Sub wave_Click()
wave.Checked = True
End Sub

Private Sub when_Click()
Form31.Show
End Sub

Private Sub whensomedays_Click()
Form30.Show
End Sub


