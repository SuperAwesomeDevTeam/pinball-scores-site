<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pinball.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        /*Fix for dataTable plugin when filtering columns causes resize.*/
        .dataTables_wrapper {
            width: 300px;
        }

        .machineSelection {
        
        }

        .machine {
            width: 300px;
            overflow: hidden;
            float:left;
            padding:30px;
        }

        .machine-backboard {
            background:no-repeat center center;
            height:150px;
            width:300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageTitleHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentHolder" runat="server">
    
    <div class="machineSelection">
        <div class="machine">
            <div class="machine-backboard" style="background-image:url('./images/backboards/twilightzone.png');"></div>
            <div class="scoreTable">
                <table id="tzScores"></table>
            </div>
        </div>
        
        <div class="machine">
            <div class="machine-backboard" style="background-image:url('./images/backboards/roadshow.png');"></div>
            <div class="scoreTable">
                <table id="roadshowScores"></table>
            </div>
        </>
             
    </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="BodyScripts" runat="server">
    <script>
        $().ready(function () {
            var dataArray = [];
            dataArray.push(["Ben", "120102134", "none"]);
            dataArray.push(["James", "20020036", "none"]);
            dataArray.push(["Wayne", "10", "none"]);
            $('#tzScores').dataTable(
            {
                "sDom": "rti",
                "iDisplayLength": 10,
                "bFilter": false,
                "bSort": true,
                "bDeferRender": true,
                "aaData": dataArray,
                "aoColumns": [
			        { "sTitle": "Name" },
			        { "sTitle": "Score", "sWidth": "100%" },
                    { "sTitle": "Proof"},
                ]
            });
            
            $('#roadshowScores').dataTable(
            {
                "sDom": "rti",
                "iDisplayLength": 10,
                "bFilter": false,
                "bSort": true,
                "bDeferRender": true,
                "aaData": dataArray,
                "aoColumns": [
			        { "sTitle": "Name" },
			        { "sTitle": "Score", "sWidth": "100%" },
                    { "sTitle": "Proof" },
                ]
            });
        });
    </script>
</asp:Content>
