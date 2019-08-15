x = xolotl('temperature', 35.85, 'temperature_ref', 22);

x.add('compartment', 'comp', 'Cm', 10, 'A', 1e-3, 'vol', 1e-6, 'Ca_out', 2e3);

x.comp.add('buchholtz/CalciumMech', 'Ca_in', 0.24, 'tau_Ca', 1e3, 'phi', 1);

x.comp.add('Leak', 'gbar', 0.5, 'E', -78);
x.comp.add('destexhe/CaT', 'gbar', 17.5);
x.comp.add('traub/NaV', 'gbar', 1000, 'E', 50);
x.comp.add('traub/Kd', 'gbar', 100, 'E', -95);
x.comp.add('destexhe/KCa', 'gbar', 100, 'E', -95);
x.comp.add('destexhe/CaN', 'gbar', 2.5, 'E', -20);
% x.comp.add('destexhe/MCurrent', 'gbar', 300, 'E', -100);
