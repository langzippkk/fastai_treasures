from local.test import *
from local.imports import *
from local.notebook.showdoc import show_doc
from local.core import patch


#######################
# noop(x=None, *args, **kwargs) => do nothing to `x`, just return it

def noop (x=None, *args, **kwargs):
    """
    why need `noop(...)`
    - sometimes, we want the option of just doing nothing
    - as a stand alone function
    - no matter what kind of args you feed this func, it just return x

    how to use noop(...)
    - noop(x, *args, **kwargs)
    """
    return x

noop()
test_eq(noop(1),1)


########################
# noops(self, x, *args, **kwargs) => do nothing
    # = to be a method of any class, since it uses `self`

def noops(self, x, *args, **kwargs):
    """
    why noops(self, ...)
    1. sometimes we want a class to have a method just doing nothing
    2. but return the input x and ignore all other args
    3. to readily use this method as the example shown below
    """
    return x


class _t(): foo=noops
test_eq(_t().foo(1),1)
