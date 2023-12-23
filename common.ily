#(use-modules (guile-user))
tpose =
#(define-music-function
  (m) (ly:music?)
  (if (defined? 'transpose-key)
      #{ \transpose
         #(assoc-get (string->symbol transpose-key) pitchnames)
         c' $m
      #}
      #{ $m #})
 )
