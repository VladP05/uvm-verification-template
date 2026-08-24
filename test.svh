class name_test extends name_testbase;
    `uvm_component_utils(name_test)
    
    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    name_sequence water_seq;

    virtual function void build_phase(uvm_phase phase);
    
        super.build_phase(phase);
        water_seq = name_sequence::type_id::create("water_seq");

    endfunction : build_phase

    virtual task run_phase(uvm_phase phase);
        
        phase.raise_objection(this);

        water_seq.start(env.agent.sequencer);

        phase.drop_objection(this);

    endtask : run_phase

endclass : name_test