package html;

%%
%class lexer
%state READTEXT
%type String

%{
    public String text = "";
%}

init = "<"
end = ">"
anything = [\s][\S]
open = {init}{anything}{end} 
close = {init}"/"{anything}{end}

%%

<YYINITIAL>
{
    {open}      {System.out.println(yytext()+" hola");}
    {close}     {return "ahuevo";}
    .           {System.out.println("ash");}
    
}

