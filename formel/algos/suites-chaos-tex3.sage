var('x,r')
f(x,r) = r*x*(1-x)             # f
g = f(x=f(x,r))                # g(x) = f(f(x))
pts_doubles = solve(g==x,x)    # (a) Points fixes de g
# Les deux nouveaux points fixes de g :
ell1 = pts_doubles[0].rhs()	
ell2 = pts_doubles[1].rhs()
eq = f(x=ell1)-ell2            # (b) l'image de ell1 est-elle ell2 ?
eq.full_simplify()             # Oui !
