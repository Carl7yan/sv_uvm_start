`ifndef PACKET_DA_3__SV
`define PACKET_DA_3__SV

// minimal code modifications to add/change constraints to making more
// "Constrainable Random Stimulus Generation" and "Directed Testcase"
// With many runs, different seeds
class packet_da_3 extends packet;
  `uvm_object_utils(packet_da_3)

  constraint da_3 {
    da == 3;
  }

  function new(string name = "packet_da_3");
    super.new(name);
    `uvm_info("TRACE", $sformatf("%m"), UVM_HIGH);
  endfunction
endclass
`endif