# Equipe: Camila Lopes, Giovani Moutinho e Iago Wesley
# coding: utf-8

# In[19]:


from sklearn import datasets
import matplotlib.pyplot as plt

iris = datasets.load_iris()
X = iris.data[:, :3]  
y = iris.target


# In[7]:


X


# In[8]:


y


# In[20]:


import numpy
from sklearn.neighbors import KNeighborsClassifier
knn = KNeighborsClassifier(n_neighbors = 4)
yt = numpy.concatenate([y[:40], y[51:90], y[101:140]])
xt = numpy.concatenate([X[:40,:], X[51:90,:], X[101:140,:]])
knn.fit(xt,yt)

#validacão com o restante dos dados
xv = numpy.concatenate([X[40:50,:], X[90:100,:], X[140:150,:]])
yv = numpy.concatenate([y[40:50], y[90:100], y[140:150]])
yp = knn.predict(xv)

print(yp) #resultado encontrado
print(yv) #resultado esperado


# In[21]:


knn.score(xv, yv)

