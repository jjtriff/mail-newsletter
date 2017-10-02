Function getSenderFromMailItem(mail As Outlook.MailItem) As String
    '// add declarations
    On Error GoTo catchError
    Dim PR_SMTP_ADDRESS As String = "http://schemas.microsoft.com/mapi/proptag/0x39FE001E"
    If mail Is Nothing Then
        Throw New ArgumentNullException()
    End If
    If mail.SenderEmailType = "EX" Then
        Dim sender As Outlook.AddressEntry = mail.Sender
        If sender IsNot Nothing Then
            'Now we have an AddressEntry representing the Sender
            If sender.AddressEntryUserType = Outlook.OlAddressEntryUserType.olExchangeUserAddressEntry OrElse sender.AddressEntryUserType = Outlook.OlAddressEntryUserType.olExchangeRemoteUserAddressEntry Then
                'Use the ExchangeUser object PrimarySMTPAddress
                Dim exchUser As Outlook.ExchangeUser = sender.GetExchangeUser()
                If exchUser IsNot Nothing Then
                    Return exchUser.PrimarySmtpAddress
                Else
                    Return Nothing
                End If
            Else
                Return TryCast(sender.PropertyAccessor.GetProperty(PR_SMTP_ADDRESS), String)
            End If
        Else
            Return Nothing
        End If
    Else
        Return mail.SenderEmailAddress
    End If


exitFunction:
    Exit Function
catchError:
    '// add error handling
    GoTo exitFunction
End Function