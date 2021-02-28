

function automatic fact;
input n;
output fact;
begin
  if (n<2) fact=1;
  else
  fact=n*fact(n-1);
end
endfunction

fact;

function integer area ;
input integer r;
begin
  area = 3.14*r*r;
  end
  initial
  begin
  xyz=area(5);
  end
end
endfunction

