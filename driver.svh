class name_driver extends uvm_driver #(name_seq_item);
    virtual name_if vif;
    
    `uvm_component_utils(name_driver)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_config_db#(virtual name_if)::get(this, "", "vif", vif)) begin
            `uvm_fatal("NO_VIF", {"Virtual interface must be set for:", get_full_name(), ".vif"});
        end
        
    endfunction : build_phase

    virtual task run_phase(uvm_phase phase);
        
       //initialize all input interface signals with 0
        
        forever begin
            seq_item_port.get_next_item(req);
            
            //driver logic

            seq_item_port.item_done();
        end
    endtask : run_phase

endclass : name_driver