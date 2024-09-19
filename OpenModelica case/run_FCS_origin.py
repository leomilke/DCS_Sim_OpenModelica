from OMPython import ModelicaSystem
import pandas as pd
import os
dic_name=os.path.dirname(os.path.abspath(__file__))

M=ModelicaSystem(fileName=dic_name+'/Full_Cooling_Sys_origin.mo',modelName='Full_Cooling_Sys_origin')
M.buildModel()
M.setSimulationOptions(['stopTime=86400','stepSize=1'])
M.simulate()

Re=pd.DataFrame(M.getSolutions(['time','P_Total.y'])).T
Re[0]=round(Re[0])
Re[1]=Re[1]/1e3

S=Re[Re[0] == 0].iloc[-1]
for i in range(1800,86400,1800):
    if i<=Re[0].iloc[-1]:
        S=pd.concat([S,Re[Re[0] == i].iloc[-1]],axis=1)
S=S.T
S[0]=S[0]/3600
S.to_excel('Re_origin.xlsx',index=None,header=None)