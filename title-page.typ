#import "include/a5x-template.typ": template
#show: doc => template(doc)

#import "include/elements.typ": titled-box, task-lines, note-lines, week-box

#set align(center)

#box(width: 100%)[
  #box(width: 90%)[
    #v(10mm)
    #note-lines(1)
    #v(10pt)
    #note-lines(1)
    #v(20mm)

    #let g=30pt
    #let l=8
    #box(width: l*g, height: l*g)[
      #for x in array.range(1, l) {
        for y in array.range(1, l) [
          #place(line(start: (x*g, 0pt), end: (x*g, y*g+g), stroke: gray))
          #place(line(start: (0pt, y*g), end: (x*g+g, y*g), stroke: gray))
        ]
      }
      ]


    #v(20mm)
    #let f="Routed Gothic"
    #text("Engineering\n", font: f, size: 34pt, style: "italic")
    #text("Notebook", font: f, size: 56pt, style: "italic")
  ]
]
