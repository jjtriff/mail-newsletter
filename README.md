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

- Subscribe and desubcribe keywords: `SIGNIN : string` and `SINGOUT : string`
- The name of the list for subscribers `CLIENTS_LIST : string`
- The name of the list of publishers subscribers `PUBLISHERS_LIST : string`
- The body of the following messages:
  - `SINGIN_OK_BODY : string` the body of the response sent to the user when the new subscription is OK
  - `SINGOFF_OK_BODY : string` the body of the response sent to the user when the new de-subscription is OK
  - `MESSAGE_SENT_OK_BODY : string` the body of the response sent to the publisher once his message has been sent.
