begin
var k, v, h, b: integer;
var g: string;
println('vvedite stroku');
var s := ReadString;
println('vvedite podstroku');
var c := ReadString;
var i := 1;
while (i <= length(s)) do
begin
k := 1;
if s[i] = c[1] then
begin
k := 1;
v := i;
h := 1;
while(k <= length(c)) do
begin
if s[v] = c[k] then
begin
inc(v);
inc(k);
inc(h);
end
else
begin
g := g + s[i];
break;
end;
end;
if h = length(c) + 1 then
begin
k := i;
b := length(c) + i - 1;
while (b >= k) do
begin
g := g + s[b];
b := b - 1;
end;
i := v;
if length(c) + k < length(s) then
g := g + s[i];
end
else
begin
i := v;
g := g + s[i];
end
end
else
g := g + s[i];
inc(i);
end;
println(g);
end.