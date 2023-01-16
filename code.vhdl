-- VHDL automatically generated by the Electric VLSI Design System, version 
-- 9.07

-------------------- Cell mux{lay} --------------------
entity mux is port(A0, A1, S: in BIT; Y: out BIT; vdd: out BIT; gnd: out BIT);
  end mux;

architecture mux_BODY of mux is
  component nMOStran port(poly_left, diff_top, diff_bottom: inout BIT);
    end component;
  component PMOStran port(poly_left, diff_top, diff_bottom: inout BIT);
    end component;
  component ground port(metal_1_well: inout BIT);
    end component;
  component power port(metal_1_substrate: inout BIT);
    end component;

  signal net_1, net_15, net_20, net_25, net_3, net_9: BIT;

begin
  nmos_0: nMOStran port map(S, net_1, gnd);
  nmos_1: nMOStran port map(net_1, net_9, net_3);
  nmos_2: nMOStran port map(A0, gnd, net_9);
  nmos_7: nMOStran port map(S, net_15, net_20);
  nmos_8: nMOStran port map(A1, gnd, net_15);
  nmos_9: nMOStran port map(net_20, net_25, Y);
  nmos_10: nMOStran port map(net_3, gnd, net_25);
  pmos_0: PMOStran port map(net_1, net_3, vdd);
  pmos_1: PMOStran port map(A0, vdd, net_3);
  pmos_2: PMOStran port map(S, net_1, vdd);
  pmos_7: PMOStran port map(S, net_20, vdd);
  pmos_8: PMOStran port map(A1, vdd, net_20);
  pmos_9: PMOStran port map(net_20, Y, vdd);
  pmos_10: PMOStran port map(net_3, vdd, Y);
  substr_1: ground port map(gnd);
  well_1: power port map(vdd);
end mux_BODY;
