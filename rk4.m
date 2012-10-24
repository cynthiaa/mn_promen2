
E = [0 30 150 400 500 460 350 230 130 60 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
A = [0 0.1 1.4 7 8.5 42 80 140 230 330 480 700 1000 1100 1600];


function Y = rk4(a,b, y0, h)

	M=(b-a)/h;
	T=a:h:b;
	Y=zeros(1,M+1);
	Y(1)=y0;
	for j=1:M
		k1 = h*f(T(j), Y(j));
		k2 = h*f(T(j)+h/2, Y(j)+k1/2);
		k3 = h*f(T(j)+h/2, Y(j)+k2/2);
		k4 = h*f(T(j)+h, Y(j)+k3);
		Y(j+1)=Y(j)+(k1+2*k2+2*k3+k4)/6;
	end
end

function a = f(t, y)
	a= (E(t)-S(t))/A(y);
end

function s = S(t)
	ht=h(t);
	if(ht>30)
		s=30*(ht-30)^(3/2);
	else
		s=0;
end