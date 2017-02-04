\version "2.16.2"
\header {
    title = "Equinox"
    subtitle = "(Improvisation by Andrey & Nikita)"
    composer = "John Coltrain" 
    tagline = ""  % removed 
}

empty = {
  r1 r1 r1 r1 \break
}

solo = \relative c''' {
  \clef treble
  \key c \minor
  \time 4/4
  \set Staff.instrumentName = #"Guitar"

  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()

% 1
\mark \markup {\box 1}

\empty
\break

\empty
\break

c8 ees c aes ees f aes ees
b c bes aes f fis g4
r1
r1
\break

% 2
\mark \markup {\box 2}

<c g' bes ees>4. <bes ees g c>8 <b ees g d'> <bes ees g c>8 r4 |
<g c f bes>4 <f b d aes'> <g c f bes>8 <g c f bes>8  r4 |
r8 <bes d g>4 <f b d aes'>8 <g c f bes>4 <g c f bes>4 |
<bes d g>4 <f b d aes'>8 <bes d g>4 <c, f bes ees> r8 |
\break

\times 2/3 {d'8 ees f} b, d c ees bes aes |
r4 \times 2/3 {aes8 c d} e f g aes | 
a8 ees c d r8 c aes' f |
c8 bes a f d ees r4 |
\break

<ees a c aes'>4. <ees a c ges'>8 <ees a c aes'> <ees a c ges'> r4 |
<d aes' b f'>4 <f b ees> f'8 ees r4 |
r8 <c, ees  bes' d>4. <c ees  bes' d>8 <c ees  bes' d>8 r4 |
<des f b ees>4 r8 <des f b ees>8~ <des f b ees>4  r4 |
\break

% 3
\mark \markup {\box 3}

g'8 a bes f g ees d b |
c bes a bes c f g d |
ees f ges g c b g f |
bes ees, d a' c, bes a bes |
\break

aes' bes c ees c d c aes
ees f aes g ees c bes c
a bes f' ees r2
r1

\break
\empty

} % end solo

harmony = \chordmode {

c1:m7 c:m7 c:m7 c:m7
f:m7 f:m7 c:m7 c:m7
aes:7 g:7 c:m7 c:m7

} % end harmony

bass = \relative c' {
  \clef treble
  \key c \minor
  \time 4/4
  \set Staff.instrumentName = #"Guitar"

  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()
<<
{r8 <bes' ees g> r4 r2
r8 <d g bes> r4 r2
r2 r8 <ees g>8 r4
r2 r8 <ees g>8 r4

r8 <c ees aes> r4 r2
r8 <ges' bes> r4 r2
r2 r8 <bes, ees g>8 r4
r2 r8 <bes ees g>8 r4

r8 <ges c ees> r4 r2
r8 <f b d> r4 r2
<c g' bes ees>4 <d aes' b f'> <ees bes' d g> <f b d aes'>
r8 <c' f bes> r4 r2
}
\\
{c,4 b c d
ees d ees f
g a bes b
c bes a g

\break

f g c bes
aes g f ees
c d c b
c b bes a

\break

aes ees' c aes
g d' b g
c d ees f
g ees d b}
>>

}

\score {
  <<
    \time 4/4 
    \new ChordNames {
      \set chordChanges = ##t
      \harmony
      \harmony
      \harmony
    }
    \new Staff {
      \set Staff.midiInstrument = #"electric guitar (jazz)"
      \solo
    }

    \new Staff {
      \set Staff.midiInstrument = #"electric guitar (jazz)"
      \bass
    }

  >>
  \layout {}
  \midi {\tempo 4 = 116}
}