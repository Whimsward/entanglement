#import "@preview/cheq:0.3.0": *
#import "@preview/wordometer:0.1.5": *
#import "persaval/oaths.typ": *
#import "lila/poems.typ" as poems

#let chap_head(name) = align(center)[#heading(depth: 2)[#name]]

#let softbreak = line(length: 100%, stroke: silver)

#let scene(name) = hide[
  #heading(depth: 3, bookmarked: true)[
    #name]]

#let prol(name) = align(center)[
  #heading()[Prologue:
    #name
  ]]

#let epil(name) = align(center)[
  #heading()[Epilogue:
    #name
  ]
]

#let mid_prose(content) = align(center)[
  #quote(block: true)[
    #set text(font: "Merriweather")
    #content
  ]
]

#let epigraph(content) = {
  mid_prose(content)
  softbreak
}

#let dinkus() = align(center)[
  #set text(size: 16pt)

  #str.from-unicode(0x0001F660)
  #str.from-unicode(0x0001F65F)
  #str.from-unicode(0x0001F660)

]

#let one_pov(name, scene_type) = figure()[
  #align(center)[
    #table(columns: 1)[#name][#scene_type]
  ]
]

#let two_pov(name_1, name_2, scene_type) = figure()[
  #align(center)[
    #table(columns: 2)[#name_1][#name_2][#table.cell(colspan: 2)[#scene_type]]
  ]
]

#let paradigms = (
  A: "Association",
  Ex: "Extension",
  D: "Domination",
  Ed: "Edification",
  S: "Separation",
)

#let pdgm(num) = if num == 1 [Association] else [
  #if num == 2 [Extension] else [
    #if num == 3 [Domination] else [
      #if num == 4 [Edification] else [
        #if num == 5 [Separation]]
    ]]
]

#let coin = str.from-unicode(0x0001FA99)
#let bird = str.from-unicode(0x0001F426)
#let eye = str.from-unicode(0x0001F441)

#let alchair = str.from-unicode(0x0001F701)
#let alchfire = str.from-unicode(0x0001F702)
#let alchearth = str.from-unicode(0x0001F703)
#let alchwater = str.from-unicode(0x0001F704)
#let alchash = str.from-unicode(0x0001F757)

#let sunrise = str.from-unicode(0x0001F305)
#let downward = str.from-unicode(0x0001F4C9)
#let black_heart = str.from-unicode(0x0001F5A4)
#let jolted = str.from-unicode(0x0001F5F1)

#let fire = str.from-unicode(0x0001F525)
#let xswords = str.from-unicode(0x00002694)
#let ribbon = str.from-unicode(0x0001F380)
#let chains = str.from-unicode(0x000026D3)
#let ring = str.from-unicode(0x0001F48D)
#let scarf = str.from-unicode(0x0001F9E3)
#let phone = str.from-unicode(0x0001F4F1)
#let figure = str.from-unicode(0x0001F16F)
#let shades = str.from-unicode(0x0001F576)
#let scope = str.from-unicode(0x0001FA7A)
#let star = str.from-unicode(0x00002B52)
#let dog = str.from-unicode(0x0001F415)
#let brush = str.from-unicode(0x0001FAA5)
#let damocles = str.from-unicode(0x0001F5E1)
#let wand = str.from-unicode(0x0001FA84)

#let ext_wrap(content) = [
  #alchwater #content #eye
]

#let part_declaration(content) = page()[
  #align(center + horizon)[
    #set text(size: 5em)
    #heading(numbering: "I:", depth: 1)[#content]

  ]
]

#let doc_part(content) = [
  #import "common_features.typ": *
  #import "@preview/cheq:0.3.0": *
  #import "@preview/wordometer:0.1.5": *
  #set par(first-line-indent: (amount: 1em, all: true))
  #set page(header: total-words, numbering: "1")
  #show: checklist
  #show: word-count
  #content
]

#part_declaration()[Test]
#part_declaration()[Test]
#prol()[Test Title]
#chap_head()[Test Chapter Title]
#one_pov()[Test Character POV][Soliloquy]
#epigraph()[#lorem(10)]
#dinkus()
#lorem(34)
#two_pov()[Char 1][Char 2][Dialogue]


#pdgm(1), #pdgm(2), #pdgm(3), #pdgm(4), #pdgm(5)

#paradigms.A

#ext_wrap("Test")
