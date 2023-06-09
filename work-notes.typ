#import "include/a5x-template.typ": template
#show: doc => template(doc)

#import "include/elements.typ": titled-box, note-lines

#grid(columns: (1fr, 220pt),
  [
    #set text(size: 20pt)
    #h(5pt)
    Notes
  ],
  titled-box(title: "", text(size: 24pt, v(1em))),
)

#titled-box(title: "", note-lines(21))