#import "include/a5x-template.typ": template
#show: doc => template(doc)

#import "include/elements.typ": titled-box, task-lines, note-lines, week-box

#grid(columns: (1fr, 136pt),
  [
    #set text(size: 20pt)
    #h(5pt)
    Daily
  ],
  week-box()
)

#titled-box(title: "Tracker",
  [
    #grid(columns: (1fr, 7fr, 1fr, 8fr), row-gutter: 4pt, column-gutter: 5em,
      "Exercise:",
      [
          #set align(right)
          #text(fill: gray, "     ")
          #place(dx: 4.8pt, dy: -6.6pt, text(size: 4pt, number-width: "tabular", kerning: false, spacing: 0pt, tracking: 13.4pt, "555555"))
      ],
      "Coffee:", align(right, [#text(fill: gray, "󰛊 󰛊 󰛊 󰛊 󰛊 󰛊") #h(0.3em)]),
      [],
      [
        #set align(center)
        󰙼   #h(0.5em) 󱅝 #h(0.7em)󰎏
      ],
      "Hydrate:", align(right, [#text(fill: gray, "󰸊 󰸊 󰸊 󰸊 󰸊 󰸊") #h(0.3em)]),
    )
    #v(2pt)
  ]
)

#titled-box(title: "Notes",
  note-lines(20)
)
