%%  Do not edit this file; it is auto-generated from LSR!
\version "2.10.12"

\header { texidoc = "
In accordance with standard typesetting rules, a natural sign is
printed before a sharp or flat if a previous accidental on the same
note needs to be canceled.  To change this behavior, set the
extraNatural property to \"false\" in the Staff context. 
" }

\relative {
aeses'4 aes ais a
\set Staff.extraNatural = ##f
aeses4 aes ais a
}
