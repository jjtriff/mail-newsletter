Sub newEmailArrives(Item As Outlook.MailItem) as Boolean
    '// add declarations
    On Error GoTo catchError

    

    newEmailArrives = true
exitSub:
    Exit Sub
catchError:
    '// add error handling
    newEmailArrives = false
    GoTo exitSub
End Sub