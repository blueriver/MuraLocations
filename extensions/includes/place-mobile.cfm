<cfsilent><cfscript>
/**
* 
* This file is part of MuraLocations TM
*
* Copyright 2010-2015 Stephen J. Withington, Jr.
* Licensed under the Apache License, Version v2.0
* http://www.apache.org/licenses/LICENSE-2.0
* 
* Optimized for jQuery Mobile
*
*/
</cfscript></cfsilent>
<cfoutput>
	<li>
		<a href="#getDetailsURL()#" rel="external">

			<!--- Image --->
			<cfif len(trim(getLocationImage()))>
				<img src="#getLocationImage()#" class="ui-li-thumb" alt="#HTMLEditFormat(getPlaceName())#">
			</cfif>
			<h2>#HTMLEditFormat(getPlaceName())#</h2>
			<cfif len(trim(getLocationDistance()))>
				<p class="ui-li-aside"><strong>#getLocationDistance()#</strong> miles</p>
			</cfif>
			<p>
				<cfif len(trim(getStreetAddress()))>
					#replace(HTMLEditFormat(getStreetAddress()), chr(13) & chr(10), "<br>", "ALL")#, 
				</cfif>
				<cfif len(trim(getAddressLocality()))>
					#HTMLEditFormat(getAddressLocality())#, 
				</cfif>
				<cfif len(trim(getAddressRegion()))>
					#HTMLEditFormat(getAddressRegion())#
				</cfif>
				<cfif len(trim(getPostalCode()))>
					 #HTMLEditFormat(getPostalCode())#,
				</cfif>
				<cfif len(trim(getAddressCountry()))>
					#HTMLEditFormat(getAddressCountry())#
				</cfif>
			</p>
		</a>
	</li>
</cfoutput>