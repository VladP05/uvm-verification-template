class name_testbase extends uvm_test;
    `uvm_component_utils(name_testbase)
    
    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    name_env env;
    
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        env = name_env::type_id::create("env");

    endfunction : build_phase

endclass : name_testbase