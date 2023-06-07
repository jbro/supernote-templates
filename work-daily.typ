#import "include/a5x-template.typ": template
#show: doc => template(doc)

#let titled-box(contents, title: "title", text-size: 12pt,) = box(stroke: 2pt + gray, inset: 6pt, radius: 5pt, width: 100%,
  [
    #v(2pt)
    #text(size: text-size, [#place(top+left, [#v(-1em) #box(fill: white, inset: 1pt, title)])])
    #v(2pt)
    #contents
  ]
)

#let task-lines(count) = {
  let line = (mark: [󰋙], line: [#line(start: (0em, 1em), length: 100%)])
  [
    #grid(columns: (1em, 1fr),
          ..for _ in range(1, count) {
            (line.mark, line.line, v(1em), "")
          },
          [#line.mark], [#line.line],
    )
    #v(1pt)
  ]
}

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
    #grid(columns: (1fr, 6fr, 1fr, 6fr), row-gutter: 4pt, column-gutter: 5em,
      "Exercise:",
      [
          #set align(right)
               
          #place(dx: 8.5pt, dy: -6.6pt, text(size: 4pt, number-width: "tabular", kerning: false, spacing: 0pt, tracking: 13.4pt, "555555"))
      ],
      "Coffee:", align(right, "󰛊 󰛊 󰛊 󰛊 󰛊 󰛊"),
      [],
      [
        #set align(center)
        󰙼 󱗩 󱅝 #h(2em) 󰎏
      ],
      "Hydrate:", align(right,"󰸊 󰸊 󰸊 󰸊 󰸊 󰸊"),
    )
  ]
)

#titled-box(title: "Tasks",
  [
    #v(0.5em)
    #task-lines(8)
    #v(1pt)
  ]
)

#titled-box(title: "Notes",
  [
    #set text(size: 10pt)
    #v(0.5em)
    #for _ in range(10) {
      line(start: (0em, 1em), stroke: (paint: black, dash: "dotted"), length: 99%)
    }
    #v(1pt)
  ]
)
