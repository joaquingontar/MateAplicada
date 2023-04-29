function ssum = SerieSeno(x,tol,n)
  % SerieSeno.m: Evalua la representacion en serie de la funcion SENO
  % ssum = SerieSeno(x)
  % ssum = SerieSeno(x,tol)
  % ssum = SerieSeno(x,tol,n)
  %
  % ENTRADA:
  % x: argumento de la funcion SENO
  % tol: (optional) tolerancia para sumatoria (por defecto: tol = 5e-9)
  % La serie termina cuando abs(T k/S k) < tol, donde:
  % T k: k-esimo termino y S k suma incluyendo el k-esimo termino
  % n: (optional) máximo numero de terminos (por defecto: n = 15)
  %
  % RESULTADO:
  % ssum: valor de la serie al cabo de n terminos o al satisfacer la tolerancia
  if nargin < 2
     tol = 5e-9;
  end
  if nargin < 3
     n = 15;
  end
  term = x; % Inicializa la serie
  ssum = term;
  fprintf('Valor aproximado de la funcion seno (%f)\n\n n termino serie\n',x)
  fprintf('%3d %11.3e %12.8f \n',1,term,ssum) 
  for k=3:2:(2*n-1) %arranca en k=3 porque el primer termino se definio arriba y el segundo el denominador es 6
    term = -term .* x.*x./(k*(k-1)); % Proximo termino en la serie, recordar que la serie es alternante y son los terminos impares
    ssum = ssum + term; %este contador indica el valor de las sumas parciales hasta n
    
    fprintf('%3d %11.3e %12.8f\n',k,term,ssum) 
    if abs(term/ssum) < tol % Verifica convergencia, error relativo comparado con tolerancia
        break
    end
  end
  fprintf('\n Error Total con %d terminos es %g \n\n',(k+1)/2,abs(ssum-sin(x)))
end