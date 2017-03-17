clc
clear 
n=input('enter the no.of vertices');
g=zeros(n,n);

m=input('enter the no.of edges');

for i=1:1:m
   x= input('enter the from vertex');
   y=input('enter the to vertex');
    g(x,y)=1;
    g(y,x)=1; 
end
color=zeros(n,1);

f=0;

while(atle(color,n))
    k=degfind(g,n,color);%finding maximum degree vertex
    
for i=1:1:n
    if(g(k,i)==1&&color(i)==0)
        color(k)=2;
        color(i)=1;
        g(k,i)=0;
        g(i,k)=0;
    end
end

end

for i=1:1:n
   if(color(i)==2)
       i
   end
end

