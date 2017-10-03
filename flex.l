%{
  //Aqui va algo xd
%}

white [ \t\n]+
digit [0-9]
integer {digit}+
real {integer}("."{integer})?
parentesis (\([\s\S]+\))
corchetes (\{[\s\S]+\})
if (if){parentesis}{corchetes}
elsif {if}(else if)(parentesis)(corchetes)
else {if}({elsif})?(else){corchetes}


%%

{white} { }
{real} return NUMBER;
{if} return IF;
{elsif} return ELSIF;
{else} return ELSE;

"+" return PLUS;
"-" return MINUS;
"*" return TIMES;
"/" return DIVIDE;
"(" return LEFT;
")" return RIGHT;
"{" return START;
"}" return END;
"&" return AND;
"|" return OR;
"~" return NOT;
"^" return XOR;

%%

//Aquí va algo más xd
