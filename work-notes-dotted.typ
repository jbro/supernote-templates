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

#non-titled-box(
  block(
    inset: 1em,
    [
      #for _ in range(30) {
        repeat(
          gap: 1em,
          circle(
            radius: 0.5pt,
            fill: luma(220),
            stroke: none,
          )
        )
      }
    ]
  )
)