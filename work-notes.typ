#import "include/a5x-template.typ": template
#show: doc => template(doc)

#import "include/elements.typ": titled-box, note-lines

#v(12pt)
#titled-box(title: text(size: 20pt, [#v(-5pt); Notes]), note-lines(24))