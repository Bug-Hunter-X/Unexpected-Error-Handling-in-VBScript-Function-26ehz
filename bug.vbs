Function MyFunction(param1, param2)
  If IsEmpty(param1) Or IsEmpty(param2) Then
    Err.Raise vbError, , "Parameters cannot be empty"
  End If
  ' ... rest of the function ...
End Function