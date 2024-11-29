table 50101 Upgrade
{
    Caption = 'Upgrade';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Type"; Enum "Upgrade Types")
        {
            Caption = 'Type';
            ToolTip = 'The type of the upgrade (or where is it used).';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Name';
            ToolTip = 'The descriprion of the upgrade';
            NotBlank = true;
        }
    }
    keys
    {
        key(PK; "Type", Description)
        {
            Clustered = true;
        }
    }
}
