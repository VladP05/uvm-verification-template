class name_coverage_collector extends uvm_subscriber #(name_seq_item);
    `uvm_component_utils(name_coverage_collector)
    
    name_seq_item seq_item;

    covergroup name_cg;

        option.per_instance = 1;

        name_cp : coverpoint seq_item./*signal*/{
            //declare bins
        }

        cross name1_x_name2     : cross name1_cp, name2_cp;

    endgroup : name_cg
    
    function new(string name = "name_coverage_collector" , uvm_component parent = null);
        super.new(name, parent);
        name_cg = new();
    endfunction

    virtual function void write(name_seq_item pkt);

        this.seq_item = pkt;
        name_cg.sample();

    endfunction

endclass