/**
 * Random: Lexical Grammar.
 *
 * BNF grammar in: grammers/random.bnf
 * Test source code is in: TODO: add text file
 *
 */

{
  rules: [
    // TODO: handle how to store comments (simple, docs)
    ["#.*",                  `/* skip comments */`],

    [`\\s+`,                 `/* skip whitespace */`],

    // ------------------------------------------------
    // Keywords.

    [`let`,                  `return 'LET'`],
    // [`if\\b`,                   `return 'IF'`],
    // [`belse\\b`,                 `return 'ELSE'`],
    // [`\\btrue\\b`,                 `return 'TRUE'`],
    // [`\\bfalse\\b`,                `return 'FALSE'`],
    // [`\\bnull\\b`,                 `return 'NULL'`],
    // [`\\breturn\\b`,               `return 'RETURN'`],
    [`fn`,                   `return 'FN'`],
    // 
    // TODO add type keywords
    // type, case of / match
    //
    // [`\\bdo\\b`,                   `return 'DO'`],
    // [`\\bwhile\\b`,                `return 'WHILE'`],
    // [`\\bfor\\b`,                  `return 'FOR'`],
    // [`\\bbreak\\b`,                `return 'BREAK'`],
    // [`\\bcontinue\\b`,             `return 'CONTINUE'`],

    // ------------------------------------------------
    // Symbols.

    [`\\->`,                    `return 'ARROW'`],

    [`\\(`,                     `return 'LPAREN'`],
    [`\\)`,                     `return 'RPAREN'`],

    [`\\{`,                     `return 'LCURLY'`],
    [`\\}`,                     `return 'RCURLY'`],

    [`\\[`,                     `return 'LBRACKET'`],
    [`\\]`,                     `return 'RBRACKET'`],

    [`:`,                       `return 'COLON'`],
    [`;`,                       `return 'SEMICOLON'`],
    [`,`,                       `return 'COMMA'`],

    [`\\.`,                     `return 'DOT'`],

    // ------------------------------------------------
    // Logical operators: &&, ||,

    [`\\|\\|`,                  `return 'LOGICAL_OR'`],
    [`&&`,                      `return 'LOGICAL_AND'`],

    // ------------------------------------------------
    // Assignment operator: =,

    [`=`,                       `return 'ASSIGN'`],

    // ------------------------------------------------
    // Numbers.

    [`(\\d+(\\.\\d+)?)`,        `return 'NUMBER'`],

    // ------------------------------------------------
    // Equality operators: ==, !=,

    [`(=|!)=`,                  `return 'EQUALITY_OPERATOR'`],

    // ------------------------------------------------
    // Math operators: +, -, *, /,

    [`(\\+|\\-)`,               `return 'ADDITIVE_OPERATOR'`],
    [`(\\*|\\/)`,               `return 'MULTIPLICATIVE_OPERATOR'`],

    // ------------------------------------------------
    // Relational operators: >, >=, <, <=

    [`(>|<)=?`,                 `return 'RELATIONAL_OPERATOR'`],

    // ------------------------------------------------
    // Strings.

    [`"[^"]*"`,                 `yytext = yytext.slice(1, -1); return 'STRING';`],
    [`'[^']*'`,                 `yytext = yytext.slice(1, -1); return 'CHAR';`],

    [`[a-zA-Z_]+`,              `return 'IDENTIFIER'`],
  ],
}
