<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdminScreen.aspx.cs" Inherits="ER_APP_VOP_System.AdminScreen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <div class="container">
            <h1 style="text-align:center; font-size:45px;text-transform:uppercase;letter-spacing:2px;margin-top:25px;font-family:merinda">
                VOP Excel Upload
            </h1>
        </div>
    </section>

    <br />
    <br />

    <div class="container alert alert-primary w3-padding-top w3-padding-bottom w3-margin-top w3-margin-bottom" style="text-align:center;">
          <div class="row align-items-center">
            <div class="col">
              <asp:FileUpload ID="ExcelFileUpload" runat="server" />
            </div>
            <div class="col">
              <asp:Button class="btn btn-dark" Text="Upload" OnClick = "btnExcelUpload_Click" runat="server" />
            </div>
           </div>
    </div>

    <br />

    <section>
        <div class="container">
            <asp:GridView ID="dgvExcelUpload" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="false" EmptyDataText="No Record Found" PageSize="30"  HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="Date" HeaderText="Date"/>
                    <asp:BoundField DataField="EPF" HeaderText="EPF"/>
                    <asp:BoundField DataField="PN" HeaderText="PN"/>
                    <asp:BoundField DataField="Name" HeaderText="Name"/>
                    <asp:BoundField DataField="Team" HeaderText="Team"/>
                    <asp:BoundField DataField="Classification" HeaderText="Classification"/>
                    <asp:BoundField DataField="Last_Working_Date" HeaderText="Last Working Date"/>
                    <asp:BoundField DataField="Number_Of_Absent_Days" HeaderText="Number Of Absent Days"/>
                    <asp:BoundField DataField="Address" HeaderText="Address"/>
                    <asp:BoundField DataField="Reason_Category" HeaderText="Reason Category"/>
                    <asp:BoundField DataField="Reason" HeaderText="Reason"/>
                    <asp:BoundField DataField="First_VOP" HeaderText="1st VOP"/>
                    <asp:BoundField DataField="First_VOP_Status" HeaderText="1st VOP Status "/>
                    <asp:BoundField DataField="Resign_Termination_Payment" HeaderText="Resign Termination Payment"/>
                    <asp:BoundField DataField="Termination_Payment_Status" HeaderText="Termination Payment Status"/>
                    <asp:BoundField DataField="Second_VOP" HeaderText="2nd VOP"/>
                    <asp:BoundField DataField="Secod_VOP_Status" HeaderText="2nd VOP Status"/>
                    <asp:BoundField DataField="Resignation" HeaderText="Resignation"/>
                    <asp:BoundField DataField="Termination_Date" HeaderText="Termination Date"/>
                    <asp:BoundField DataField="Termination_Approval" HeaderText="Termination Approval"/>
                    <asp:BoundField DataField="Termination_Status" HeaderText="Termination Status"/>
                    <asp:BoundField DataField="ER" HeaderText="ER"/>
                    <asp:BoundField DataField="VSL" HeaderText="VSL"/>
                    <asp:BoundField DataField="Factory_And_Shift" HeaderText="Factory & Shift"/>
                    <asp:BoundField DataField="Service_Period" HeaderText="Service Period"/>
                </Columns>
                <HeaderStyle BackColor="#333333" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
        </div>
    </section>

</asp:Content>
