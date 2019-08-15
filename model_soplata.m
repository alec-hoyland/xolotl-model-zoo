x = xolotl('temperature', 36, 'temperature_ref', 22);

x.add('compartment', 'comp', 'Cm', 10, 'A', 1e-3, 'vol', 1e-6, 'Ca_out', 2e3);

x.comp.add('buchholtz/CalciumMech', 'Ca_in', 0.2, 'tau_Ca', 80, 'phi', 1);

x.comp.add('soplata/CaN', 'gbar', 0.25);
x.comp.add('destexhe/CaT', 'gbar', 1);
x.comp.add('soplata/Kd', 'gbar', 200);
x.comp.add('soplata/MCurrent', 'gbar', 7.5);
x.comp.add('soplata/NaV', 'gbar', 2000);
x.comp.add('Leak', 'gbar', 0.1);
