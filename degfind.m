function k=degfind(g,n,color)
t=0;
for i=1:1:n
  if(color(i)~=2)
      if(sum(g(i,:))>t)
          t=sum(g(i,:));
          k=i;
      end
  end
end
end
