class name_scoreboard extends uvm_scoreboard;
    `uvm_component_utils(name_scoreboard)
    
    uvm_analysis_imp #(name_seq_item, name_scoreboard) item_collected_export;

    //expected output signal and/or internal signal declaration
    
    function new(string name, uvm_component parent);
        super.new(name, parent);
        item_collected_export = new("item_collected_export", this);
    endfunction

    virtual function void write(name_seq_item pkt);

        //write function logic

    endfunction : write

endclass : name_scoreboard