class name_test extends name_testbase;
    `uvm_component_utils(name_test)
    
    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    name_sequence name_seq;

    virtual function void build_phase(uvm_phase phase);
    
        super.build_phase(phase);
        name_seq = name_sequence::type_id::create("name_seq");

    endfunction : build_phase

    virtual task run_phase(uvm_phase phase);
        
        phase.raise_objection(this);

        name_seq.start(env.agent.sequencer);

        phase.drop_objection(this);

    endtask : run_phase

endclass : name_test