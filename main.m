% Main Function


clc
clear 
%---- Number of vertices and Edges.
n=input('enter the no.of vertices');
g=zeros(n,n);
m=input('enter the no.of edges');
%---- Connectivity between the vertoces and edges. 
for i=1:1:m
   x= input('enter the from vertex');
   y=input('enter the to vertex');
    g(x,y)=1;
    g(y,x)=1; 
end

% Color Codes to identify the status of vertices.
% 0- Not Visited. 
% 1-Visited.
% 2-Added to the set.
color=zeros(n,1);

f=0;
while(atle(color,n))
%----Finding maximum degree vertex.
    k=degfind(g,n,color); 
%---- Marking its Neighbors.     
for i=1:1:n
    if(g(k,i)==1&&color(i)==0)
        color(k)=2;
        color(i)=1;
        g(k,i)=0;
        g(i,k)=0;
    end
end

end

%---- Printing the vertices in the Dominating Set.
for i=1:1:n
   if(color(i)==2)
       i
   end
end

