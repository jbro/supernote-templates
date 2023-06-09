#import "include/a5x-template.typ": template
#show: doc => template(doc)

#import "include/elements.typ": titled-box, task-lines, note-lines

#grid(columns: (1fr, 108pt),
  [
    #set text(size: 20pt)
    #h(5pt)
    Daily
  ],
  [
    #titled-box(title: "Week",
      [
        #set align(right)
        #grid(columns: 2,
          [
            #set text(size: 24pt)
            #set align(center+horizon)
            
            #h(16pt)
          ],
          [
            #set text(size: 8pt)
            #set align(left)
            mon tue wed\
            thu fri
          ],
        )
      ]
    )
  ]
)

#titled-box(title: "Tracker",
  [
    #grid(columns: (1fr, 7fr, 1fr, 8fr), row-gutter: 4pt, column-gutter: 5em,
      "Exercise:",
      [
          #set align(right)
               
          #place(dx: 4.8pt, dy: -6.6pt, text(size: 4pt, number-width: "tabular", kerning: false, spacing: 0pt, tracking: 13.4pt, "555555"))
      ],
      "Coffee:", align(right, [󰛊 󰛊 󰛊 󰛊 󰛊 󰛊 #h(0.3em)]),
      [],
      [
        #set align(center)
        󰙼   #h(0.5em) 󱅝 #h(0.7em)󰎏
      ],
      "Hydrate:", align(right, [󰸊 󰸊 󰸊 󰸊 󰸊 󰸊 #h(0.3em)]),
    )
  ]
)

#titled-box(title: "Tasks",
  [
    #v(0.5em)
    #task-lines(12)
    #v(1pt)
  ]
)

#titled-box(title: "Notes",
  note-lines(5)
)
