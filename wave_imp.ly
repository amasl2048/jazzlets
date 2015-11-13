\version "2.16.2"
\header {
    title = "Wave"
    subtitle = "(Improvisation by Andrey & Nikita)"
    composer = "Antonio Carlos Jobim" 
    tagline = ""  % removed 
}

empty = {
  r1 
  r1 
  r1 
  r1 \break
}

solo= \relative c'' {
  \clef treble
  \key d \major
  \time 4/4

  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()
   r2 r4 r8 <fis, b d>8
% A1 
  \mark \markup {\box A}

  r8 fis' e cis d b a fis \glissando
  g bes4 cis8~ cis e g fis
  \times 2/3 {r4 <g,~ c~ e~ b'> <g c e c'>} \times 2/3 {g' e r4}
  <c fis a e'>8 d' c b a g fis a 
  \break 

  b8 fis g4 b,8 fis'4 bes,8
  f'4 e8 dis ais d4 ais8
  cis8 b ais fis e cis r8 b~
  b8 <a' dis f>~ <a dis f> b, <a' dis f> r8 \times 2/3 {dis, e fis}
  \break  

  gis8 a ais b <e,, c''> cis'' d e
  <bes, aes' d f>8 g'' aes bes <a,, cis' f c'> cis'' c bes
  <d,, a''>8 f' d g4 f c8 \glissando
  b4 f8 b4 d8 \glissando cis4
  \break
 
\mark \markup {\box A'}
  <d, fis a>8 b'4 <fis a cis>8~ <a, fis' a cis>8 d'4 <g, cis e>8~
  <bes, g' cis e>4 fis''4 <e, bes' g'> fis'8 a8~
  <a, a'>4 <g c e>~ \times 2/3 { <g c e> fis' <cis, aes' b f'> } 
  <d a' c fis>4 <a' c fis a>8 <a c fis>8~ <a c fis> e'4 <fis, b e>8~  
  \break

  <g, fis' b e>8 d''8 e d a' g4 <fis, bes d>8
  g,8 a'8 bes d \times 2/3 { <e, a d a'>4 <a d g> <a d fis> }
  <fis, a' e'>4 d''8 fis fis,,8 <e' bes'>4 <ees a cis>8~
  <b ees a cis>8 b'4 <ees, a b>8~ <fis, ees' a b> ees'8 e f
  \break

% Bridge
  fis8 e b' a e' d aes' fis
  <ees, aes d f>4 e8 d cis d dis e
  d8 <f c'> r8 a, g <f' b d>4 r8
  d8 <f c'> r8 <g f b d>8~ <g f b d>4 r4
  \break

% A2
  r1
  r1
  c'8 a g e c bes a bes 
  c8 a e g f4 r4
  \break

  \empty
  \empty
  \empty
  \empty
}

harmonies = \chordmode {
  r1
%A1

  d:maj bes:dim a:m7 d:7
  g:maj g:m7 fis:7 b:7
  \times 2/4 {b:m7 e:7 bes:7 a:7.9+ d:m7 g:7 d:m7 g:7} 

  d:maj bes:dim a:m7 d:7
  g:maj g:m7 fis:7 b:7
  \times 2/4 {b:m7 e:7 bes:7 a:7.9+ d:m7 g:7 d:m7 g:7} 

% Bridge
  g:m7 c:7 f:maj f:maj
  f:m7 bes:7 ees:maj \times 2/4 {e:m7.5- a:7.9+}

% A2
  d:maj bes:dim a:m7 d:7
  g:maj g:m7 fis:7 b:7
  \times 2/4 {b:m7 e:7 bes:7 a:7.9+ d:m7 g:7 d:m7 g:7}
}

bass = \relative c' {
  \clef treble
  \key e \minor
  \time 4/4
r1
%A1

%B

%A2
 
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff {
      \set Staff.midiInstrument = #"electric guitar (jazz)"
      \solo
    }
%    \new Staff {
%      \set Staff.midiInstrument = #"fretless bass"
%      \bass
%    }
  >>
  \layout {}
  \midi {\tempo 4 = 120}
}