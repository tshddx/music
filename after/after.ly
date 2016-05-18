\version "2.12.3"
\include "english.ly"

\paper {
  #(set-paper-size "a4")
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
}

\header {
  title = "AFTER"
  composer = "Thomas Shaddox"
  arranger = "wediddoit@gmail.com"
  opus = "@baddox"
  copyright = "I don't own this."
  tagline = ##f
}

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
}

rightMain = \relative c'' {
  \global
  \partial 4 e,4 |
  \repeat volta 2 {
    <e' g, e>2. d8 c8 | <b g e>4. g8~ g4 e4 | <e' g, e>2. d8 c8 | <b g'>2. g'4 |
    a c, g' c, | e b c a |
  }
  \alternative {
    {
       a2. b8 c8 |
       << { <d g,>2. e,4 } \\ { c4 c b2 } >> |
    }
    {
       a'2. e'8 c8 |
       << { <d g,>2. d8 e } \\ { c,4 c b2 } >> |
    }
  }
  
  \break
  
  % G/B section
  <f'' b, g>4 <g, d> c, e'8 d | <e c a e>4 d, c a'4 | <f' c a f>2. e8 d | <e b g d>2. d8 e |
  <f c a f>2. e8 d | <e c a e>4 d, c a'4 | <a' f c a>4. b8 c4 d | <e c g e>2 <d b gs d>2 |
  <c a e>4 a <b g e> g | <a f a,>4 c, <g' e d g,> c, | <f c a>4 d <e bf f> c |
  << { <d g,>2. e,4 } \\ { c4 c b2 } >>
  
  \pageBreak
  
  % Second verse
  <e' g, e>2. d8 c8 | <b g e>4. g8~ g4 e4 | <e' g, e>2. d8 c8 | <b g'>2. g'4 |
  a c, g' c, |
  \break
  e b c a |
  a2. e'8 c8 |
  << { <d g,>2. d8 e } \\ { c,4 c b2 } >> |
    
  % G/B section
  <f'' b, g>4 <g, d> c, e'8 d | <e c a e>4 d, c a'4 | <f' c a f>2. e8 d | <e b g d>2. d8 e |
  <f c a f>2. e8 d | <e c a e>4 d, c a'4 | <a' f c a>4. b8 c4 d | <e c g e>4 <c, g e> <d' b gs d> <b, gs e b> |
  <c e,>4 <a c,> <b d,> <g b,> | <a f a,>4 c, <g' e g,> c, | <f c a>4 d <e bf f> c |
  \ottava #0 <d c g>8 d, <d' c g> d, <d' b g d>4 \ottava #0 e  | 
    
  % Ending
  <e' g, e>2. d8 c8 | <b g e>4. g8~ g4 e4 | <e' g, e>2. d8 c8 | <b g e>4. g8~ g4 e4 | 
  <e' g, e>2. d8 c8 | <b e, c>4. g8~ g4 e4 | <f df cf af>4. f8 g4 f | << { e1 } \\ { <g, b>1\arpeggio } >> |
}

leftMain = \relative c {
  \global
  \partial 4 r4 |
  \repeat volta 2 {
    c8 e g c~ c4 <c, e g c>4 | <b e g b>1 | c8 e g c~ c4 <c, e g c>4 | <b e g b>1 |
    <a c f a> | < a c e a> | 
  }
  \alternative {
    {
      f8 c' g' c~ c2 | g,8 d' a' d, g2 |
    }
    {
      f,8 c' g' c~ c2 | g,8 d' a' d, g2 |
    }
  }
   
  % G/B section
  b,8 g' b g~ g b~ b4 | a,8 e' b' e, a2 | f,8  c' g' c, a' c,~ c4 | e,8 b' a' e g2 |
  d,8 a' a' f d' a c b | a, e' b' e, a2 | f,8 c' f g a c f g | \clef treble c, d e g gs a b d |
  <a, e' a>2 <e b' e> | \clef bass f8 c' f g e, c' e c | \clef bass d, a' f' d bf,8 f' <bf d>4 | g,8 d' a' d, g2 |
  
  % Second verse
  c,8 e g c~ c4 <c, e g c>4 | <b e g b>1 | c8 e g c~ c4 <c, e g c>4 | <b e g b>1 |
  f8 c' f g c f g f | a,, e' d' a e' a, c a |
  f,8 c' g' c~ c2 | g,8 d' a' d, g2 |
  
  % G/B section
  b,8 g' b g~ g b~ b4 | a,8 e' b' e, a2 | f,8  c' g' c, a' c,~ c4 | e,8 b' a' e g2 |
  d,8 a' a' f d' a c b | a, e' b' e, a2 | f,8 c' f g a c f g | <c,, g c,>2 <e b e,>2 |
  a,8 e' a4 e,8 b' g'4 | f,8 c' f g e, c' e4 | d,8 a' f'4 bf,,8 f' bf4 | \ottava #0 <g, g'>4 <g g'>4 <g g'>2 | \ottava #0 
  
  % Ending
  c'8 e g c~ c4 <c, e g c>4 | <b e g b>1 | c8 e g c~ c4 <c, e g c>4 | <b e g b>1 | f'8 g a c~ c4 a | <a f d>1 |
  df,,8 af' df4~ df2 | <c, g' d'>1\arpeggio |
}

right = {
  \rightMain
}

left = {
  \leftMain
}

\score {
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout {
    indent = 0.0
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 84 4)
    }
  }
}
