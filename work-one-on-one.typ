#import "include/a5x-template.typ": template
#show: doc => template(doc)

#import "include/elements.typ": titled-box, note-lines

#grid(columns: (1fr, 170pt, 108pt), column-gutter: 5pt,
  [
    #set text(size: 20pt)
    #h(5pt)
    1 on 1
  ],
  [
    #titled-box(title: "Name", v(18.8pt))
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

#titled-box(title: "Goals", note-lines(5))

#titled-box(title: "Obstacles", note-lines(5))

#titled-box(title: "Oputunities", note-lines(5))

#titled-box(title: "Decisions", note-lines(4))
