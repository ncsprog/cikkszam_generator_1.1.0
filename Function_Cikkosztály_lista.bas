Attribute VB_Name = "Function_Cikkosztály_lista"
Option Explicit

Sub Cikkosztály_lista()

Munka2.Select

Dim JelöltTörzs, C1 As Integer, Cx As Integer, Collumns As Integer, TaláltTörzs As String, rngList As Range

JelöltTörzs = AppCikkek.ComboBox2.Value
C1 = Munka2.Range("b1").Column
Cx = Munka2.Range("j1").Column

For Collumns = C1 To Cx Step 1
TaláltTörzs = Munka2.Cells(1, Collumns).Value
    If TaláltTörzs = JelöltTörzs Then
        Set rngList = Munka2.Range(Cells(2, Collumns), Cells(10, Collumns))
        AppCikkek.ComboBox3.List = rngList.Value
    End If
Next

End Sub
