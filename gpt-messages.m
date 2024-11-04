\
\ Copyright (c) 2021 farreladelm all rights reserved.
\
\ @author: iamsp
\ @date: 4 Nov 2024
\

mem: gpt-input gpt-language

: gpt-ask ( "prompt" -- "answer" )
    nil swap
    openai.ask
    swap drop \ remove the conversation
;

: gpt-ask-prompt ( "sentence" -- ) ctx{ length }
    gpt-input ctx{ input }
    gpt-language ctx{ language }
    q{
        Tell me a joke about #{input}. 
        Generate a story with no more than #{length} words  that describes about #{input}.
        You need to strictly reply in #{language} language. 
        You need to heavily include #{input} as word in your joke. 
        Your joke must not have discriminative, racist, sexist and terrorist content.
    }q gpt-ask
;






