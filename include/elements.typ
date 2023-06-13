
#let titled-box(contents, title: "title", text-size: 12pt,) = box(stroke: 2pt + gray, inset: 6pt, radius: 5pt, width: 100%,
  [
    #v(2pt)
    #text(size: text-size, [#place(top+left, [#v(-1.2em) #box(fill: white, inset: 1pt, title)])])
    #v(2pt)
    #contents
  ]
)

#let task-lines(count) = {
  let line = (mark: rotate(30deg, text(fill: gray, "󰋙")), line: [#line(start: (0em, 1em), length: 100%)])
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

#let note-lines(lines) = block(
  [
    #set text(size: 10pt)
    #v(0.5em)
    #for _ in range(lines) {
      line(start: (0em, 1em), stroke: (paint: black, dash: "dotted"), length: 99%)
    }
    #v(1pt)
  ]
)

#let week-box() = titled-box(title: "Week",
  [
    #set align(right)
    #v(-2pt)
    #grid(columns: 2,
      [
        #set text(size: 24pt, fill: gray)
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
