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

\empty
\break

\empty
\break

\empty
\break

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

c4 b c d
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
g ees d b

}

\score {
  <<
    \time 4/4 
    \new ChordNames {
      \set chordChanges = ##t
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