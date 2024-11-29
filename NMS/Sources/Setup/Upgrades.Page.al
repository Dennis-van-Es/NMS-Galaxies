page 50101 Upgrades
{
    Caption = 'Upgrades';
    PageType = List;
    SourceTable = Upgrade;
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            field(UpgTypeCtl; this.UpgType)
            {
                ApplicationArea = All;
                ToolTip = 'Where is the upgrade sold?';
                Caption = 'Shop';

                trigger OnValidate()
                begin
                    this.FilterByShop();
                end;
            }
            repeater(General)
            {
                field(Name; Rec.Description)
                {

                }
            }
        }
    }
    var
        UpgType: Enum "Upgrade Types";

    local procedure FilterByShop()
    begin
        Rec.SetRange(Type, this.UpgType);
        CurrPage.Update(false);
    end;
}
