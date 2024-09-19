model Full_Cooling_Sys_Auto_low_seed_input_mod
  
  parameter Real RunTime=21600;
  parameter Integer Seed_Random_Py;
  
  package Medium1 = Buildings.Media.Water "Medium model";
  package Medium2 = Buildings.Media.Water "Medium model";
  parameter Modelica.Units.SI.TemperatureDifference dTEva_nominal = -8 "Temperature difference evaporator outlet-inlet";
  parameter Modelica.Units.SI.TemperatureDifference dTCon_nominal = 6 "Temperature difference condenser outlet-inlet";
  Buildings.Fluid.Chillers.Carnot_TEva chi_Storage_1(COP_nominal = 5.27, redeclare package Medium1 = Buildings.Media.Water, redeclare package Medium2 = Buildings.Media.Water, QEva_flow_nominal(displayUnit = "W") = -7030000, TCon_nominal = 309.15, TEva_nominal = 280.15, allowFlowReversal1 = false, allowFlowReversal2 = false, dTCon_nominal = 6, dTEva_nominal = -8, dp1_nominal(displayUnit = "Pa") = 148000, dp2_nominal(displayUnit = "Pa") = 110000, m1_flow_nominal = 333.06, m2_flow_nominal = 210, show_T = true, use_eta_Carnot_nominal = false) annotation(
    Placement(transformation(origin = {-214, 156}, extent = {{10, -10}, {30, 10}})));
  Buildings.Fluid.Sources.MassFlowSource_T sou1_Storage_1(redeclare package Medium = Buildings.Media.Water, T = 303.15, nPorts = 1, use_T_in = false, use_m_flow_in = true) annotation(
    Placement(transformation(origin = {-214, 156}, extent = {{-50, -4}, {-30, 16}})));
  Buildings.Fluid.Sources.MassFlowSource_T sou2_Storage_1(redeclare package Medium = Buildings.Media.Water, T = 288.15, m_flow = 210, nPorts = 1, use_T_in = false, use_m_flow_in = true) annotation(
    Placement(transformation(origin = {-224, 156}, extent = {{80, -16}, {60, 4}})));
  Buildings.Fluid.Sources.Boundary_pT sin1_Storage_1(redeclare package Medium = Buildings.Media.Water, T = 309.15, nPorts = 1) annotation(
    Placement(transformation(origin = {-144, 186}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT sin2_Storage_1(redeclare package Medium = Buildings.Media.Water, T = 280.15, nPorts = 1) annotation(
    Placement(transformation(origin = {-254, 126}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain mCon_flow_Storage_1(k = 1/cp1_default/dTCon_nominal) annotation(
    Placement(transformation(origin = {-214, 156}, extent = {{-80, 4}, {-60, 24}})));
  Modelica.Blocks.Math.Add QCon_flow_Storage_1(k2 = -1) annotation(
    Placement(transformation(origin = {-214, 156}, extent = {{48, -50}, {68, -30}})));
  Modelica.Blocks.Sources.Constant const_TEva_out_Storage_1(k = 280.15) annotation(
    Placement(transformation(origin = {-226, 192}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Chillers.Carnot_TEva chi_Storage_2(COP_nominal = 5.27, redeclare package Medium1 = Buildings.Media.Water, redeclare package Medium2 = Buildings.Media.Water, QEva_flow_nominal(displayUnit = "W") = -7030000, TCon_nominal = 309.15, TEva_nominal = 280.15, allowFlowReversal1 = false, allowFlowReversal2 = false, dTCon_nominal = 6, dTEva_nominal = -8, dp1_nominal(displayUnit = "Pa") = 148000, dp2_nominal(displayUnit = "Pa") = 110000, m1_flow_nominal = 333.06, m2_flow_nominal = 210, show_T = true, use_eta_Carnot_nominal = false) annotation(
    Placement(transformation(origin = {-214, -2}, extent = {{10, -10}, {30, 10}})));
  Buildings.Fluid.Sources.MassFlowSource_T sou1_Storage_2(redeclare package Medium = Buildings.Media.Water, T = 303.15, nPorts = 1, use_T_in = false, use_m_flow_in = true) annotation(
    Placement(transformation(origin = {-214, -2}, extent = {{-50, -4}, {-30, 16}})));
  Buildings.Fluid.Sources.MassFlowSource_T sou2_Storage_2(redeclare package Medium = Buildings.Media.Water, T = 288.15, m_flow = 210, nPorts = 1, use_T_in = false, use_m_flow_in = true) annotation(
    Placement(transformation(origin = {-224, -2}, extent = {{80, -16}, {60, 4}})));
  Buildings.Fluid.Sources.Boundary_pT sin1_Storage_2(redeclare package Medium = Buildings.Media.Water, T = 309.15, nPorts = 1) annotation(
    Placement(transformation(origin = {-144, 26}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT sin2_Storage_2(redeclare package Medium = Buildings.Media.Water, T = 280.15, nPorts = 1) annotation(
    Placement(transformation(origin = {-254, -32}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain mCon_flow_Storage_2(k = 1/cp1_default/dTCon_nominal) annotation(
    Placement(transformation(origin = {-214, -2}, extent = {{-80, 4}, {-60, 24}})));
  Modelica.Blocks.Math.Add QCon_flow_Storage_2(k2 = -1) annotation(
    Placement(transformation(origin = {-214, -2}, extent = {{48, -50}, {68, -30}})));
  Modelica.Blocks.Sources.Constant const_TEva_out_Storage_2(k = 280.15) annotation(
    Placement(transformation(origin = {-226, 34}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Chillers.Carnot_TEva chi_Storage_3(COP_nominal = 5.27, redeclare package Medium1 = Buildings.Media.Water, redeclare package Medium2 = Buildings.Media.Water, QEva_flow_nominal(displayUnit = "W") = -7030000, TCon_nominal = 309.15, TEva_nominal = 280.15, allowFlowReversal1 = false, allowFlowReversal2 = false, dTCon_nominal = 6, dTEva_nominal = -8, dp1_nominal(displayUnit = "Pa") = 148000, dp2_nominal(displayUnit = "Pa") = 110000, m1_flow_nominal = 333.06, m2_flow_nominal = 210, show_T = true, use_eta_Carnot_nominal = false) annotation(
    Placement(transformation(origin = {-214, -168}, extent = {{10, -10}, {30, 10}})));
  Buildings.Fluid.Sources.MassFlowSource_T sou1_Storage_3(redeclare package Medium = Buildings.Media.Water, T = 303.15, nPorts = 1, use_T_in = false, use_m_flow_in = true) annotation(
    Placement(transformation(origin = {-214, -168}, extent = {{-50, -4}, {-30, 16}})));
  Buildings.Fluid.Sources.MassFlowSource_T sou2_Storage_3(redeclare package Medium = Buildings.Media.Water, T = 288.15, m_flow = 210, nPorts = 1, use_T_in = false, use_m_flow_in = true) annotation(
    Placement(transformation(origin = {-222, -168}, extent = {{80, -16}, {60, 4}})));
  Buildings.Fluid.Sources.Boundary_pT sin1_Storage_3(redeclare package Medium = Buildings.Media.Water, T = 309.15, nPorts = 1) annotation(
    Placement(transformation(origin = {-144, -138}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT sin2_Storage_3(redeclare package Medium = Buildings.Media.Water, T = 280.15, nPorts = 1) annotation(
    Placement(transformation(origin = {-254, -198}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain mCon_flow_Storage_3(k = 1/cp1_default/dTCon_nominal) annotation(
    Placement(transformation(origin = {-214, -168}, extent = {{-80, 4}, {-60, 24}})));
  Modelica.Blocks.Math.Add QCon_flow_Storage_3(k2 = -1) annotation(
    Placement(transformation(origin = {-214, -168}, extent = {{48, -50}, {68, -30}})));
  Modelica.Blocks.Sources.Constant const_TEva_out_Storage_3(k = 280.15) annotation(
    Placement(transformation(origin = {-226, -132}, extent = {{-10, -10}, {10, 10}})));
  final parameter Modelica.Units.SI.SpecificHeatCapacity cp1_default = Medium1.specificHeatCapacityCp(Medium1.setState_pTX(Medium1.p_default, Medium1.T_default, Medium1.X_default)) "Specific heat capacity of medium 1 at default medium state";
  Buildings.Fluid.Chillers.Carnot_TEva chi_Base_1(COP_nominal = 5.21, redeclare package Medium1 = Buildings.Media.Water, redeclare package Medium2 = Buildings.Media.Water, QEva_flow_nominal(displayUnit = "W") = -3510000, TCon_nominal = 309.15, TEva_nominal = 280.15, allowFlowReversal1 = false, allowFlowReversal2 = false, dTCon_nominal = 6, dTEva_nominal = -7.3, dp1_nominal(displayUnit = "Pa") = 97000, dp2_nominal(displayUnit = "Pa") = 82000, m1_flow_nominal = 166.94, m2_flow_nominal = 116.67, show_T = true, use_eta_Carnot_nominal = false) annotation(
    Placement(transformation(origin = {232, 110}, extent = {{10, -10}, {30, 10}})));
  Buildings.Fluid.Sources.MassFlowSource_T sou1_Base_1(redeclare package Medium = Buildings.Media.Water, T = 303.15, nPorts = 1, use_T_in = false, use_m_flow_in = true) annotation(
    Placement(transformation(origin = {232, 110}, extent = {{-50, -4}, {-30, 16}})));
  Buildings.Fluid.Sources.MassFlowSource_T sou2_Base_1(redeclare package Medium = Buildings.Media.Water, T = 287.45, m_flow = 116.67, nPorts = 1, use_T_in = false, use_m_flow_in = true) annotation(
    Placement(transformation(origin = {220, 110}, extent = {{80, -16}, {60, 4}})));
  Buildings.Fluid.Sources.Boundary_pT sin1_Base_1(redeclare package Medium = Buildings.Media.Water, T = 309.15, nPorts = 1) annotation(
    Placement(transformation(origin = {302, 140}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT sin2_Base_1(redeclare package Medium = Buildings.Media.Water, T = 280.15, nPorts = 1) annotation(
    Placement(transformation(origin = {192, 80}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain mCon_flow_Base_1(k = 1/cp1_default/dTCon_nominal) annotation(
    Placement(transformation(origin = {232, 110}, extent = {{-80, 4}, {-60, 24}})));
  Modelica.Blocks.Math.Add QCon_flow_Base_1(k2 = -1) annotation(
    Placement(transformation(origin = {232, 110}, extent = {{48, -50}, {68, -30}})));
  Modelica.Blocks.Sources.Constant const_TEva_out_Base_1(k = 280.15) annotation(
    Placement(transformation(origin = {220, 146}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Chillers.Carnot_TEva chi_Base_2(COP_nominal = 5.04, redeclare package Medium1 = Buildings.Media.Water, redeclare package Medium2 = Buildings.Media.Water, QEva_flow_nominal(displayUnit = "W") = -3510000, TCon_nominal = 309.15, TEva_nominal = 280.15, allowFlowReversal1 = false, allowFlowReversal2 = false, dTCon_nominal = 6, dTEva_nominal = -7.3, dp1_nominal(displayUnit = "Pa") = 97000, dp2_nominal(displayUnit = "Pa") = 81000, m1_flow_nominal = 166.94, m2_flow_nominal = 115.28, show_T = true, use_eta_Carnot_nominal = false) annotation(
    Placement(transformation(origin = {232, -86}, extent = {{10, -10}, {30, 10}})));
  Buildings.Fluid.Sources.MassFlowSource_T sou1_Base_2(redeclare package Medium = Buildings.Media.Water, T = 303.15, nPorts = 1, use_T_in = false, use_m_flow_in = true) annotation(
    Placement(transformation(origin = {232, -86}, extent = {{-50, -4}, {-30, 16}})));
  Buildings.Fluid.Sources.MassFlowSource_T sou2_Base_2(redeclare package Medium = Buildings.Media.Water, T = 287.45, m_flow = 115.28, nPorts = 1, use_T_in = false, use_m_flow_in = true) annotation(
    Placement(transformation(origin = {220, -86}, extent = {{80, -16}, {60, 4}})));
  Buildings.Fluid.Sources.Boundary_pT sin1_Base_2(redeclare package Medium = Buildings.Media.Water, T = 309.15, nPorts = 1) annotation(
    Placement(transformation(origin = {302, -56}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT sin2_Base_2(redeclare package Medium = Buildings.Media.Water, T = 280.15, nPorts = 1) annotation(
    Placement(transformation(origin = {192, -116}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain mCon_flow_Base_2(k = 1/cp1_default/dTCon_nominal) annotation(
    Placement(transformation(origin = {232, -86}, extent = {{-80, 4}, {-60, 24}})));
  Modelica.Blocks.Math.Add QCon_flow_Base_2(k2 = -1) annotation(
    Placement(transformation(origin = {232, -86}, extent = {{48, -50}, {68, -30}})));
  Modelica.Blocks.Sources.Constant const_TEva_out_Base_2(k = 280.15) annotation(
    Placement(transformation(origin = {220, -50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const_sou2_Storage_1(k = 210)  annotation(
    Placement(transformation(origin = {-126, 132}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Sources.Constant const_sou2_Storage_2(k = 210)  annotation(
    Placement(transformation(origin = {-124, -24}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Sources.Constant const_sou2_Storage_3(k = 210)  annotation(
    Placement(transformation(origin = {-122, -186}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Sources.Constant const_sou2_Base_2(k = 115.28)  annotation(
    Placement(transformation(origin = {320, -98}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Sources.Constant const_sou2_Base_1(k = 116.67)  annotation(
    Placement(transformation(origin = {320, 88}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Math.Add3 m_flow_sum_CS annotation(
    Placement(transformation(origin = {-54, 64}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sources.MassFlowSource_T sou_mass_CSsum(redeclare package Medium = Buildings.Media.Water, use_m_flow_in = true, nPorts = 1)  annotation(
    Placement(transformation(origin = {40, -4}, extent = {{-80, -16}, {-60, 4}})));
  Modelica.Fluid.Vessels.OpenTank CW_tank(height = 16, crossArea = 5000, redeclare package Medium = Buildings.Media.Water, use_portsData = false, nPorts = 2, level_start = 0)  annotation(
    Placement(transformation(origin = {0, 34}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Sources.CombiTimeTable TimeSeriesData(tableOnFile = true, tableName = "T", fileName = "C:/Users/leomilke/Desktop/XXX/d_day.txt", smoothness = Modelica.Blocks.Types.Smoothness.ConstantSegments, columns = {2, 3, 4})  annotation(
    Placement(transformation(origin = {-50, -40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add m_flow_sum_CB annotation(
    Placement(transformation(origin = {170, 10}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Math.Add mflow_out_Tank(k1 = -1)  annotation(
    Placement(transformation(origin = {68, -26}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
  Buildings.Fluid.Sources.MassFlowSource_T sou_mass_TankOUT(redeclare package Medium = Buildings.Media.Water, use_m_flow_in = true, nPorts = 1)  annotation(
    Placement(transformation(origin = {-58, -14}, extent = {{80, -16}, {60, 4}}, rotation = -0)));
  Modelica.Blocks.Math.Gain gain(k = -1)  annotation(
    Placement(transformation(origin = {37, -33}, extent = {{5, -5}, {-5, 5}})));
  Modelica.Blocks.Sources.Constant P_CWpumps_CS1(k = 250)  annotation(
    Placement(transformation(origin = {-188, 210}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant P_CWpumps_CS2(k = 250)  annotation(
    Placement(transformation(origin = {-184, 48}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add P_CS1(k1 = +1000)  annotation(
    Placement(transformation(origin = {-122, 212}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add P_CS2(k1 = +1000)  annotation(
    Placement(transformation(origin = {-122, 52}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant P_CWpumps_CS3(k = 250)  annotation(
    Placement(transformation(origin = {-190, -112}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add P_CS3(k1 = +1000)  annotation(
    Placement(transformation(origin = {-124, -112}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant P_CWpumps_CB1(k = 127)  annotation(
    Placement(transformation(origin = {266, 160}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
  Modelica.Blocks.Math.Add P_CB1(k1 = +1000)  annotation(
    Placement(transformation(origin = {134, 42}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
  Modelica.Blocks.Sources.Constant P_CWpumps_CB2(k = 135)  annotation(
    Placement(transformation(origin = {256, -34}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Math.Add P_CB2(k1 = +1000)  annotation(
    Placement(transformation(origin = {134, -152}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Math.Add3 P_CS annotation(
    Placement(transformation(origin = {-56, -118}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add P_CB annotation(
    Placement(transformation(origin = {60, -118}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
  Modelica.Blocks.Math.Add P_C annotation(
    Placement(transformation(origin = {20, -180}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Product P_CS_Real annotation(
    Placement(transformation(origin = {-16, -122}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Step step(startTime = RunTime)  annotation(
    Placement(transformation(origin = {-70, -174}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add Bool_CS_Run(k1 = -1)  annotation(
    Placement(transformation(origin = {-26, -202}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const(k = 1)  annotation(
    Placement(transformation(origin = {-70, -206}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add P_Total(k2 = +1000)  annotation(
    Placement(transformation(origin = {70, -186}, extent = {{-10, 10}, {10, -10}}, rotation = -0)));
  Modelica.Blocks.Math.Product m_flow_sum_CS_Real annotation(
    Placement(transformation(origin = {-58, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Product m_flow_sum_CB_Real annotation(
    Placement(transformation(origin = {124, 10}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
  Modelica.Blocks.Sources.CombiTimeTable TankCW_M_B(tableOnFile = true, tableName = "T", fileName = "C:/Users/leomilke/Desktop/XXX/CWTank_m_base.txt", columns = {2}, smoothness = Modelica.Blocks.Types.Smoothness.LinearSegments)  annotation(
    Placement(transformation(origin = {220, -230}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Math.Product P_CB_Real annotation(
    Placement(transformation(origin = {12, -144}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Noise.UniformNoise uniformNoise(fixedLocalSeed = Seed_Random_Py, samplePeriod = 900, useAutomaticLocalSeed = false, useGlobalSeed = true, y_max = 0, y_min = -50, enableNoise = true) annotation(
    Placement(transformation(origin = {-50, -74}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add m_demand_real annotation(
    Placement(transformation(origin = {52, -76}, extent = {{-10, -10}, {10, 10}}, rotation = -0)));
  Modelica.Blocks.Logical.Greater CB_Run_index annotation(
    Placement(transformation(origin = {108, -230}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
  Modelica.Blocks.Math.BooleanToReal CB_Run_Final annotation(
    Placement(transformation(origin = {68, -230}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
  Modelica.Blocks.Math.Add m_in_Tank annotation(
    Placement(transformation(origin = {52, 34}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Continuous.Integrator M_CW annotation(
    Placement(transformation(origin = {84, 76}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Discrete.Sampler sampler(samplePeriod = 600)  annotation(
    Placement(transformation(origin = {178, -230}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Discrete.Sampler sampler1(samplePeriod = 600) annotation(
    Placement(transformation(origin = {144, -212}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y = exp(-(time/86400 - 0.5)^2/(2*0.2^2))/(0.2*sqrt(2*Modelica.Constants.pi))/2) annotation(
    Placement(transformation(origin = {-30, -98}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Product product annotation(
    Placement(transformation(origin = {16, -92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain cost_kWh2J(k = 1/3600000)  annotation(
    Placement(transformation(origin = {-12, 100}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Product cost_per_s annotation(
    Placement(transformation(origin = {16, 122}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Blocks.Continuous.Integrator Cost_total annotation(
    Placement(transformation(origin = {54, 122}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.Integrator E_Total_kWh(k = 1/3600000) annotation(
    Placement(transformation(origin = {22, -222}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
  Modelica.Blocks.Sources.RealExpression realExpression1(y = 0.08459*m_demand_real.y^1.286)  annotation(
    Placement(transformation(origin = {64, -146}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression(y = time > 75600)  annotation(
    Placement(transformation(origin = {-50, -236}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.MathBoolean.Or or1(nu = 2)  annotation(
    Placement(transformation(origin = {-14, -234}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(sou1_Storage_1.ports[1], chi_Storage_1.port_a1) annotation(
    Line(points = {{-244, 162}, {-204, 162}}, color = {0, 127, 255}));
  connect(sou2_Storage_1.ports[1], chi_Storage_1.port_a2) annotation(
    Line(points = {{-164, 150}, {-184, 150}}, color = {0, 127, 255}));
  connect(sin2_Storage_1.ports[1], chi_Storage_1.port_b2) annotation(
    Line(points = {{-244, 126}, {-214, 126}, {-214, 150}, {-204, 150}}, color = {0, 127, 255}));
  connect(chi_Storage_1.P, QCon_flow_Storage_1.u1) annotation(
    Line(points = {{-183, 156}, {-174, 156}, {-174, 122}, {-168, 122}}, color = {0, 0, 127}));
  connect(chi_Storage_1.QEva_flow, QCon_flow_Storage_1.u2) annotation(
    Line(points = {{-183, 147}, {-178, 147}, {-178, 110}, {-168, 110}}, color = {0, 0, 127}));
  connect(QCon_flow_Storage_1.y, mCon_flow_Storage_1.u) annotation(
    Line(points = {{-145, 116}, {-134, 116}, {-134, 96}, {-306, 96}, {-306, 170}, {-296, 170}}, color = {0, 0, 127}));
  connect(mCon_flow_Storage_1.y, sou1_Storage_1.m_flow_in) annotation(
    Line(points = {{-273, 170}, {-266, 170}}, color = {0, 0, 127}));
  connect(chi_Storage_1.port_b1, sin1_Storage_1.ports[1]) annotation(
    Line(points = {{-184, 162}, {-164, 162}, {-164, 186}, {-154, 186}}, color = {0, 127, 255}));
  connect(const_TEva_out_Storage_1.y, chi_Storage_1.TSet) annotation(
    Line(points = {{-215, 192}, {-206, 192}, {-206, 166}}, color = {0, 0, 127}));
  connect(sou1_Storage_2.ports[1], chi_Storage_2.port_a1) annotation(
    Line(points = {{-244, 4}, {-204, 4}}, color = {0, 127, 255}));
  connect(sou2_Storage_2.ports[1], chi_Storage_2.port_a2) annotation(
    Line(points = {{-164, -8}, {-184, -8}}, color = {0, 127, 255}));
  connect(sin2_Storage_2.ports[1], chi_Storage_2.port_b2) annotation(
    Line(points = {{-244, -32}, {-214, -32}, {-214, -8}, {-204, -8}}, color = {0, 127, 255}));
  connect(chi_Storage_2.P, QCon_flow_Storage_2.u1) annotation(
    Line(points = {{-183, -2}, {-174, -2}, {-174, -36}, {-168, -36}}, color = {0, 0, 127}));
  connect(chi_Storage_2.QEva_flow, QCon_flow_Storage_2.u2) annotation(
    Line(points = {{-183, -11}, {-178, -11}, {-178, -48}, {-168, -48}}, color = {0, 0, 127}));
  connect(QCon_flow_Storage_2.y, mCon_flow_Storage_2.u) annotation(
    Line(points = {{-145, -42}, {-134, -42}, {-134, -62}, {-306, -62}, {-306, 12}, {-296, 12}}, color = {0, 0, 127}));
  connect(mCon_flow_Storage_2.y, sou1_Storage_2.m_flow_in) annotation(
    Line(points = {{-273, 12}, {-266, 12}}, color = {0, 0, 127}));
  connect(chi_Storage_2.port_b1, sin1_Storage_2.ports[1]) annotation(
    Line(points = {{-184, 4}, {-164, 4}, {-164, 26}, {-154, 26}}, color = {0, 127, 255}));
  connect(const_TEva_out_Storage_2.y, chi_Storage_2.TSet) annotation(
    Line(points = {{-215, 34}, {-206, 34}, {-206, 8}}, color = {0, 0, 127}));
  connect(sou1_Storage_3.ports[1], chi_Storage_3.port_a1) annotation(
    Line(points = {{-244, -162}, {-204, -162}}, color = {0, 127, 255}));
  connect(sou2_Storage_3.ports[1], chi_Storage_3.port_a2) annotation(
    Line(points = {{-162, -174}, {-184, -174}}, color = {0, 127, 255}));
  connect(sin2_Storage_3.ports[1], chi_Storage_3.port_b2) annotation(
    Line(points = {{-244, -198}, {-214, -198}, {-214, -174}, {-204, -174}}, color = {0, 127, 255}));
  connect(chi_Storage_3.P, QCon_flow_Storage_3.u1) annotation(
    Line(points = {{-183, -168}, {-174, -168}, {-174, -202}, {-168, -202}}, color = {0, 0, 127}));
  connect(chi_Storage_3.QEva_flow, QCon_flow_Storage_3.u2) annotation(
    Line(points = {{-183, -177}, {-178, -177}, {-178, -214}, {-168, -214}}, color = {0, 0, 127}));
  connect(QCon_flow_Storage_3.y, mCon_flow_Storage_3.u) annotation(
    Line(points = {{-145, -208}, {-134, -208}, {-134, -228}, {-306, -228}, {-306, -154}, {-296, -154}}, color = {0, 0, 127}));
  connect(mCon_flow_Storage_3.y, sou1_Storage_3.m_flow_in) annotation(
    Line(points = {{-273, -154}, {-266, -154}}, color = {0, 0, 127}));
  connect(chi_Storage_3.port_b1, sin1_Storage_3.ports[1]) annotation(
    Line(points = {{-184, -162}, {-164, -162}, {-164, -138}, {-154, -138}}, color = {0, 127, 255}));
  connect(const_TEva_out_Storage_3.y, chi_Storage_3.TSet) annotation(
    Line(points = {{-215, -132}, {-206, -132}, {-206, -158}}, color = {0, 0, 127}));
  connect(sou1_Base_1.ports[1], chi_Base_1.port_a1) annotation(
    Line(points = {{202, 116}, {242, 116}}, color = {0, 127, 255}));
  connect(sou2_Base_1.ports[1], chi_Base_1.port_a2) annotation(
    Line(points = {{280, 104}, {262, 104}}, color = {0, 127, 255}));
  connect(sin2_Base_1.ports[1], chi_Base_1.port_b2) annotation(
    Line(points = {{202, 80}, {232, 80}, {232, 104}, {242, 104}}, color = {0, 127, 255}));
  connect(chi_Base_1.P, QCon_flow_Base_1.u1) annotation(
    Line(points = {{263, 110}, {272, 110}, {272, 76}, {278, 76}}, color = {0, 0, 127}));
  connect(chi_Base_1.QEva_flow, QCon_flow_Base_1.u2) annotation(
    Line(points = {{263, 101}, {268, 101}, {268, 64}, {278, 64}}, color = {0, 0, 127}));
  connect(QCon_flow_Base_1.y, mCon_flow_Base_1.u) annotation(
    Line(points = {{301, 70}, {312, 70}, {312, 56}, {140, 56}, {140, 124}, {150, 124}}, color = {0, 0, 127}));
  connect(mCon_flow_Base_1.y, sou1_Base_1.m_flow_in) annotation(
    Line(points = {{173, 124}, {180, 124}}, color = {0, 0, 127}));
  connect(chi_Base_1.port_b1, sin1_Base_1.ports[1]) annotation(
    Line(points = {{262, 116}, {282, 116}, {282, 140}, {292, 140}}, color = {0, 127, 255}));
  connect(const_TEva_out_Base_1.y, chi_Base_1.TSet) annotation(
    Line(points = {{231, 146}, {240, 146}, {240, 120}}, color = {0, 0, 127}));
  connect(sou1_Base_2.ports[1], chi_Base_2.port_a1) annotation(
    Line(points = {{202, -80}, {242, -80}}, color = {0, 127, 255}));
  connect(sou2_Base_2.ports[1], chi_Base_2.port_a2) annotation(
    Line(points = {{280, -92}, {262, -92}}, color = {0, 127, 255}));
  connect(sin2_Base_2.ports[1], chi_Base_2.port_b2) annotation(
    Line(points = {{202, -116}, {232, -116}, {232, -92}, {242, -92}}, color = {0, 127, 255}));
  connect(chi_Base_2.P, QCon_flow_Base_2.u1) annotation(
    Line(points = {{263, -86}, {272, -86}, {272, -120}, {278, -120}}, color = {0, 0, 127}));
  connect(chi_Base_2.QEva_flow, QCon_flow_Base_2.u2) annotation(
    Line(points = {{263, -95}, {268, -95}, {268, -132}, {278, -132}}, color = {0, 0, 127}));
  connect(QCon_flow_Base_2.y, mCon_flow_Base_2.u) annotation(
    Line(points = {{301, -126}, {312, -126}, {312, -138}, {140, -138}, {140, -72}, {150, -72}}, color = {0, 0, 127}));
  connect(mCon_flow_Base_2.y, sou1_Base_2.m_flow_in) annotation(
    Line(points = {{173, -72}, {180, -72}}, color = {0, 0, 127}));
  connect(chi_Base_2.port_b1, sin1_Base_2.ports[1]) annotation(
    Line(points = {{262, -80}, {282, -80}, {282, -56}, {292, -56}}, color = {0, 127, 255}));
  connect(const_TEva_out_Base_2.y, chi_Base_2.TSet) annotation(
    Line(points = {{231, -50}, {240, -50}, {240, -76}}, color = {0, 0, 127}));
  connect(sou2_Storage_1.m_flow_in, const_sou2_Storage_1.y) annotation(
    Line(points = {{-142, 158}, {-137, 158}, {-137, 132}}, color = {0, 0, 127}));
  connect(sou2_Storage_2.m_flow_in, const_sou2_Storage_2.y) annotation(
    Line(points = {{-142, 0}, {-142, -15}, {-135, -15}, {-135, -24}}, color = {0, 0, 127}));
  connect(sou2_Storage_3.m_flow_in, const_sou2_Storage_3.y) annotation(
    Line(points = {{-140, -166}, {-133, -166}, {-133, -186}}, color = {0, 0, 127}));
  connect(sou2_Base_2.m_flow_in, const_sou2_Base_2.y) annotation(
    Line(points = {{302, -84}, {307, -84}, {307, -98}, {309, -98}}, color = {0, 0, 127}));
  connect(sou2_Base_1.m_flow_in, const_sou2_Base_1.y) annotation(
    Line(points = {{302, 112}, {309, 112}, {309, 88}}, color = {0, 0, 127}));
  connect(const_sou2_Storage_1.y, m_flow_sum_CS.u1) annotation(
    Line(points = {{-137, 132}, {-139.5, 132}, {-139.5, 114}, {-139, 114}, {-139, 106}, {-66, 106}, {-66, 72}}, color = {0, 0, 127}));
  connect(const_sou2_Storage_2.y, m_flow_sum_CS.u2) annotation(
    Line(points = {{-135, -24}, {-135, 16}, {-94, 16}, {-94, 64}, {-66, 64}}, color = {0, 0, 127}));
  connect(const_sou2_Storage_3.y, m_flow_sum_CS.u3) annotation(
    Line(points = {{-133, -186}, {-139.75, -186}, {-139.75, -198}, {-138.5, -198}, {-138.5, -206}, {-102, -206}, {-102, -154}, {-86, -154}, {-86, 56}, {-66, 56}}, color = {0, 0, 127}));
  connect(sou_mass_CSsum.ports[1], CW_tank.ports[1]) annotation(
    Line(points = {{-20, -10}, {-2, -10}, {-2, 14}, {0, 14}}, color = {0, 127, 255}));
  connect(const_sou2_Base_1.y, m_flow_sum_CB.u1) annotation(
    Line(points = {{310, 88}, {306, 88}, {306, 16}, {182, 16}}, color = {0, 0, 127}));
  connect(const_sou2_Base_2.y, m_flow_sum_CB.u2) annotation(
    Line(points = {{309, -98}, {270, -98}, {270, 4}, {182, 4}}, color = {0, 0, 127}));
  connect(mflow_out_Tank.y, gain.u) annotation(
    Line(points = {{57, -26}, {43, -26}, {43, -33}}, color = {0, 0, 127}));
  connect(sou_mass_TankOUT.m_flow_in, gain.y) annotation(
    Line(points = {{24, -12}, {31.5, -12}, {31.5, -33}}, color = {0, 0, 127}));
  connect(sou_mass_TankOUT.ports[1], CW_tank.ports[2]) annotation(
    Line(points = {{2, -20}, {0, -20}, {0, 14}}, color = {0, 127, 255}));
  connect(P_CWpumps_CS1.y, P_CS1.u1) annotation(
    Line(points = {{-176, 210}, {-164, 210}, {-164, 218}, {-134, 218}}, color = {0, 0, 127}));
  connect(chi_Storage_1.P, P_CS1.u2) annotation(
    Line(points = {{-182, 156}, {-174, 156}, {-174, 206}, {-134, 206}}, color = {0, 0, 127}));
  connect(P_CWpumps_CS2.y, P_CS2.u1) annotation(
    Line(points = {{-172, 48}, {-168, 48}, {-168, 58}, {-134, 58}}, color = {0, 0, 127}));
  connect(chi_Storage_2.P, P_CS2.u2) annotation(
    Line(points = {{-182, -2}, {-168, -2}, {-168, 46}, {-134, 46}}, color = {0, 0, 127}));
  connect(P_CWpumps_CS3.y, P_CS3.u1) annotation(
    Line(points = {{-178, -112}, {-170, -112}, {-170, -106}, {-136, -106}}, color = {0, 0, 127}));
  connect(chi_Storage_3.P, P_CS3.u2) annotation(
    Line(points = {{-182, -168}, {-172, -168}, {-172, -118}, {-136, -118}}, color = {0, 0, 127}));
  connect(P_CWpumps_CB1.y, P_CB1.u1) annotation(
    Line(points = {{256, 160}, {238, 160}, {238, 126}, {210, 126}, {210, 48}, {146, 48}}, color = {0, 0, 127}));
  connect(chi_Base_1.P, P_CB1.u2) annotation(
    Line(points = {{264, 110}, {270, 110}, {270, 38}, {146, 38}, {146, 36}}, color = {0, 0, 127}));
  connect(P_CWpumps_CB2.y, P_CB2.u1) annotation(
    Line(points = {{246, -34}, {236, -34}, {236, -144}, {146, -144}, {146, -146}}, color = {0, 0, 127}));
  connect(chi_Base_2.P, P_CB2.u2) annotation(
    Line(points = {{264, -86}, {266, -86}, {266, -158}, {146, -158}}, color = {0, 0, 127}));
  connect(P_CS1.y, P_CS.u1) annotation(
    Line(points = {{-110, 212}, {-80, 212}, {-80, -110}, {-68, -110}}, color = {0, 0, 127}));
  connect(P_CS2.y, P_CS.u2) annotation(
    Line(points = {{-110, 52}, {-100, 52}, {-100, -118}, {-68, -118}}, color = {0, 0, 127}));
  connect(P_CS3.y, P_CS.u3) annotation(
    Line(points = {{-112, -112}, {-106, -112}, {-106, -126}, {-68, -126}}, color = {0, 0, 127}));
  connect(P_CB1.y, P_CB.u1) annotation(
    Line(points = {{124, 42}, {88, 42}, {88, -112}, {72, -112}}, color = {0, 0, 127}));
  connect(P_CB2.y, P_CB.u2) annotation(
    Line(points = {{124, -152}, {110, -152}, {110, -124}, {72, -124}}, color = {0, 0, 127}));
  connect(step.y, Bool_CS_Run.u1) annotation(
    Line(points = {{-58, -174}, {-46, -174}, {-46, -196}, {-38, -196}}, color = {0, 0, 127}));
  connect(Bool_CS_Run.y, P_CS_Real.u2) annotation(
    Line(points = {{-15, -202}, {-15, -167}, {-28, -167}, {-28, -128}}, color = {0, 0, 127}));
  connect(const.y, Bool_CS_Run.u2) annotation(
    Line(points = {{-58, -206}, {-46, -206}, {-46, -208}, {-38, -208}}, color = {0, 0, 127}));
  connect(m_flow_sum_CS_Real.y, sou_mass_CSsum.m_flow_in) annotation(
    Line(points = {{-58, 20}, {-58, -2}, {-42, -2}}, color = {0, 0, 127}));
  connect(m_flow_sum_CS.y, m_flow_sum_CS_Real.u1) annotation(
    Line(points = {{-42, 64}, {-40, 64}, {-40, 42}, {-52, 42}}, color = {0, 0, 127}));
  connect(m_flow_sum_CS_Real.u2, Bool_CS_Run.y) annotation(
    Line(points = {{-64, 42}, {-74, 42}, {-74, -152}, {-10, -152}, {-10, -202}, {-15, -202}}, color = {0, 0, 127}));
  connect(m_flow_sum_CB_Real.y, mflow_out_Tank.u1) annotation(
    Line(points = {{114, 10}, {96, 10}, {96, -20}, {80, -20}}, color = {0, 0, 127}));
  connect(m_flow_sum_CB.y, m_flow_sum_CB_Real.u1) annotation(
    Line(points = {{160, 10}, {148, 10}, {148, 16}, {136, 16}}, color = {0, 0, 127}));
  connect(P_CS_Real.y, P_C.u2) annotation(
    Line(points = {{-5, -122}, {-5, -168}, {14, -168}}, color = {0, 0, 127}));
  connect(P_CS.y, P_CS_Real.u1) annotation(
    Line(points = {{-44, -118}, {-38, -118}, {-38, -116}, {-28, -116}}, color = {0, 0, 127}));
  connect(P_C.y, P_Total.u1) annotation(
    Line(points = {{20, -191}, {39, -191}, {39, -192}, {58, -192}}, color = {0, 0, 127}));
  connect(P_CB.y, P_CB_Real.u2) annotation(
    Line(points = {{50, -118}, {4, -118}, {4, -132}, {6, -132}}, color = {0, 0, 127}));
  connect(P_CB_Real.y, P_C.u1) annotation(
    Line(points = {{12, -155}, {26, -155}, {26, -168}}, color = {0, 0, 127}));
  connect(TimeSeriesData.y[1], m_demand_real.u1) annotation(
    Line(points = {{-38, -40}, {12, -40}, {12, -70}, {40, -70}}, color = {0, 0, 127}));
  connect(m_demand_real.y, mflow_out_Tank.u2) annotation(
    Line(points = {{64, -76}, {102, -76}, {102, -32}, {80, -32}}, color = {0, 0, 127}));
  connect(P_CB_Real.u1, CB_Run_Final.y) annotation(
    Line(points = {{18, -132}, {46, -132}, {46, -230}, {57, -230}}, color = {0, 0, 127}));
  connect(m_flow_sum_CB_Real.u2, CB_Run_Final.y) annotation(
    Line(points = {{136, 4}, {136, -12}, {110, -12}, {110, -208}, {57, -208}, {57, -230}}, color = {0, 0, 127}));
  connect(m_flow_sum_CS_Real.y, m_in_Tank.u1) annotation(
    Line(points = {{-58, 20}, {-58, 10}, {-26, 10}, {-26, 74}, {64, 74}, {64, 40}}, color = {0, 0, 127}));
  connect(m_in_Tank.u2, gain.y) annotation(
    Line(points = {{64, 28}, {64, 2}, {31.5, 2}, {31.5, -33}}, color = {0, 0, 127}));
  connect(m_in_Tank.y, M_CW.u) annotation(
    Line(points = {{42, 34}, {36, 34}, {36, 76}, {72, 76}}, color = {0, 0, 127}));
  connect(TankCW_M_B.y[1], sampler.u) annotation(
    Line(points = {{209, -230}, {190, -230}}, color = {0, 0, 127}));
  connect(sampler.y, CB_Run_index.u1) annotation(
    Line(points = {{167, -230}, {120, -230}}, color = {0, 0, 127}));
  connect(M_CW.y, sampler1.u) annotation(
    Line(points = {{96, 76}, {98, 76}, {98, -212}, {132, -212}}, color = {0, 0, 127}));
  connect(sampler1.y, CB_Run_index.u2) annotation(
    Line(points = {{155, -212}, {155, -238}, {120, -238}}, color = {0, 0, 127}));
  connect(uniformNoise.y, product.u1) annotation(
    Line(points = {{-38, -74}, {-28, -74}, {-28, -86}, {4, -86}}, color = {0, 0, 127}));
  connect(realExpression.y, product.u2) annotation(
    Line(points = {{-19, -98}, {4, -98}}, color = {0, 0, 127}));
  connect(product.y, m_demand_real.u2) annotation(
    Line(points = {{28, -92}, {40, -92}, {40, -82}}, color = {0, 0, 127}));
  connect(TimeSeriesData.y[2], cost_kWh2J.u) annotation(
    Line(points = {{-38, -40}, {-28, -40}, {-28, -24}, {-12, -24}, {-12, 8}, {-36, 8}, {-36, 100}, {-24, 100}}, color = {0, 0, 127}));
  connect(cost_kWh2J.y, cost_per_s.u1) annotation(
    Line(points = {{0, 100}, {10, 100}, {10, 110}}, color = {0, 0, 127}));
  connect(P_Total.y, cost_per_s.u2) annotation(
    Line(points = {{82, -186}, {92, -186}, {92, 56}, {22, 56}, {22, 110}}, color = {0, 0, 127}));
  connect(cost_per_s.y, Cost_total.u) annotation(
    Line(points = {{16, 134}, {16, 140}, {32, 140}, {32, 122}, {42, 122}}, color = {0, 0, 127}));
  connect(P_Total.y, E_Total_kWh.u) annotation(
    Line(points = {{82, -186}, {86, -186}, {86, -204}, {42, -204}, {42, -222}, {34, -222}}, color = {0, 0, 127}));
  connect(realExpression1.y, P_Total.u2) annotation(
    Line(points = {{76, -146}, {78, -146}, {78, -164}, {58, -164}, {58, -180}}, color = {0, 0, 127}));
  connect(booleanExpression.y, or1.u[1]) annotation(
    Line(points = {{-38, -236}, {-24, -236}, {-24, -234}}, color = {255, 0, 255}));
  connect(CB_Run_index.y, or1.u[2]) annotation(
    Line(points = {{98, -230}, {90, -230}, {90, -246}, {-24, -246}, {-24, -234}}, color = {255, 0, 255}));
  connect(or1.y, CB_Run_Final.u) annotation(
    Line(points = {{-2, -234}, {6, -234}, {6, -244}, {80, -244}, {80, -230}}, color = {255, 0, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-340, 240}, {340, -260}}), graphics = {Rectangle(origin = {-218, 154}, lineThickness = 0.75, extent = {{-108, 74}, {108, -74}}), Text(origin = {-290, 212}, extent = {{-26, 16}, {26, -16}}, textString = "chi_Storage_1", fontName = "Arial", textStyle = {TextStyle.Bold, TextStyle.Italic}), Rectangle(origin = {-218, -6}, lineThickness = 0.75, extent = {{-108, 74}, {108, -74}}), Text(origin = {-290, 52}, extent = {{-26, 16}, {26, -16}}, textString = "chi_Storage_2", fontName = "Arial", textStyle = {TextStyle.Bold, TextStyle.Italic}), Rectangle(origin = {-218, -170}, lineThickness = 0.75, extent = {{-108, 74}, {108, -74}}), Text(origin = {-290, -110}, extent = {{-26, 16}, {26, -16}}, textString = "chi_Storage_3", fontName = "Arial", textStyle = {TextStyle.Bold, TextStyle.Italic}), Rectangle(origin = {228, 104}, lineThickness = 0.75, extent = {{-108, 74}, {108, -74}}), Text(origin = {158, 158}, extent = {{-26, 16}, {26, -16}}, textString = "chi_Base_1", fontName = "Arial", textStyle = {TextStyle.Bold, TextStyle.Italic}), Rectangle(origin = {228, -90}, lineThickness = 0.75, extent = {{-108, 74}, {108, -74}}), Text(origin = {158, -34}, extent = {{-26, 16}, {26, -16}}, textString = "chi_Base_2", fontName = "Arial", textStyle = {TextStyle.Bold, TextStyle.Italic}), Rectangle(origin = {143, -220}, lineColor = {255, 0, 0}, lineThickness = 0.75, extent = {{-99, 22}, {99, -22}}), Rectangle(origin = {-29, -233}, lineColor = {0, 0, 255}, lineThickness = 0.75, extent = {{-37, 15}, {37, -15}})}),
    Icon(coordinateSystem(extent = {{-400, -400}, {400, 400}})),
    version = "",
    uses(Modelica(version = "4.0.0"), Buildings(version = "10.0.0")),
  experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002));
end Full_Cooling_Sys_Auto_low_seed_input_mod;
