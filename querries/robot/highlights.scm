[
  (comment)
  (extra_text)
] @comment

[
  (section_header)
  (setting_statement)
  (keyword_setting)
  (test_case_setting)
] @keyword

(variable_definition (variable_name) @variable)
(keyword_definition (name) @function)
(test_case_definition (name) @function)

(keyword_invocation (keyword) @function.call)
; (keyword_invocation (keyword (string)) @function.call)
; (keyword_invocation (keyword (single_string)) @function.call)
; (keyword_invocation (keyword (scalar_variable)) @function.call)
; (keyword_invocation (keyword (list_variable)) @function.call)
; (keyword_invocation (keyword (dictionary_variable)) @function.call)

(ellipses) @punctuation.delimiter

(text_chunk) @string
(inline_python_expression) @string.special

; Quoted strings
[
  (string)
  (single_string)
] @string.quoted

[
  (scalar_variable)
  (list_variable)
  (dictionary_variable)
] @variable

; Gherkin syntax
; (gherkin_step (gherkin_keyword) @keyword.control)
; (gherkin_step (keyword_invocation) @function.call)

; Control structures

[
  "FOR"
  "IN"
  "IN RANGE"
  "IN ENUMERATE"
  "IN ZIP"
  (break_statement)
  (continue_statement)
] @repeat
(for_statement "END" @repeat)

"WHILE" @repeat
(while_statement "END" @repeat)

[
  "IF"
  "ELSE IF"
] @conditional
(if_statement "END" @conditional)
(if_statement (else_statement "ELSE" @conditional))

[
  "TRY"
  "EXCEPT"
  "FINALLY"
] @exception
(try_statement "END" @exception)
(try_statement (else_statement "ELSE" @exception))
