class Probability:
    def ExpectedValues(self,N=0,P=0,listaN=[],listaP=[]):
            if N!=0:
                Ecategorical = N*P
                return Ecategorical
            elif lista!=[]:
                Enumerical = 0
                for i in listaN:
                    Enumerical += listaN[i]*listaP[i]
                return Enumerical
            
