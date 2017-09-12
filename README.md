# mail-newsletter

Simple subscription/desuscription system based on keywords and authorized publishers

## Description

- This is for use with MS Outlook (MSO from now on)
- Is supposed to be used by an always running MSO session with a certain inbox
- You have to configure certain things for it to work:
  - Suscription Keyword
  - De-Suscription Keyword
  - Authorized list of publishers
  - Register the main macro with the MSO rule manager to apply it to every new incomnig message

## Configuration

- `APP_NAME : String`:  The name of the app
- `APP_EMAIL : String`: The email from where the app is going to function
- The name of the list for subscribers `CLIENTS_LIST : string`: this must match to an MSO email group
- The name of the list of publishers subscribers `PUBLISHERS_LIST : string`: this must match to an MSO email group
- The body of the following messages:
  - `SINGIN_OK_BODY : string` the body of the response sent to the user when the new subscription is OK
  - `SINGOFF_OK_BODY : string` the body of the response sent to the user when the new de-subscription is OK
  - `MESSAGE_SENT_OK_BODY : string` the body of the response sent to the publisher once his message has been sent.
- `KEEP_SINGIN_PROOF : bool`: to keep or not to keep every subscription mail sent to the app, that is the question
- `KEEP_SINGOFF_PROOF : bool`: to keep or not to keep every de-subscription mail sent to the app, that is the other question
- `KEEP_CONFIRMATION_MESSAGES : bool`: another obvious question
- `WHERE_TO_KEEP_PUBLISHED_MESSAGES : string`: the name of the subfolder inside the inbox to keep published messages

## The different parts of the app

- `app.bas`: The super class that controls all others
- `config.bas`: Where we keep the configuration as global variables
- `mail-manager.bas`:  manager to handle the basic operations on the mail items (mv, delete, etc.)
- `subscription-controller.bas`: the controller of every email string of clients to handle
- `mail-sender.bas`: the responsible to handle the email sending process
- `mail-editor.bas`: the helper responsible for editing the emails body to construct footers for subscription and desubscription

## Simple logic flow

Take a look at it rendering `logic-flowchart.html`
