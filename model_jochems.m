x = xolotl('temperature', 36, 'temperature_ref', 22);

x.add('compartment', 'comp', 'Cm', 10, 'A', 1e-3, 'vol', 1e-6, 'Ca_out', 2e3);

x.comp.add('buchholtz/CalciumMech', 'Ca_in', 0.2, 'tau_Ca', 1e3, 'phi', 1);

x.comp.add('jochems/CaN', 'gbar', 50, 'E', -20);
x.comp.add('jochems/CaT', 'gbar', 1);
x.comp.add('jochems/Kd', 'gbar', 50, 'E', -100);
x.comp.add('jochems/MCurrent', 'gbar', 300, 'E', -100);
x.comp.add('jochems/NaV', 'gbar', 500, 'E', 50);
x.comp.add('Leak', 'gbar', 0.1, 'E', -80);
