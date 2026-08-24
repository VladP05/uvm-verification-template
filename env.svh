class name_env extends uvm_env;
    `uvm_component_utils(name_env)
    
    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    name_agent agent;
    name_scoreboard scoreboard;
    name_coverage_collector coverage_collector;

    function void build_phase(uvm_phase phase);
        
        super.build_phase(phase);

        agent               = name_agent::type_id::create("agent", this);
        scoreboard          = name_scoreboard::type_id::create("scoreboard", this);
        coverage_collector  = name_coverage_collector::type_id::create("coverage_collector", this);

    endfunction : build_phase

    function void connect_phase(uvm_phase phase);

        agent.monitor.item_collected_port.connect(scoreboard.item_collected_export);
        agent.monitor.item_collected_port.connect(coverage_collector.analysis_export);

    endfunction

endclass : name_env