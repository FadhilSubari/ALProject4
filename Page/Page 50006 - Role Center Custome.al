page 50006 "Role Center Custome"
{
    // untuk tipe pagenya 
    PageType = RoleCenter;
    // untuk tipe pagenya end
    layout
    {
        area(RoleCenter)
        {
            // belum bisa 
            part(PartSample; "Accountant Activities")
            {
                ApplicationArea = all;
            }
            // belum bisa end
        }
    }
    actions
    {
        area(Sections)
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
    }
}