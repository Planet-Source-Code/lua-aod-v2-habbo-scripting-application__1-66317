Attribute VB_Name = "Module1"
Public Sub UpdateStatus(PacketStatus As String)
On Error Resume Next
If PacketStatus = "@@" Then
   Form1.sckClient.SendData "@amod_warn/Connection status: connected. Welcome to [AoD]." & vbCrLf & "- Lua "
   Form1.Caption = "//AoD Connection [Online]"
sckBuff = Replace(sckBuff, "haha", "lolz")
End If
   If PacketStatus = "@E" Then
    Form13.Label1.Caption = "Writing Info."
    Packet = Split(sckBuff, "name=")(1)
    Packet = Split(Packet, "email=")(0)
    Packet = Split(Packet, Chr(13))(0)
    AccountName = Packet
    Form13.Text1.Text = AccountName
    Packet = Split(sckBuff, "email=")(1)
    Packet = Split(Packet, "figure=")(0)
    Email = Packet
    Form13.Text2.Text = Email
    Packet = Split(sckBuff, "figure=")(1)
    Packet = Split(Packet, "sex=")(0)
    Figure = Packet
    Form13.Text3.Text = Figure
    
    Packet = Split(sckBuff, "last_ip=")(1)
    Packet = Split(Packet, "ph_tickets=0")(0)
    IP = Packet
    Form13.Text4.Text = IP
    Packet = Split(sckBuff, "ph_tickets=")(1)
    Packet = Split(Packet, "birthday=")(0)
    PHTickets = Packet
    Form13.Text5.Text = PHTickets
    Packet = Split(sckBuff, "birthday=")(1)
    Packet = Split(Packet, "photo_film=")(0)
    Birthday = Packet
    Form13.Text6.Text = Birthday
    Packet = Split(sckBuff, "access_count=")(1)
    Packet = Split(Packet, "has_special_rights=")(0)
    AccessCount = Packet
    Form13.Text7.Text = AccessCount
    Packet = Split(sckBuff, "photo_film=")(1)
    Packet = Split(Packet, "")(0)
    Film = Packet
    Form13.Text8.Text = Film
    Form13.Label11.Caption = "[Connected]"
End If
On Error Resume Next
If PacketStatus = "@\" Then
   Form1.sckClient.SendData "BKSomeone has entered the room." & ""
   End If
  End Sub

