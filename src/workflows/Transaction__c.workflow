<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Approve_suspicious_merchant_email</fullName>
        <description>Approve suspicious merchant email</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportEscalatedCaseNotification</template>
    </alerts>
    <alerts>
        <fullName>Mailing_to_email</fullName>
        <description>Mailing to email</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Transaction_Email</template>
    </alerts>
    <fieldUpdates>
        <fullName>Completed_transa</fullName>
        <field>Status__c</field>
        <literalValue>Completed</literalValue>
        <name>Completed transa</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Reject_transa</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Reject transa</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>TransactionSUm</fullName>
        <field>Amount__c</field>
        <name>TransactionSUm</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Transsaction_Status</fullName>
        <field>Status__c</field>
        <literalValue>Processing</literalValue>
        <name>Transsaction Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Mailing transaction</fullName>
        <actions>
            <name>Mailing_to_email</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Plastic_card__c.Mailing_to_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
