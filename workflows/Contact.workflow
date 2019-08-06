<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>jksjaascxa</fullName>
        <ccEmails>rohit@mirketa.com</ccEmails>
        <description>jksja</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <rules>
        <fullName>first</fullName>
        <actions>
            <name>jksjaascxa</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>Owner.Country =&apos;USA&apos;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
