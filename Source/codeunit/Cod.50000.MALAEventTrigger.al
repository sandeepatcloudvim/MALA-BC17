codeunit 50000 "Event Trigger"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Quote to Order", 'OnBeforeInsertSalesOrderHeader', '', true, true)]
    local procedure UpdateUserDefinedSerialNo(VAR SalesOrderHeader: Record "Sales Header"; SalesQuoteHeader: Record "Sales Header")
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        NoSeries: Record "No. Series";
    begin
        NoSeries.Reset();
        NoSeries.SetRange(Code, SalesOrderHeader."No. Series");
        if NoSeries.FindFirst() then
            NoSeriesMgt.InitSeries(NoSeries."Related Series", SalesOrderHeader."No. Series", SalesOrderHeader."Posting Date", SalesOrderHeader."No.", SalesOrderHeader."No. Series")
    end;


}