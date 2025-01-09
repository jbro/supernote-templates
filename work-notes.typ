#import "include/a5x-template.typ": template
#show: doc => template(doc)

#import "include/elements.typ": non-titled-box, note-lines

#grid(columns: (1fr, 220pt),
  [
    #set text(size: 20pt)
    #h(5pt)
    Notes
  ],
  non-titled-box(text(size: 24pt, v(1em))),
)

#non-titled-box(note-lines(21))