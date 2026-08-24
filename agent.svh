class name_agent extends uvm_agent;
    `uvm_component_utils(name_agent)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    name_sequencer sequencer;
    name_driver driver;
    name_monitor monitor;

    function void build_phase(uvm_phase phase);

        super.build_phase(phase);

        if(get_is_active() == UVM_ACTIVE) begin
            sequencer   = name_sequencer::type_id::create("sequencer", this);
            driver      = name_driver::type_id::create("driver", this);
        end 

        monitor = name_monitor::type_id::create("monitor", this);

    endfunction : build_phase

    function void connect_phase(uvm_phase phase);
        
        if(get_is_active() == UVM_ACTIVE) begin
            driver.seq_item_port.connect(sequencer.seq_item_export);
        end

    endfunction : connect_phase

endclass : name_agent