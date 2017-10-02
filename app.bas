Sub newEmailArrives(Item As Outlook.MailItem)
    '// add declarations
    On Error GoTo catchError

    Dim strSender As String 
    strSender = getSenderFromMailItem(Item)

    Dim blnIsPublisher As Boolean
    blnIsPublisher = isEmailInsideList(strSender, PUBLISHERS_ARRAY)

    
exitSub:
    Exit Sub
catchError:
    '// add error handling
    GoTo exitSub
End Sub

Function isEmailInsideList(needle as String, haystack() as String) As Boolean
    '// add declarations
    On Error GoTo catchError
    Dim strEl As String

    For Each strEl In haystack
        
        
    Next strEl  

exitFunction:
    Exit Function
catchError:
    '// add error handling
    GoTo exitFunction
End Function