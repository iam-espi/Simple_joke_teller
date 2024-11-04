\
\ Copyright (c) 2021 aprilliatrisnawaty all rights reserved.
\
\ @author: iamsp
\ @date: 4 Nov 2024
\


: intro ( -- s )
    "https://cdn.pixabay.com/photo/2016/03/31/20/07/clown-1295519_1280.png" img ctx{ img }
    
    "Tell me a joke" btn ctx{ btn1 }
    q{
        <marquee>
        <h1 style="font-size: 1rem; text-align: center"> Hi, I'm Joey! Your AI Joke Teller. </h1>
        </marquee>
        #{img} <br>
        <p style="text-align:center;">
        Your daily dose of humor.
        <br></br>
        Laughter is the best medicine.
        <br></br>
        Smile more, stress less.
        </p>
        #{btn1}
        <small style="opacity: .8">
        💓️ Developed for fun with love 💓
        </small>
    }q center 
;

Q: back
Q: main menu
A: ${ intro }
K: $clear
--






