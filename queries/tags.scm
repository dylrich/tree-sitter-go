(
  (comment)* @doc
  (function_declaration
    name: (identifier) @name) @definition.function
  (#strip! @doc "^//\\s*")
  (#set-adjacent! @doc @definition.function)
)

(
  (comment)* @doc
  (method_declaration
    name: (field_identifier) @name) @definition.method
  (#strip! @doc "^//\\s*")
  (#set-adjacent! @doc @definition.method)
)

(call_expression
  function: [
    (identifier) @name
    (parenthesized_expression (identifier) @name)
    (selector_expression field: (field_identifier) @name)
    (parenthesized_expression (selector_expression field: (field_identifier) @name))
  ]) @reference.call
