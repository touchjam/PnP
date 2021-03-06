<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=16.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" meta:webpartpageexpansion="full" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@Register Tagprefix="PageFieldTaxonomyFieldControl" Namespace="Microsoft.SharePoint.Taxonomy" Assembly="Microsoft.SharePoint.Taxonomy, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register Tagprefix="PageFieldRadioButtonChoiceField" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register Tagprefix="PageFieldUserField" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register Tagprefix="PageFieldDateTimeField" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register Tagprefix="PageFieldPublishingScheduleFieldControl" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register Tagprefix="PageFieldBooleanField" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>

<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">

	<!-- Custom styles are loaded only on display mode -->
    <PublishingWebControls:EditModePanel runat="server" id="DisplayModeControl" SuppressTag="true" PageDisplayMode="display">
            <SharePointWebControls:CssRegistration runat="server" ID="PortalCss" Name="&lt;% $SPUrl:~sitecollection/Style Library/PnP/layouts.css %&gt;" After="corev15.css"/>
	</PublishingWebControls:EditModePanel>

    <!-- Custom styles are loaded only on edit mode -->
	<PublishingWebControls:EditModePanel runat="server" id="EditModeControl" SuppressTag="true">
        <SharePointWebControls:CssRegistration runat="server" ID="PortalLayoutEditCss" Name="&lt;% $SPUrl:~sitecollection/Style Library/PnP/layouts-edit.css %&gt;" After="corev15.css"/>

		<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"
			After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>

    </PublishingWebControls:EditModePanel>

	<style type="text/css">
    	/* Only for the home page */
		#bg-layer {
		    background: #DCDCDC;
		}

		#secondary-zone {
			background-color: #fff;
			border-radius: 5px;
			padding: 15px;
		}
	</style>

</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue id="PageTitle" FieldName="Title" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">

	<div class="page-layout">
		<div class="row">
			<div class="col-md-12">
				<PublishingWebControls:EditModePanel runat="server" CssClass="edit-mode-panel title-edit">
				
					<div id="title" class="field">
						<SharePointWebControls:TextField runat="server" FieldName="Title"/>            
					</div>
	
					<div id="contact" class="field">
						<PageFieldUserField:UserField FieldName="IntranetContact" runat="server"/>    
					</div>
					
	                <div id="sitemap-position" class="field">
	        			<PageFieldTaxonomyFieldControl:TaxonomyFieldControl FieldName="IntranetSiteMapPosition" runat="server" CssClass="jambon"/>
	       			</div>
	                
	                <div id="language" class="field">
	                   <PageFieldRadioButtonChoiceField:RadioButtonChoiceField FieldName="IntranetContentLanguage" runat="server"/>
	                </div>
	
	                <div id="translation" class="field">
	                    <component-translationcontrol params='availableLanguages: ["EN","FR"], languageFieldName:"IntranetContentLanguage", associationKeyFieldName:"IntranetContentAssociationKey"'></component-translationcontrol>
	            	</div>

					<div id="hide-sidebar" class="field">
						<PageFieldBooleanField:BooleanField FieldName="HideSideBar" runat="server"/>
					</div>
		                    
				</PublishingWebControls:EditModePanel>
			</div>
		</div>
		<div class="row">	
			<div id="header-zone">
				<div class="col-md-8">
					<WebPartPages:WebPartZone id="x2335a96d408a48e087eff9ec8e98f1be" runat="server" title="Main 75 1"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
				</div>
				<div class="col-md-4">
					<WebPartPages:WebPartZone id="x72190eeca7d8421b90cfa15bd6a3e9a8" runat="server" title="Main 25 2"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
				</div>
			</div>
		</div>
			<div id="secondary-zone">
				<div class="row">	
					<div class="col-md-6">
						<WebPartPages:WebPartZone id="xb70c95a83de04783979b6e7f9a4a1ee1" runat="server" title="Main 50 1"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
					</div>	
					<div class="col-md-3">
						<WebPartPages:WebPartZone id="x416b3d32640140cd80ca5e686aafb0b6" runat="server" title="Main 25 2"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
					</div>	
					<div class="col-md-3">
						<WebPartPages:WebPartZone id="x9bd4915504474276a487bedf56699ce8" runat="server" title="Main 25 3"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
					</div>	
				</div>
			</div>
	</div>

</asp:Content>
