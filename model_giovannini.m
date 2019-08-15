x = xolotl('temperature', 36, 'temperature_ref', 22);

%% Instantiate a single-compartment model

x.add('compartment', 'comp', 'Cm', 10, 'A', 0.029, 'vol', 0.029e-3, 'Ca_out', 750);

% calcium mechanism
x.comp.add('destexhe/CalciumMech', 'Ca_in', 240, 'tau_Ca', 1e3, 'phi', 1);

% conductances
x.comp.add('giovannini/NaV', 'gbar', 500, 'E', 50);
x.comp.add('giovannini/Kd', 'gbar', 50, 'E', -100);
x.comp.add('giovannini/MCurrent', 'gbar', 0.3, 'E', -100, 'tau', 1000);
x.comp.add('giovannini/CaN', 'gbar', 0.25, 'E', -20);
x.comp.add('giovannini/CaT_no_calcium', 'gbar', 1, 'E', 120);

% x.I_ext = 0.38
