%%  Do not edit this file; it is auto-generated from LSR!
\version "2.10.12"

\header { texidoc = "
By setting @code{barAlways} and @code{defaultBarType}, barlines may be
inserted automatically everywhere. 
" }

\score {
	 \relative c''{
		\set Score.barAlways = ##t
		\set Score.defaultBarType = ":|:"
		c4 c4 c4 c4 }
	\layout{raggedright = ##t}
}


