from OMPython import ModelicaSystem
import pandas as pd
import os

dic_name=os.path.dirname(os.path.abspath(__file__))
writer=pd.ExcelWriter('Ada_Test_MOD.xlsx',engine='openpyxl')
p=100
pr=0

for st in ['fluc','high','low']:
    M=ModelicaSystem(fileName=dic_name+'/Full_Cooling_Sys_Auto_'+st+'_seed_input_mod.mo',modelName='Full_Cooling_Sys_Auto_'+st+'_seed_input_mod')
    M.buildModel()
    M.setSimulationOptions(['stopTime=86400','stepSize=1'])

    D=[]
    for seed in range(p):
        pr+=1
        M.setParameters('Seed_Random_Py='+str(seed))
        M.simulate()
        Time_end=M.getSolutions(['time'])[0][-1]
        if Time_end==86400:
            CB_Run_Time=(list(M.getSolutions(['CB_Run_Final.y'])[0]).count(1))/(3*Time_end)*24
            D.append([Time_end/3600,M.getSolutions(['E_Total_kWh.y'])[0][-1],M.getSolutions(['Cost_total.y'])[0][-1],CB_Run_Time])
        else:
            D.append([Time_end/3600,-1,-1,-1])
        print(pr/3/p*1e2)

    D=pd.DataFrame(D)
    D.to_excel(writer,sheet_name=st,header=['Time_end','E_kWh','Cost','CB_OP_Time'],index=False)
    writer.save()

writer.close()