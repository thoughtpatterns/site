#set document(title: [home], date: datetime(year: 2025, month: 12, day: 12))

/* @typstyle off */
#html.style("
  div.main {
    margin: 0 auto 1rem;
    padding: 0 auto;
  }

  div.cat {
    align-items: center;
    display: flex;
    justify-content: center;
    line-height: 1.25;
  }

  div.cat > pre {
    color: var(--foreground1);
  }

  div.bubble {
    border-radius: 4px;
    border: 1px solid var(--foreground2);
    line-height: 1;
    padding: 0 1rem;
  }

  div.bubble > ul > li > p:has(+ ul) {
    margin-top: 0.25rem;
    margin-bottom: -0.25rem;
  }

  div.shring {
    align-items: center;
    display: flex;
    gap: 0.75rem;
    justify-content: center;
    padding-top: 1rem;
  }

  span.email > span:nth-child(4) {
    display: none;
  }
",
)

#html.div(class: "main")[
  #html.div(class: "cat")[
    /* @typstyle off */
    #html.pre(
      " ___"             + "\n"
    + "(__ \\"           + "\n"
    + "  / /          ╭" + "\n"
    + " .' '·.        │" + "\n"
    + "'      ”       │" + "\n"
    + "╰       /\_/|  │" + "\n"
    + " | .         \ │" + "\n"
    + " ╰_J`    | | | ╯" + "\n"
    + "     ' \__- _/"   + "\n"
    + "     \_\   \_\\",
  )

    #html.div(class: "bubble")[
      welcome!

      - email: #html.span(class: "email")[
          #let s = html.span
          #s[me]#s[@]#s[makki]#s[:3c]#s[.]#s[moe]
        ]
      - git:
        - #html.a(href: "https://git.sr.ht/~orchid")[sourcehut]
        - #html.a(href: "https://codeberg.org/shivers")[codeberg]
        - #html.a(href: "https://github.com/thoughtpatterns")[github]
      - music:
        - #html.a(href: "https://www.last.fm/user/moeishome")[last.fm]
        - #html.a(href: "https://rateyourmusic.com/~mackeye")[rateyourmusic]

      if you'd like, you can watch this site via
      #html.a(href: "/feeds/rss.xml")[rss].
    ]
  ]

  #html.div(class: "shring")[
    #html.a(href: "https://shring.sh/mackeye/previous")[#sym.arrow.l]
    #html.a(href: "https://shring.sh/")[shring]
    #html.a(href: "https://shring.sh/mackeye/next")[#sym.arrow.r]
  ]
]
