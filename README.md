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

- Subscribe and desubcribe keywords: `SIGNIN _KEYWORD: string` and `SINGOUT_KEYWORD : string`: This keyword will apply strictly as a rule for (de)subscribing
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


