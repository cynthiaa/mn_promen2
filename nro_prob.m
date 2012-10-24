1;

function ret = nro_prob( legajos )

%
% Determina el número de problema a realizar por el grupo
%

    ret = rem( min(legajos), 4 ) + 1;

end

disp( nro_prob( [ 51270 52310 51596 ] ) );
