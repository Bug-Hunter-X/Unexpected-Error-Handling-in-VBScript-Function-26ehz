Function MyFunction(param1, param2)
  On Error Resume Next
  If IsEmpty(param1) Or IsEmpty(param2) Then
    Err.Raise vbError, , "Parameters cannot be empty"
  End If
  On Error GoTo 0
  ' ... rest of the function ...
End Function

Sub CallMyFunction()
  On Error Resume Next
  Dim result
  result = MyFunction(1, "")
  If Err.Number <> 0 Then
    MsgBox "Error: " & Err.Description
  Else
    MsgBox "Function executed successfully"
  End If
  On Error GoTo 0
End Sub

Call CallMyFunction()