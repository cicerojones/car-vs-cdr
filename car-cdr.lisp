;;; demonstration of all the functions that combine the various ca/dr

(setq nested-list '(((((a) i) (e) m) ((c) k) (g) o) 
	    (((b) j) (f) n) ((d) l) (h) p))

;; apply in turn each of the functions f
(let 
    ((nested (list nested-list)))
  (loop for f in '(car cdr caar cadr cdar cddr caaar caadr cadar
		       caddr cdaar cdadr cddar cdddr caaaar caaadr
		       caadar caaddr cadaar cadadr caddar cadddr
		       cdaaar cdaadr cdadar cdaddr cddaar cddadr cdddar cddddr)
	do (format t "~{~a ~a~%~a ~%~}~%" (list f nested (apply f nested)))))

;; each pair shows the function with the nested list followed by the return value

;; CAR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; ((((A) I) (E) M) ((C) K) (G) O) 

;; CDR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; ((((B) J) (F) N) ((D) L) (H) P) 

;; CAAR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (((A) I) (E) M) 

;; CADR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (((B) J) (F) N) 

;; CDAR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (((C) K) (G) O) 

;; CDDR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (((D) L) (H) P) 

;; CAAAR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; ((A) I) 

;; CAADR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; ((B) J) 

;; CADAR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; ((C) K) 

;; CADDR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; ((D) L) 

;; CDAAR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; ((E) M) 

;; CDADR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; ((F) N) 

;; CDDAR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; ((G) O) 

;; CDDDR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; ((H) P) 

;; CAAAAR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (A) 

;; CAAADR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (B) 

;; CAADAR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (C) 

;; CAADDR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (D) 

;; CADAAR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (E) 

;; CADADR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (F) 

;; CADDAR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (G) 

;; CADDDR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (H) 

;; CDAAAR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (I) 

;; CDAADR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (J) 

;; CDADAR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (K) 

;; CDADDR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (L) 

;; CDDAAR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (M) 

;; CDDADR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (N) 

;; CDDDAR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (O) 

;; CDDDDR ((((((A) I) (E) M) ((C) K) (G) O) (((B) J) (F) N) ((D) L) (H) P))
;; (P) 

;; NIL


