
var i2: integer;
var p:array[1..9999] of integer;
   var v: integer;
   begin
     for var i:=1 to 10 do
       begin
      p[i]+=Random(-100,100);
      Print(p[i]+3,'  ');
   end;
   PrintLN;
   v+=1;
   i2+=2;
   For var i:=1 to 9 do
      For var j:=i+1 to 10 do
         If Abs(p[i]-p[j])>Abs(p[v]-p[i2]) then
         begin
            v:=i;
            i2:=j;
         end;
   Print('|p[',v,'] - p[',i2,']| = ',Abs(p[v]-p[i2]));
end.