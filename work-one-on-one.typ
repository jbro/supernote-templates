#import "include/a5x-template.typ": template
#show: doc => template(doc)

#import "include/elements.typ": titled-box, note-lines, week-box

#grid(columns: (1fr, 170pt, 136pt), column-gutter: 5pt,
  [
    #set text(size: 20pt)
    #h(5pt)
    1 on 1
  ],
  [
    #titled-box(title: "Name", v(16.8pt))
  ],
  week-box()
)

#titled-box(title: "Goals", note-lines(5))

#titled-box(title: "Obstacles", note-lines(5))

#titled-box(title: "Oputunities", note-lines(5))

#titled-box(title: "Decisions", note-lines(4))
