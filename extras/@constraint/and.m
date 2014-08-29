function F = and(X,Y)
% Internal class for constraint list

% Author Johan L�fberg
% $Id: and.m,v 1.2 2004-07-19 13:54:35 johanl Exp $

if isa(X,'sdpvar')
    X = true(X);
end
if isa(Y,'sdpvar')
    Y = true(Y);
end
if isa(X,'constraint')
    X = lmi(X);
end
if isa(Y,'constraint')
    Y = lmi(Y);
end

F = X & Y;