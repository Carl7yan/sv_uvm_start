class mem_write_read_test extends mem_model_base_test;

  `uvm_component_utils(mem_write_read_test)
  
  write_read_sequence seq;

  function new(string name = "mem_write_read_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    seq = write_read_sequence::type_id::create("seq");
  endfunction : build_phase
  
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
      seq.start(env.mem_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
endclass : mem_write_read_test
