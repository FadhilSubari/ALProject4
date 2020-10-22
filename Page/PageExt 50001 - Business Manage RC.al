pageextension 50001 "Business Manager RC" extends "Business Manager Role Center"
{
    layout
    {

    }
    actions
    {
        addfirst(sections)
        {
            group(penjualan)
            {
                action("Penjualan Armada")
                {
                    ApplicationArea = all;
                    RunObject = page "Penjualan Armada List";
                }
                action("Master Armada")
                {
                    ApplicationArea = all;
                    RunObject = page "Armada List";
                }
            }

        }
        // modify("VAT Returns")
        // {
        //     Visible = false;
        // }
        addfirst(embedding)
        {
            action(Armada)
            {
                ApplicationArea = all;
                RunObject = page "Armada List";
            }
        }
    }

}