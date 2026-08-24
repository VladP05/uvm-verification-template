class name_monitor extends uvm_monitor;
    `uvm_component_utils(name_monitor)
    
    virtual name_if vif;

    uvm_analysis_port #(name_seq_item) item_collected_port;

    function new(string name, uvm_component parent);
        super.new(name, parent);
        item_collected_port = new("item_collected_port", this);
    endfunction

    function void build_phase(uvm_phase phase);

        super.build_phase(phase);
        if(!uvm_config_db#(virtual SmartFridge_interface)::get(this, "", "vif", vif)) begin
            `uvm_fatal("NO_VIF", {"Virtual interface must be set for:", get_full_name(), ".vif"});
        end

    endfunction : build_phase

    virtual task run_phase(uvm_phase phase);
        
        name_seq_item item;

        forever begin
           
           //create name_seq_item object
           //monitor logic

        end

    endtask : run_phase

endclass : name_monitor