' This configs should be commented out and reset in case a change is desired to keep the original values

' The name of the app
Public APP_NAME as String : APP_NAME = "Newsletter simple del Cons. Gral. de España en La Habana"

' The email from where the app is going to function
Public APP_EMAIL as String : APP_EMAIL = "cog.lahabana.news@maec.es"

' Subscribe and desubcribe keywords
' This keyword will apply strictly as a rule for (de)subscribing
Public SIGNIN_KEYWORD as String : SIGNIN_KEYWORD = "alta"
Public SINGOUT_KEYWORD as String : SINGOUT_KEYWORD = "baja"

' The name of the list for subscribers 
' this must match to an MSO email group
Public CLIENTS_LIST as String : CLIENTS_LIST = "clientes"

' The name of the list of publishers subscribers 
' this must match to an MSO email group
Public PUBLISHERS_LIST as String : PUBLISHERS_LIST = "publicadores"

' The body of the following messages:
' the body of the response sent to the user when the new subscription is OK
Public SINGIN_OK_BODY as String : SINGIN_OK_BODY = "Ud. se ha registrado satisfactoriamente con " & APP_NAME & ". Si considera que esto fue un error puede darse de baja escribiendo a " & APP_EMAIL & " con la palabra '" & SINGOUT_KEYWORD & "' en el asunto."

' The body of the response sent to the user when the new desubscription is OK
Public SINGOUT_OK_BODY as String : SINGOUT_OK_BODY = "Ud. se ha dado de baja satisfactoriamente de " & APP_NAME & ". Si considera que esto fue un error puede darse de alta escribiendo a " & APP_EMAIL & " con la palabra '" & SINGIN_KEYWORD & "' en el asunto."

' The body of the response sent to the publisher once his message has been sent.
Public MESSAGE_SENT_OK_BODY as String : MESSAGE_SENT_OK_BODY = "El mensaje se han enviado satisfactoriamente a la lista de suscriptores. Como referencia, el asunto del mensaje fue: '&SUBJECTO&'"

' To keep or not to keep every subscription mail sent to the app, that is the question
Public KEEP_SINGIN_PROOF as Boolean : KEEP_SINGIN_PROOF = false

' To keep or not to keep every desubscription mail sent to the app, that is the other question
Public KEEP_SINGOUT_PROOF as Boolean : KEEP_SINGOUT_PROOF = false

' Another obvious question
Public KEEP_CONFIRMATION_MESSAGES as Boolean : KEEP_CONFIRMATION_MESSAGES = false

' The name of the subfolder inside the inbox to keep published 
Public WHERE_TO_KEEP_PUBLISHED_MESSAGES as String : WHERE_TO_KEEP_PUBLISHED_MESSAGES = "publicados"