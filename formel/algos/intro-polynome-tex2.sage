def plot_image_cercle(P,r):
    var('t')
    zreal = P(r*exp(I*t)).real()
    zimag = P(r*exp(I*t)).imag()
    G = parametric_plot( (zreal,zimag), (t,0,2*pi) ) 
    return G
