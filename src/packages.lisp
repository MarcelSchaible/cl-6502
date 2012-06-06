(defpackage :6502-cpu
  (:use :cl :alexandria)
  (:export ;; Conditions
           #:6502-error
           #:not-implemented-yet
           #:illegal-opcode
           #:status-bit-error
           ;; Globals
           #:*ram*
           #:*cpu*
           ;; CPU Struct
           #:cpu
           #:make-cpu
           #:copy-cpu
           #:cpu-pc
           #:cpu-sp
           #:cpu-xr
           #:cpu-yr
           #:cpu-ar
           #:cpu-sr
           #:cpu-cc
           ;; Addressing Modes
           #:immediate
           #:zero-page
           #:zero-page-x
           #:zero-page-y
           #:indirect-x
           #:indirect-y
           #:absolute
           #:absolute-x
           #:absolute-y
           #:branch-relative
           ;; Utils
           #:next
           #:reset
           #:get-instruction
           #:get-byte
           #:get-word
           #:get-range
           #:wrap-byte
           #:wrap-word
           #:wrap-stack
           #:wrap-page
           #:stack-push
           #:stack-push-word
           #:stack-pop
           #:stack-pop-word
           #:status-bit
           #:negative-p
           #:update-flags
           ;; Opcode Macrology
           #:defins
           #:defopcode))

(defpackage :6502
  (:documentation "Homepage: <a href=\"http://github.com/redline6561/cl-6502\">Github</a>")
  (:use :cl :alexandria :6502-cpu)
  (:export ;; Opcodes
           #:asl
           #:brk
           #:ora
           #:php)
  ;; Note: BE NOT AFRAID, DEVELOPERS! (But also, don't :use this package.)
  (:shadow #:bit
           #:and))
