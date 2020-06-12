def bisection(f, a, b, eps):
    fa = f(a)
    if fa*f(b) > 0:
        return None, 0

    i   = 0 #iteration counter
    
    while abs(b - a) > eps:
        i += 1
        m = (a+b)/2.
        fm = f(m)
        if fa*fm <= 0:
            b = m
        else:
            a = m
            fa = fm
    x = m
    return x, i

def _test():
    def f(x):
        from math import sin
        return sin(x+1)+x

    a = -1
    b = 1
    eps = 0.00001

    print bisection(f,a,b,eps)

if __name__ == '__main__':
    _test()
