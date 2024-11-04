\
\ Copyright (c) 2021 farreladelm all rights reserved.
\
\ @author: iamsp
\ @date: 4 Nov 2024
\

mem: gpt-response

Q: Tell me a joke
MM Welcome to Joke Teller AI chatbot.
MM <br></br> 
MM Tell me what you like to hear today. I will generate a joke for you.
MM <br></br>
MM Who is the person or object you would like to hear about?
M.
K: gpt-input
--

Q: Reset
MM <p>
MM <br></br>
MM Tell me what you like to hear today. I will generate a joke for you.
MM <br></br>
MM Who is the person or object you would like to hear about?
MM </p>
M.
K: gpt-input
--

room: gpt-input

Q: $_
B: last-question gpt-input! 
MM <p justify="center">
MM Which language do you want to me to write in?
M. </p>
K: $clear gpt-language
--

end-room

room: gpt-language

Q: $_
B: last-question gpt-language! 
MM <p justify="center">
MM Select or type the number of words/length of the joke you prefer.
MM <br></br>
MM </p>
M. ${ "10" btn-3 } ${ "30" btn-3 } ${ "50" btn-3 }
K: $clear generate-rap
--

end-room


room: generate-rap

Q: $_
B: last-question gpt-ask-prompt gpt-response!
MM ${ gpt-response }
MM <p justify="center">
MM ----------
MM <br></br>
MM Click Reset to generate new joke or Back to finish.
MM </p>
M. ${ "Reset" btn-secondary } ${ "Back" btn-secondary }
--

end-room






