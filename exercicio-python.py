def lst(h,list): return [h]+list 
def head(list): h,*t=list; return h
def tail(list): h,*t=list; return t
def null(list): return list==[]
def wlist(list):
    if null(list): print('\n');return None
    else: h,*t=list;print(h, end=" ");wlist(t);exit
    
def compr(list):
    if null(list): return 0
    else: return(1 + compr(tail(list)));
    
def soma(list):
    if null(list): return 0
    else: return(head(list) + soma(tail(list)))

def append(l1,l2):
    if null(l1): return l2
    else: return lst(head(l1), append(tail(l1),l2))

def maxL(list):
    if null(list): return 0
    else:
        if null(tail(list)): return head(list)
        else:
            if maxL(tail(list)) > head(list): return maxL(tail(list))
            else: return head(list)

def ultimo(list):
    if null(list): return 0
    else:
        if null(tail(list)): return head(list)
        else: return ultimo(tail(list))
 
def contiguos(list):
    if null(tail(list)): return False
    else:
        if head(list)==head(tail(list)):
            return True
        else: return contiguos(tail(list))

v1 = 10
v2 = 28
l1 = [1,2,3,4,9,5,5,7,8,11]
l2 = [1,2,3,4]
l3 = []
print('l1');wlist(l1)
print('Comprimento: ',compr(l1));
print('Soma: ',soma(l1));
print('Append: ',append(l1,l2));
print('Maximo da lista: ',maxL(l1));
print('Ultimo: ',ultimo(l1));
print('Contiguos: ',contiguos(l1));