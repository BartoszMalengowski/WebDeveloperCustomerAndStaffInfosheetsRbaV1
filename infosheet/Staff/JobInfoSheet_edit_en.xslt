<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <xsl:template match="/">
        <link rel="stylesheet" href="/prinergyweb/custom/JobInfoSheet/Examples/FSP_WORKFLOW_JavaScripts/INFOSHEET_CSS.css"/>
        <script src="/prinergyweb/custom/JobInfoSheet/Examples/FSP_WORKFLOW_JavaScripts/jquery-3.6.3.js"/>
        <script src="/prinergyweb/custom/JobInfoSheet/Examples/FSP_WORKFLOW_JavaScripts/ActionStatus_Controller.js"/>
        <script src="/prinergyweb/custom/JobInfoSheet/Examples/FSP_WORKFLOW_JavaScripts/div_Enabler_Controller.js"/>
        <script src="/prinergyweb/custom/JobInfoSheet/Examples/FSP_WORKFLOW_JavaScripts/divTab_Controller.js"/>
        <script src="/prinergyweb/custom/JobInfoSheet/Examples/FSP_WORKFLOW_JavaScripts/specTableCounter.js"/>
        <script src="/prinergyweb/custom/JobInfoSheet/Examples/FSP_WORKFLOW_JavaScripts/todayDate.js"/>
        <script src="/prinergyweb/custom/JobInfoSheet/Examples/FSP_WORKFLOW_JavaScripts/letterAndSignsSwapper.js"/>
        <script src="/prinergyweb/custom/JobInfoSheet/Examples/FSP_WORKFLOW_JavaScripts/Selects.js"/>
        <script src="/prinergyweb/custom/JobInfoSheet/Examples/FSP_WORKFLOW_JavaScripts/CheckboxChecked.js"/>
        <script src="/prinergyweb/custom/JobInfoSheet/Examples/FSP_WORKFLOW_JavaScripts/Clicker.js"/>
        <script src="/prinergyweb/custom/JobInfoSheet/Examples/FSP_WORKFLOW_JavaScripts/rowFader.js"/>
        <script src="/prinergyweb/custom/JobInfoSheet/Examples/FSP_WORKFLOW_JavaScripts/colorChecker.js"/>
        <br/>
        <!-- JOB + STATUS SECTION BEGIN -->
        <body onload="ActionStatus_Controller_EDIT();ClassEnabler();divTab_Controller();colorChecker();" >
            <table style="padding-left:15;  margin-bottom:1; " >
                <th align="Right" nowrap="true" style="padding:2; ">
                    <span class="StandardLabel">Zadanie:</span>
                </th>
                <td id="Action_ID"  style="padding:5 10 5 10;" >
                    <span id="Action_xml_value">
                        <xsl:for-each select="JobSpec">
                            <xsl:for-each select="JobCurrentAction">
                                <xsl:apply-templates/>
                            </xsl:for-each>
                        </xsl:for-each>
                    </span>
                </td>
                <th align="Right" nowrap="true" style="padding-left:10; ">
                    <span class="StandardLabel">Status:</span>
                </th>
                <td id="Status_ID" align="center" style="padding:5 10 5 10;">
                    <span id="Status_xml_value" >
                        <xsl:for-each select="JobSpec">
                            <xsl:for-each select="JobCurrentStatus">
                                <xsl:apply-templates/>
                            </xsl:for-each>
                        </xsl:for-each>
                    </span>
                </td>
                <th id="JobAdditionalActionTH" align="Right" nowrap="true" style="padding-left:30; visibility:hidden;">
                    <span class="StandardLabel">Wybierz akcję:</span>
                </th>
                <td id="JobAdditionalActionTD" style="visibility:hidden;">
                    <xsl:for-each select="JobSpec">
                        <xsl:for-each select="JobAdditionalAction">
                            <select id="additional_actions_value" class="AdditionalAction_Enabled_SelectInput" style="padding:4 4 4 4 ;">
                                <xsl:apply-templates/>
                            </select>
                        </xsl:for-each>
                    </xsl:for-each>
                </td>
            </table>
            <!-- JOB STATUS SECTION END -->
            <br/>
            <table border="0" bordercolor="#000000" width="100%" cellpadding="0" cellspacing="0" style="padding-left:10; padding-right:10;">
                <tbody>
                    <!-- INFO SHEET TABS BEGIN -->
                    <tr>
                        <td align="left">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tbody>
                                    <tr>
                                        <td id="reproTab" align="center" class="enabled_tab">
                                            <a href="#" onClick="handleTabClick( 'repro' );" style="text-decoration:none;">
                                                <span id="reproLabel">
                                                    PROJEKT
                                                </span>
                                            </a>
                                        </td>
                                        <td id="modificationTab" align="center" class="disabled_tab">
                                            <a href="#" onClick="handleTabClick( 'modification' );" style="text-decoration:none;">
                                                <span id="modificationLabel">
                                                    ZMIANA
                                                </span>
                                            </a>
                                        </td>
                                        <td id="proofTab" align="center" class="disabled_tab">
                                            <a href="#" onClick="handleTabClick( 'proof' );" style="text-decoration:none;">
                                                <span id="proofLabel">
                                                    PROOF
                                                </span>
                                            </a>
                                        </td>
                                        <td id="platesTab" align="center" class="disabled_tab">
                                            <a href="#" onClick="handleTabClick( 'plates' );" style="text-decoration:none;">
                                                <span id="platesLabel">
                                                    MATRYCE
                                                </span>
                                            </a>
                                        </td>
                                        <td id="renewalTab" align="center" class="disabled_tab">
                                            <a href="#" onClick="handleTabClick( 'renewal' );" style="text-decoration:none;">
                                                <span id="renewalLabel">
                                                    WZNOWIENIE
                                                </span>
                                            </a>
                                        </td>
                                        <td id="complaintTab" align="center" class="disabled_tab">
                                            <a href="#" onClick="handleTabClick( 'complaint' );" style="text-decoration:none;">
                                                <span id="complaintLabel">
                                                    REKLAMACJA
                                                </span>
                                            </a>
                                        </td>
                                        <td id="summaryTab" align="center" class="disabled_tab" >
                                            <a href="#" onClick="handleTabClick( 'summary' );" style="text-decoration:none;">
                                                <span id="summaryLabel">
                                                    PODSUMOWANIE
                                                </span>
                                            </a>
                                        </td>
                                        <td width="800" style="border-bottom: solid dimgray 1px;">
                                    </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <!-- INFO SHEET TABS END -->
                    <tr>
                        <td>
                            <!-- PROJECT SECTION BEGIN -->
                            <div id="repro" style="position: absolute; visibility: visible; background:#E3E3E3; border-left:1px solid dimgray; height:2000; width:890;">
                                <br/>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true">
                                            <span class="StandardLabel">Data zamówienia projektu:</span>
                                        </th>
                                        <td align="Left" nowrap="true">
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobOrderReproDate">
                                                        <input id="ProjectOrderDate_ID" type="date" class="ProjectDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th style="padding-left:10;">
                                            <span class="StandardLabel">Oczekiwany termin otrzymania projektu:</span>
                                        </th>
                                        <td>
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProjectFinalDate">
                                                        <input type="date"  class="ProjectDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10;">
                                    <tr>
                                        <th>
                                            <span class="StandardLabel">Klient:</span>
                                        </th>
                                        <td style="padding:2 5 2 5;">
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerName">
                                                        <select id="clientCustomers_value" class="ProjectDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true">
                                            <span class="StandardLabel">
                                                Nazwa projektu:
                                            </span>
                                        </th>
                                        <th align="Left" nowrap="false">
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobAlias">
                                                        <input id="JobName-Long" type="text"  class="ProjectDiv_Enabled_TextInput" style="width:700;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </th>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true">
                                            <span class="StandardLabel">Indeks 1 projektu klienta:</span>
                                        </th>
                                        <td align="left" nowrap="true">
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerID1Number" >
                                                        <input type="text" style="width:150;" class="ProjectDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding-left:10;">
                                            <span class="StandardLabel">Indeks 2 projektu klienta:</span>
                                        </th>
                                        <td align="left" nowrap="true">
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerID2Number">
                                                        <input type="text" size="20"  style="border-radius:5px; text-align:center;width:150;" class="ProjectDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Kod zadania:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" class="">
                                            <span class="ProjectDiv_Disabled_TextInput">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCode">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Kod projektu:</span>
                                        </th>
                                        <td align="Left" nowrap="true" style="padding:2;" class="">
                                            <span class="ProjectDiv_Disabled_TextInput">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProjectCode">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="false" style="padding:2;">
                                            <span class="StandardLabel">Koordynator drukarni:</span>
                                        </th>
                                        <td align="Left" width="100" style="padding:2 5 2 5 ;" class="sansserif">
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPrintCoordinator">
                                                        <select id="client_print_coordinator_value" class="ProjectDiv_Enabled_SelectInput" style="width:auto;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="false" style="padding:2;">
                                            <span class="StandardLabel">Wzorzec / proof agencyjny:</span>
                                        </th>
                                        <td align="Left" width="150" nowrap="false">
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobAgencyProofOrSample">
                                                        <select id="samples_value" class="ProjectDiv_Enabled_SelectInput"  style="width:auto;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding-left:15;">
                                            <span class="StandardLabel" >Zwrot proofa agencyjnego?</span>
                                        </th>
                                        <td  align="Left" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobAgencyProofReturn">
                                                        <select id="yes_or_no_value4" class="ProjectDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <hr/>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Szerokość użytku:</span>
                                        </th>
                                        <td align="Left" style="padding:2 2 2 2 ;">
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUseWidth">
                                                        <input type="number" min="0" class="ProjectDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" class="SummaryLabel">
                                                <span class="StandardLabel">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Wysokość użytku:</span>
                                        </th>
                                        <td  align="Left" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUseHeight">
                                                        <input type="number" min="0" class="ProjectDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" class="SummaryLabel">
                                                <span class="StandardLabel">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Szerokość podłoża:</span>
                                        </th>
                                        <td  align="center" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobRibbonWidth">
                                                        <input type="number" min="0" class="ProjectDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" class="SummaryLabel">
                                                <span class="StandardLabel">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2;">
                                        <span class="StandardLabel">Rodzaj podłoża:</span>
                                    </th>
                                    <td  align="Left" style="padding:2 2 2 2 ;" >
                                        <span id="">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobFoilType">
                                                    <input type="text" size="50"  style="border-radius:5px; text-align:center;width:400" class="ProjectDiv_Enabled_TextInput">
                                                        <xsl:attribute name="value">
                                                            <xsl:value-of select="." />
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2;">
                                        <span class="StandardLabel">Laminacja:</span>
                                    </th>
                                    <td  align="Left" style="padding:2 2 2 2 ;" >
                                        <span id="">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobFoilLamination">
                                                    <input type="text" size="50"  style="border-radius:5px; text-align:center;width:400;" class="ProjectDiv_Enabled_TextInput">
                                                        <xsl:attribute name="value">
                                                            <xsl:value-of select="." />
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" class="SummaryLabel">
                                            <span class="StandardLabel">Raport:</span>
                                        </th>
                                        <td  align="Left" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobRepeatLength">
                                                        <input type="number" min="0" class="ProjectDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" class="SummaryLabel">
                                                <span class="StandardLabel">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Wałek:</span>
                                        </th>
                                        <td  align="Left" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCylinderSize">
                                                        <input type="number" min="0" class="ProjectDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" class="SummaryLabel">
                                                <span class="StandardLabel">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <hr/>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Kolorystyka:</span>
                                        </th>
                                        <td  align="Left" width="40" nowrap="false" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobColoristic">
                                                        <input type="text" style="width:400;" class="ProjectDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Biały:</span>
                                        </th>
                                        <td  align="Left" width="40" nowrap="false" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobWhite">
                                                        <select id="white_value" class="ProjectDiv_Enabled_SelectInput"  style="width:auto;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Lakier:</span>
                                        </th>
                                        <td  align="Left"  nowrap="false" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobVarnish">
                                                        <select id="varnish_value" class="ProjectDiv_Enabled_SelectInput"  style="width:auto;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <hr/>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true">
                                            <span class="StandardLabel">Przesunięcie:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2;" >
                                            <span style ="width:50%">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobDisplacement">
                                                        <select id="yes_or_no_value13" class="ProjectDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <td  align="Left" nowrap="false">
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobDisplacementValue">
                                                        <input type="text"  size="4" style="border-radius:5px; text-align:center;" class="ProjectDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" class="SummaryLabel">
                                                <span class="StandardLabel">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Kalibracja:</span>
                                        </th>
                                        <td  align="Left" nowrap="false" style="padding:2 2 2 2 ;">
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCalibration">
                                                        <select  id="clientProfiles_value" class="ProjectDiv_Enabled_SelectInput" style="width:auto;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="center" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Skrót na maszynie:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;">
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobShortcutOnMashine">
                                                        <select id="yes_or_no_value14" class="ProjectDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel"></span>
                                        </th>
                                        <td  align="Left" nowrap="false">
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobShortcutOnMashineValue">
                                                        <input type="number" class="ProjectDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" class="SummaryLabel">
                                                <span class="StandardLabel">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table border="0px" style="padding-left:10;  margin-bottom:1; visibility:visible;" id="ProjectOrder_Activator">
                                    <tr>
                                        <th align="Left" width="100" nowrap="true" >
                                            <span class="StandardLabel" style="color: red;">Potwierdzam powyższe dane i zamawiam przygotowanie projektu do druku:</span>
                                        </th>
                                        <td align="Left" width="100" style="padding:2 5 2 5 ;" >
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProjectOrderConfirmation1">
                                                        <select id="yes_or_no_value15" class="ProjectDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <hr/>
                                <table style="padding-left:10;">
                                    <td style="padding-top:0.2cm; padding-bottom:0.2cm; ">
                                        <span class="StandardLabel">
                                            Uwagi do projektu:
                                        </span>
                                    </td>
                                </table>
                                <table style="padding-left:5;">
                                    <td style="padding:5 5 5 5; ">
                                        <xsl:for-each select="JobSpec">
                                            <xsl:for-each select="JobComments">
                                                <textarea class="ProjectDiv_Enabled_TextArea">
                                                    <xsl:value-of select="."/>
                                                </textarea>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </td>
                                </table>
                            </div>
                            <!-- PROJECT SECTION END -->
                            <!-- MODIFICATION SECTION BEGIN -->
                            <div id="modification" style="position: absolute; visibility: hidden; background:#E3E3E3; border-left:1px solid dimgray; height:2000; width:890;">
                                <br/>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Data zamówienia zmian do matryc:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPlateOrderDate">
                                                        <input type="date" class="ModDiv_Enabled_DateInput" id="ModificationOrderDate_ID">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2;">
                                        <span class="StandardLabel">Nazwa projektu:</span>
                                    </th>
                                    <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                        <span>
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobAlias">
                                                    <input type="text" class="ModDiv_Enabled_TextInput" style="width:700px;">
                                                        <xsl:attribute name="value">
                                                            <xsl:value-of select="." />
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true">
                                            <span class="StandardLabel">Indeks 1 projektu klienta:</span>
                                        </th>
                                        <td align="left" nowrap="true">
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerID1Number" >
                                                        <input type="text" style="width:auto" class="ModDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding-left:10;">
                                            <span class="StandardLabel">Indeks 2 projektu klienta:</span>
                                        </th>
                                        <td align="left" nowrap="true">
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerID2Number">
                                                        <input type="text" style="width:auto" class="ModDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Kod zadania:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" >
                                            <span class="ModDiv_Disabled_TextInput" disabled="disabled">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCode">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Kod projektu:</span>
                                        </th>
                                        <td align="Left" nowrap="true" style="padding:2;" >
                                            <span class="ModDiv_Disabled_TextInput" disabled="disabled">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProjectCode">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <hr/>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="false" style="padding:2;">
                                            <span class="StandardLabel">Koordynator drukarni:</span>
                                        </th>
                                        <td align="Left" width="100" style="padding:2 5 2 5 ;" class="sansserif">
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPrintCoordinator">
                                                        <select id="client_print_coordinator_value2" class="ProjectDiv_Enabled_SelectInput" style="width:auto;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="false" style="padding:2;">
                                            <span class="StandardLabel">Wzorzec / proof agencyjny:</span>
                                        </th>
                                        <td align="Left" width="150" nowrap="false">
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobAgencyProofOrSample">
                                                        <select id="samples_value2" class="ProjectDiv_Enabled_SelectInput"  style="width:auto;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding-left:15;">
                                            <span class="StandardLabel" >Zwrot proofa agencyjnego?</span>
                                        </th>
                                        <td  align="Left" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobAgencyProofReturn">
                                                        <select id="yes_or_no_value26" class="ProjectDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <hr/>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Szerokość użytku:</span>
                                        </th>
                                        <td align="Left" style="padding:2 2 2 2 ;">
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUseWidth">
                                                        <input type="number" min="0" class="ProjectDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" class="SummaryLabel">
                                                <span class="StandardLabel">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Wysokość użytku:</span>
                                        </th>
                                        <td  align="Left" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUseHeight">
                                                        <input type="number" min="0" class="ProjectDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" class="SummaryLabel">
                                                <span class="StandardLabel">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Szerokość podłoża:</span>
                                        </th>
                                        <td  align="center" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobRibbonWidth">
                                                        <input type="number" min="0" class="ProjectDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" class="SummaryLabel">
                                                <span class="StandardLabel">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2;">
                                        <span class="StandardLabel">Rodzaj podłoża:</span>
                                    </th>
                                    <td  align="Left" style="padding:2 2 2 2 ;" >
                                        <span id="">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobFoilType">
                                                    <input type="text" size="50"  style="border-radius:5px; text-align:center;width:400" class="ProjectDiv_Enabled_TextInput">
                                                        <xsl:attribute name="value">
                                                            <xsl:value-of select="." />
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2;">
                                        <span class="StandardLabel">Laminacja:</span>
                                    </th>
                                    <td  align="Left" style="padding:2 2 2 2 ;" >
                                        <span id="">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobFoilLamination">
                                                    <input type="text" size="50"  style="border-radius:5px; text-align:center;width:400;" class="ProjectDiv_Enabled_TextInput">
                                                        <xsl:attribute name="value">
                                                            <xsl:value-of select="." />
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" class="SummaryLabel">
                                            <span class="StandardLabel">Raport:</span>
                                        </th>
                                        <td  align="Left" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobRepeatLength">
                                                        <input type="number" min="0" class="ProjectDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" class="SummaryLabel">
                                                <span class="StandardLabel">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Wałek:</span>
                                        </th>
                                        <td  align="Left" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCylinderSize">
                                                        <input type="number" min="0" class="ProjectDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" class="SummaryLabel">
                                                <span class="StandardLabel">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <hr/>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Kolorystyka:</span>
                                        </th>
                                        <td  align="Left" width="40" nowrap="false" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobColoristic">
                                                        <input type="text" style="width:400;" class="ProjectDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Biały:</span>
                                        </th>
                                        <td  align="Left" width="40" nowrap="false" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobWhite">
                                                        <select id="white_value2" class="ProjectDiv_Enabled_SelectInput"  style="width:auto;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Lakier:</span>
                                        </th>
                                        <td  align="Left"  nowrap="false" style="padding:2 2 2 2 ;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobVarnish">
                                                        <select id="varnish_value2" class="ProjectDiv_Enabled_SelectInput"  style="width:auto;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <hr/>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true">
                                            <span class="StandardLabel">Przesunięcie:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2;" >
                                            <span style ="width:50%">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobDisplacement">
                                                        <select id="yes_or_no_value27" class="ProjectDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <td  align="Left" nowrap="false">
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobDisplacementValue">
                                                        <input type="text"  size="4" style="border-radius:5px; text-align:center;" class="ProjectDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" class="SummaryLabel">
                                                <span class="StandardLabel">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Kalibracja:</span>
                                        </th>
                                        <td  align="Left" nowrap="false" style="padding:2 2 2 2 ;">
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCalibration">
                                                        <select  id="clientProfiles_value3" class="ProjectDiv_Enabled_SelectInput" style="width:auto;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="center" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Skrót na maszynie:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;">
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobShortcutOnMashine">
                                                        <select id="yes_or_no_value28" class="ProjectDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel"></span>
                                        </th>
                                        <td  align="Left" nowrap="false">
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobShortcutOnMashineValue">
                                                        <input type="number" class="ProjectDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" class="SummaryLabel">
                                                <span class="StandardLabel">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10;  margin-bottom:1;">
                                    <td style="padding-top:0.2cm; padding-bottom:0.2cm; ">
                                        <span class="StandardLabel">
                                        Dokładny opis zmian:
                                    </span>
                                    </td>
                                    <tr>
                                        <td>
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobPlateModificationComments">
                                                    <textarea class="ModDiv_Enabled_TextArea">
                                                        <xsl:value-of select="."/>
                                                    </textarea>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <table border="0px" style="padding-left:10;  margin-bottom:1;visibility:hidden;" id="ModificationProjectOrder_Activator">
                                    <tr>
                                        <th align="Left" width="100" nowrap="true" >
                                            <span class="StandardLabel" style="color: red;">Potwierdzam opis zmian i zamawiam zmiany do projektu:</span>
                                        </th>
                                        <td align="Left" width="auto" style="padding:2 5 2 5 ;">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobPlateModificationConfirmation">
                                                    <select class="ModDiv_Enabled_SelectInput" id="yes_or_no_value25">
                                                        <xsl:apply-templates/>
                                                    </select>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </td>
                                    </tr>
                                </table>
                                <table border="0px" width="100" style="padding-left:10;  margin-bottom:1;visibility:hidden;" id="ModificationPlatesOrder_Activator">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel" style=" color:red">Zamawiam matryce:</span>
                                        </th>
                                        <td align="Left"  style="padding:2 5 2 5 ;">
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPlateOrderConfirmation">
                                                        <select id="plate_order_confirmation_value2" class="PlatesDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <table border="1px" bordercolor="dimgray" rules="cols" width="95%" style="border-collapse: collapse; margin-left:10;" class="hoverTable">
                                    <tr>
                                        <th align="center" colspan="13" nowrap="true" style="padding:2; background:#000; ">
                                            <span class="SummaryLabel" style="font-size: 20px;">
                                            SPECYFIKACJA KOMPLETU MATRYC:
                                        </span>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Lp.</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Kolor</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Lpi</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Kąt</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>DC</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Zadruk</span>
                                        </th>
                                        <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                            <span>Raster</span>
                                        </th>
                                        <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                            <span>Kop.</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Płyta</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Modyfikuj:</span>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">1.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow1">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_M1">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow1">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="font-size: 14px; ">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateModificationRow1">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowM1" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">2.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow2">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_M2">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow2">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateModificationRow2">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowM2" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">3.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow3">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_M3">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow3">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateModificationRow3">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowM3" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">4.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow4">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_M4">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow4">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateModificationRow4">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowM4" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">5.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow5">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_M5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow5">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateModificationRow5">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowM5" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">6.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow6">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_M6">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow6">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateModificationRow6">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowM6" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">7.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow7">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_M7">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow7">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateModificationRow7">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowM7" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">8.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow8">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_M8">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow8">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateModificationRow8">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowM8" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">9.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow9">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_M9">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow9">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateModificationRow9">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowM9" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">10.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow10">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_M10">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow10">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateModificationRow10">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowM10" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">11.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow11">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_M11">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow11">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateModificationRow11">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowM11" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">12.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow12">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_M12">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow12">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateModificationRow12">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowM12" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">13.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow13">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_M13">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow13">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateModificationRow13">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowM13" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">14.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow14">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_M14">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow14">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateModificationRow14">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowM14" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">15.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow15">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_M15">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow15">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateModificationRow15">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowM15" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                </table>
                            </div>
                            <!-- MODIFICATION SECTION END -->
                            <!-- PROOF SECTION BEGIN -->
                            <div id="proof" style="position: absolute; visibility: hidden; background:#E3E3E3; border-left:1px solid dimgray; height:2000; width:890;">
                                <br/>
                                <div name="proof_table_edit_mode">
                                    <br/>
                                    <table id="Proof1_table" border="1px" bordercolor="gray" width="850" style="border-collapse: collapse; margin-left:10;" class="hoverTable">
                                        <tr>
                                            <th bgcolor="#000000"  colspan="9" class="SummaryLabel">
                                                <span style="font-size:16;">PROOF #1</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Data</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Wersja</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kraj</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Ilość</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Format</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kurier</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>List przewozowy</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Zamów</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof1_date">
                                                        <input id="Proof1_date" type="date" class="ProofDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof1_ver">
                                                        <select id="Proof1_ver" class="ProofDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof1_country">
                                                        <input id="Proof1_country" class="ProofDiv_Enabled_TextInput" color="#3F3F3F">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof1_quantity">
                                                        <input id="Proof1_quantity" type="number" min="0" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof1_format">
                                                        <input id="Proof1_format" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof1_courier">
                                                        <select id="Proof1_courier" class="ProofDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof1_trackingNo">
                                                        <input id="Proof1_trackingNo" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof1_orderCheckbox">
                                                        <input type="checkbox" id="checkbox_proof1" value="Yes">
                                                            <xsl:choose>
                                                                <xsl:when test=".='Yes'">
                                                                    <xsl:attribute name="value">Yes</xsl:attribute>
                                                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                                                </xsl:when>
                                                            </xsl:choose>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Adres: </span>
                                            </th>
                                            <th style="padding:2 5 2 5; font-size: 14px;" colspan="8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof1_address">
                                                        <input id="Proof1_address" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Uwagi do proofa: </span>
                                            </th>
                                            <th nowrap="true" colspan="8" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof1_comments">
                                                        <textarea id="Proof1_comments" class="ProofDiv_Enabled_TextArea" style="width:700">
                                                            <xsl:value-of select="." />
                                                        </textarea>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                    </table>
                                    <br/>
                                    <br/>
                                    <table id="Proof2_table" border="1px" bordercolor="dimgray" width="850" style="visibility:hidden; border-collapse: collapse; margin-left:10;" class="hoverTable">
                                        <tr>
                                            <th bgcolor="#000000"  colspan="9" class="SummaryLabel">
                                                <span style="font-size:16;">PROOF #2</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Data</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Wersja</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kraj</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Ilość</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Format</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kurier</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>List przewozowy</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Zamów</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof2_date">
                                                        <input id="Proof2_date" type="date" class="ProofDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof2_ver">
                                                        <select id="Proof2_ver" class="ProofDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof2_country">
                                                        <input id="Proof2_country" class="ProofDiv_Enabled_TextInput" color="#3F3F3F">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof2_quantity">
                                                        <input id="Proof2_quantity" type="number" min="0" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof2_format">
                                                        <input id="Proof2_format" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof2_courier">
                                                        <select id="Proof2_courier" class="ProofDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof2_trackingNo">
                                                        <input id="Proof2_trackingNo" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof2_orderCheckbox">
                                                        <input type="checkbox" id="checkbox_proof2" value="Yes">
                                                            <xsl:choose>
                                                                <xsl:when test=".='Yes'" >
                                                                    <xsl:attribute name="value">Yes</xsl:attribute>
                                                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                                                </xsl:when>
                                                            </xsl:choose>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Adres: </span>
                                            </th>
                                            <th style="padding:2 5 2 5; font-size: 14px;" colspan="8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof2_address">
                                                        <input id="Proof2_address" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Uwagi do proofa: </span>
                                            </th>
                                            <th nowrap="true" colspan="8" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof2_comments">
                                                        <textarea id="Proof2_comments" class="ProofDiv_Enabled_TextArea" style="width:700">
                                                            <xsl:value-of select="." />
                                                        </textarea>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                    </table>
                                    <table style = "padding-left: 375px;">
                                        <th>
                                            <button id = "button1" onclick = "clicked()" class="AddMoreProof">
                                                <span>
                                                    DODAJ PROOF
                                                </span>
                                            </button>
                                        </th>
                                    </table>
                                    <br/>
                                    <br/>
                                    <table id="Proof3_table" border="1px" bordercolor="dimgray" width="850" style="visibility:hidden; border-collapse: collapse; margin-left:10;" class="hoverTable">
                                        <tr>
                                            <th bgcolor="#000000"  colspan="9" class="SummaryLabel">
                                                <span style="font-size:16;">PROOF #3</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Data</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Wersja</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kraj</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Ilość</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Format</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kurier</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>List przewozowy</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Zamów</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof3_date">
                                                        <input id="Proof3_date" type="date" class="ProofDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof3_ver">
                                                        <select id="Proof3_ver" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof3_country">
                                                        <input id="Proof3_country" class="ProofDiv_Enabled_TextInput" color="#3F3F3F">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof3_quantity">
                                                        <input id="Proof3_quantity" type="number" min="0" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof3_format">
                                                        <input id="Proof3_format" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof3_courier">
                                                        <select id="Proof3_courier" class="ProofDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof3_trackingNo">
                                                        <input id="Proof3_trackingNo" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof3_orderCheckbox">
                                                        <input type="checkbox" id="checkbox_proof3" value="Yes">
                                                            <xsl:choose>
                                                                <xsl:when test=".='Yes'">
                                                                    <xsl:attribute name="value">Yes</xsl:attribute>
                                                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                                                </xsl:when>
                                                            </xsl:choose>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Adres: </span>
                                            </th>
                                            <th style="padding:2 5 2 5; font-size: 14px;" colspan="8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof3_address">
                                                        <input id="Proof3_address" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Uwagi do proofa: </span>
                                            </th>
                                            <th nowrap="true" colspan="8" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof3_comments">
                                                        <textarea id="Proof3_comments" class="ProofDiv_Enabled_TextArea" style="width:700">
                                                            <xsl:value-of select="." />
                                                        </textarea>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                    </table>
                                    <br/>
                                    <br/>
                                    <table id="Proof4_table" border="1px" bordercolor="dimgray" width="850" style="visibility:hidden; border-collapse: collapse; margin-left:10;" class="hoverTable">
                                        <tr>
                                            <th bgcolor="#000000"  colspan="9" class="SummaryLabel">
                                                <span style="font-size:16;">PROOF #4</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Data</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Wersja</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kraj</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Ilość</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Format</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kurier</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>List przewozowy</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Zamów</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof4_date">
                                                        <input id="Proof4_date" type="date" class="ProofDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof4_ver">
                                                        <select id="Proof4_ver" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof4_country">
                                                        <input id="Proof4_country" class="ProofDiv_Enabled_TextInput" color="#3F3F3F">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof4_quantity">
                                                        <input id="Proof4_quantity" type="number" min="0" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof4_format">
                                                        <input id="Proof4_format" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof4_courier">
                                                        <select id="Proof4_courier" class="ProofDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof4_trackingNo">
                                                        <input id="Proof4_trackingNo" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof4_orderCheckbox">
                                                        <input type="checkbox" id="checkbox_proof4" value="Yes">
                                                            <xsl:choose>
                                                                <xsl:when test=".='Yes'">
                                                                    <xsl:attribute name="value">Yes</xsl:attribute>
                                                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                                                </xsl:when>
                                                            </xsl:choose>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Adres: </span>
                                            </th>
                                            <th style="padding:2 5 2 5; font-size: 14px;" colspan="8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof4_address">
                                                        <input id="Proof4_address" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Uwagi do proofa: </span>
                                            </th>
                                            <th nowrap="true" colspan="8" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof4_comments">
                                                        <textarea id="Proof4_comments" class="ProofDiv_Enabled_TextArea" style="width:700">
                                                            <xsl:value-of select="." />
                                                        </textarea>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                    </table>
                                    <br/>
                                    <br/>
                                    <table id="Proof5_table" border="1px" bordercolor="dimgray" width="850" style="visibility:hidden; border-collapse: collapse; margin-left:10;" class="hoverTable">
                                        <tr>
                                            <th bgcolor="#000000"  colspan="9" class="SummaryLabel">
                                                <span style="font-size:16;">PROOF #5</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Data</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Wersja</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kraj</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Ilość</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Format</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kurier</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>List przewozowy</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Zamów</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof5_date">
                                                        <input id="Proof5_date" type="date" class="ProofDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof5_ver">
                                                        <select id="Proof5_ver" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof5_country">
                                                        <input id="Proof5_country" class="ProofDiv_Enabled_TextInput" color="#3F3F3F">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof5_quantity">
                                                        <input id="Proof5_quantity" type="number" min="0" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof5_format">
                                                        <input id="Proof5_format" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof5_courier">
                                                        <select id="Proof5_courier" class="ProofDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof5_trackingNo">
                                                        <input id="Proof5_trackingNo" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof5_orderCheckbox">
                                                        <input type="checkbox" id="checkbox_proof5"  value="Yes">
                                                            <xsl:choose>
                                                                <xsl:when test=".='Yes'">
                                                                    <xsl:attribute name="value">Yes</xsl:attribute>
                                                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                                                </xsl:when>
                                                            </xsl:choose>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Adres: </span>
                                            </th>
                                            <th style="padding:2 5 2 5; font-size: 14px;" colspan="8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof5_address">
                                                        <input id="Proof5_address" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Uwagi do proofa: </span>
                                            </th>
                                            <th nowrap="true" colspan="8" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof5_comments">
                                                        <textarea id="Proof5_comments" class="ProofDiv_Enabled_TextArea" style="width:700">
                                                            <xsl:value-of select="." />
                                                        </textarea>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                    </table>
                                    <br/>
                                    <br/>
                                    <table id="Proof6_table" border="1px" bordercolor="dimgray" width="850" style="visibility:hidden; border-collapse: collapse; margin-left:10;" class="hoverTable">
                                        <tr>
                                            <th bgcolor="#000000"  colspan="9" class="SummaryLabel">
                                                <span style="font-size:16;">PROOF #6</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Data</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Wersja</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kraj</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Ilość</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Format</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kurier</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>List przewozowy</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Zamów</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof6_date">
                                                        <input id="Proof6_date" type="date" class="ProofDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof6_ver">
                                                        <select id="Proof6_ver" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof6_country">
                                                        <input id="Proof6_country" class="ProofDiv_Enabled_TextInput" color="#3F3F3F">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof6_quantity">
                                                        <input id="Proof6_quantity" type="number" min="0" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof6_format">
                                                        <input id="Proof6_format" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof6_courier">
                                                        <select id="Proof6_courier" class="ProofDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof6_trackingNo">
                                                        <input id="Proof6_trackingNo" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof6_orderCheckbox">
                                                        <input type="checkbox" id="checkbox_proof6" value="Yes">
                                                            <xsl:choose>
                                                                <xsl:when test=".='Yes'">
                                                                    <xsl:attribute name="value">Yes</xsl:attribute>
                                                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                                                </xsl:when>
                                                            </xsl:choose>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Adres: </span>
                                            </th>
                                            <th style="padding:2 5 2 5; font-size: 14px;" colspan="8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof6_address">
                                                        <input id="Proof6_address" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Uwagi do proofa: </span>
                                            </th>
                                            <th nowrap="true" colspan="8" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof6_comments">
                                                        <textarea id="Proof6_comments" class="ProofDiv_Enabled_TextArea" style="width:700">
                                                            <xsl:value-of select="." />
                                                        </textarea>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                    </table>
                                    <br/>
                                    <br/>
                                    <table id="Proof7_table" border="1px" bordercolor="dimgray" width="850" style="visibility:hidden; border-collapse: collapse; margin-left:10;" class="hoverTable">
                                        <tr>
                                            <th bgcolor="#000000"  colspan="9" class="SummaryLabel">
                                                <span style="font-size:16;">PROOF #7</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Data</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Wersja</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kraj</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Ilość</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Format</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kurier</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>List przewozowy</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Zamów</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof7_date">
                                                        <input id="Proof7_date" type="date" class="ProofDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof7_ver">
                                                        <select id="Proof7_ver" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof7_country">
                                                        <input id="Proof7_country" class="ProofDiv_Enabled_TextInput" color="#3F3F3F">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof7_quantity">
                                                        <input id="Proof7_quantity" type="number" min="0" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof7_format">
                                                        <input id="Proof7_format" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof7_courier">
                                                        <select id="Proof7_courier" class="ProofDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof7_trackingNo">
                                                        <input id="Proof7_trackingNo" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof7_orderCheckbox">
                                                        <input type="checkbox" id="checkbox_proof7" value="Yes">
                                                            <xsl:choose>
                                                                <xsl:when test=".='Yes'">
                                                                    <xsl:attribute name="value">Yes</xsl:attribute>
                                                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                                                </xsl:when>
                                                            </xsl:choose>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Adres: </span>
                                            </th>
                                            <th style="padding:2 5 2 5; font-size: 14px;" colspan="8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof7_address">
                                                        <input id="Proof7_address" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Uwagi do proofa: </span>
                                            </th>
                                            <th nowrap="true" colspan="8" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof7_comments">
                                                        <textarea id="Proof7_comments" class="ProofDiv_Enabled_TextArea" style="width:700">
                                                            <xsl:value-of select="." />
                                                        </textarea>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                    </table>
                                    <br/>
                                    <br/>
                                    <table id="Proof8_table" border="1px" bordercolor="dimgray" width="850" style="visibility:hidden; border-collapse: collapse; margin-left:10;" class="hoverTable">
                                        <tr>
                                            <th bgcolor="#000000"  colspan="9" class="SummaryLabel">
                                                <span style="font-size:16;">PROOF #8</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Data</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Wersja</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kraj</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Ilość</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Format</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Kurier</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>List przewozowy</span>
                                            </th>
                                            <th bgcolor="#3F3F3F"  class="SummaryLabel">
                                                <span>Zamów</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof8_date">
                                                        <input id="Proof8_date" type="date" class="ProofDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof8_ver">
                                                        <select id="Proof8_ver" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof8_country">
                                                        <input id="Proof8_country" class="ProofDiv_Enabled_TextInput" color="#3F3F3F">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof8_quantity">
                                                        <input id="Proof8_quantity" type="number" min="0" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof8_format">
                                                        <input id="Proof8_format" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof8_courier">
                                                        <select id="Proof8_courier" class="ProofDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof8_trackingNo">
                                                        <input id="Proof8_trackingNo" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof8_orderCheckbox">
                                                        <input type="checkbox" id="checkbox_proof8" value="Yes">
                                                            <xsl:choose>
                                                                <xsl:when test=".='Yes'">
                                                                    <xsl:attribute name="value">Yes</xsl:attribute>
                                                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                                                </xsl:when>
                                                            </xsl:choose>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Adres: </span>
                                            </th>
                                            <th style="padding:2 5 2 5; font-size: 14px;" colspan="8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof8_address">
                                                        <input id="Proof8_address" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Uwagi do proofa: </span>
                                            </th>
                                            <th nowrap="true" colspan="8" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof8_comments">
                                                        <textarea id="Proof8_comments" class="ProofDiv_Enabled_TextArea" style="width:700">
                                                            <xsl:value-of select="." />
                                                        </textarea>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                    </table>
                                    <br/>
                                    <br/>
                                    <table id="Proof9_table" border="1px" bordercolor="dimgray" width="850" style="visibility:hidden; border-collapse: collapse; margin-left:10;" class="hoverTable">
                                        <tr>
                                            <th bgcolor="#000000"  colspan="9" class="SummaryLabel">
                                                <span style="font-size:16;">PROOF #9</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>Data</span>
                                            </th>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>Wersja</span>
                                            </th>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>Kraj</span>
                                            </th>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>Ilość</span>
                                            </th>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>Format</span>
                                            </th>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>Kurier</span>
                                            </th>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>List przewozowy</span>
                                            </th>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>Zamów</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof9_date">
                                                        <input id="Proof9_date" type="date" class="ProofDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof9_ver">
                                                        <select id="Proof9_ver" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof9_country">
                                                        <input id="Proof9_country" class="ProofDiv_Enabled_TextInput" color="#3F3F3F">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof9_quantity">
                                                        <input id="Proof9_quantity" type="number" min="0" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof9_format">
                                                        <input id="Proof9_format" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof9_courier">
                                                        <select id="Proof9_courier" class="ProofDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof9_trackingNo">
                                                        <input id="Proof9_trackingNo" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof9_orderCheckbox">
                                                        <input type="checkbox" id="checkbox_proof9" value="Yes">
                                                            <xsl:choose>
                                                                <xsl:when test=".='Yes'">
                                                                    <xsl:attribute name="value">Yes</xsl:attribute>
                                                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                                                </xsl:when>
                                                            </xsl:choose>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Adres: </span>
                                            </th>
                                            <th style="padding:2 5 2 5; font-size: 14px;" colspan="8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof9_address">
                                                        <input id="Proof9_address" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Uwagi do proofa: </span>
                                            </th>
                                            <th nowrap="true" colspan="8" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof9_comments">
                                                        <textarea id="Proof9_comments" class="ProofDiv_Enabled_TextArea" style="width:700">
                                                            <xsl:value-of select="." />
                                                        </textarea>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                    </table>
                                    <br/>
                                    <br/>
                                    <table id="Proof10_table" border="1px" bordercolor="dimgray" width="850" style="visibility:hidden; border-collapse: collapse; margin-left:10;" class="hoverTable">
                                        <tr>
                                            <th bgcolor="#000000"  colspan="9" class="SummaryLabel">
                                                <span style="font-size:16;">PROOF #10</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>Data</span>
                                            </th>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>Wersja</span>
                                            </th>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>Kraj</span>
                                            </th>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>Ilość</span>
                                            </th>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>Format</span>
                                            </th>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>Kurier</span>
                                            </th>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>List przewozowy</span>
                                            </th>
                                            <th bgcolor="#3F3F3F" class="SummaryLabel">
                                                <span>Zamów</span>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof10_date">
                                                        <input id="Proof10_date" type="date" class="ProofDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof10_ver">
                                                        <select id="Proof10_ver" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof10_country">
                                                        <input id="Proof10_country" class="ProofDiv_Enabled_TextInput" color="#3F3F3F">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof10_quantity">
                                                        <input id="Proof10_quantity" type="number" min="0" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof10_format">
                                                        <input id="Proof10_format" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof10_courier">
                                                        <select id="Proof10_courier" class="ProofDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof10_trackingNo">
                                                        <input id="Proof10_trackingNo" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                            <th nowrap="true" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof10_orderCheckbox">
                                                        <input type="checkbox" id="checkbox_proof10" value="Yes">
                                                            <xsl:choose>
                                                                <xsl:when test=".='Yes'">
                                                                    <xsl:attribute name="value">Yes</xsl:attribute>
                                                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                                                </xsl:when>
                                                            </xsl:choose>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Adres: </span>
                                            </th>
                                            <th style="padding:2 5 2 5; font-size: 14px;" colspan="8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof10_address">
                                                        <input id="Proof10_address" class="ProofDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#3F3F3F" nowrap="true" class="SummaryLabel">
                                                <span>Uwagi do proofa: </span>
                                            </th>
                                            <th nowrap="true" colspan="8" style="padding:2 5 2 5;">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Proof10_comments">
                                                        <textarea id="Proof10_comments" class="ProofDiv_Enabled_TextArea" style="width:700">
                                                            <xsl:value-of select="." />
                                                        </textarea>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </th>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <!-- PROOF SECTION END -->
                            <!-- PLATES SECTION BEGIN -->
                            <div id="plates" style="position: absolute; visibility: hidden; background:#E3E3E3; border-left:1px solid dimgray; height:2000; width:890;">
                                <br/>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Data zamówienia matryc:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPlateOrderDate">
                                                        <input id="PlatesOrderDate_ID" type="date" class="PlatesDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2;">
                                        <span class="StandardLabel">Data dostawy matryc:</span>
                                    </th>
                                    <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                        <span>
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobPlateDeliveryDate">
                                                    <input type="date" class="PlatesDiv_Enabled_DateInput" >
                                                        <xsl:attribute name="value">
                                                            <xsl:value-of select="." />
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <hr/>
                                <table style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Rodzaj druku:</span>
                                        </th>
                                        <td >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPrintType">
                                                        <select id="print_type_value" class="PlatesDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Szerokość użytku:</span>
                                        </th>
                                        <td  align="Left"  style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUseWidth">
                                                        <input type="number" min="0" class="PlatesDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true">
                                            <span class="StandardLabel">mm</span>
                                        </th>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Wysokość użytku:</span>
                                        </th>
                                        <td  align="Left"  style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUseHeight">
                                                        <input type="number" min="0" class="PlatesDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true">
                                            <span class="StandardLabel">mm</span>
                                        </th>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Szerokość podłoża:</span>
                                        </th>
                                        <td  align="Left"  style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobRibbonWidth">
                                                        <input type="number" min="0" class="PlatesDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true">
                                            <span class="StandardLabel">mm</span>
                                        </th>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Ilość użytków na raporcie:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUsesOnRaport">
                                                        <input type="number" min="0" class="PlatesDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Ilość użytków na szerokości:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUsesOnWidth">
                                                        <input type="number" min="0" class="PlatesDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <hr/>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Wałek:</span>
                                        </th>
                                        <td  align="Left" width="60" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCylinderSize">
                                                        <input type="number" min="0" class="PlatesDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true">
                                            <span class="StandardLabel">mm</span>
                                        </th>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Liniatura:</span>
                                        </th>
                                        <td  align="Left"  style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobScreenRuling">
                                                        <select id="screen_ruling_value" class="PlatesDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true">
                                            <span class="StandardLabel">lpi</span>
                                        </th>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Liczba kolorów:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobQuantityOfColors">
                                                        <input type="number" min="0" class="PlatesDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Numer akceptacji PDF:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPDFAcceptedVer">
                                                        <select id="Pdf_ver" class="PlatesDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Przesunięcie:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobDisplacement">
                                                        <select id="yes_or_no_value11" class="PlatesDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Kalibracja:</span>
                                        </th>
                                        <td >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCalibration">
                                                        <select id="clientProfiles_value1" class="PlatesDiv_Enabled_SelectInput"  style="width:auto;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Skrót na maszynie:</span>
                                        </th>
                                        <td  align="Left" nowrap="false" style="padding:2 2 2 2 ;">
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobShortcutOnMashine">
                                                        <select id="yes_or_no_value16" class="PlatesDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel"></span>
                                        </th>
                                        <td  align="Left" nowrap="false">
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobShortcutOnMashineValue">
                                                        <input type="number" class="PlatesDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true">
                                                <span class="StandardLabel">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <hr/>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Wydruk A4:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobA4Print">
                                                        <select id="yes_or_no_value21" class="PlatesDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; padding-left:5; ">
                                            <span class="StandardLabel">Ilość wydruków A4:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobA4PrintQuantity">
                                                        <input type="number" min="0" class="PlatesDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Proof do matryc:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProofToPlates">
                                                        <select id="yes_or_no_value17" class="PlatesDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; padding-left:5; ">
                                            <span class="StandardLabel">Ilość proofów do matryc:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobQuantityProofToPlates">
                                                        <input type="number" min="0" class="PlatesDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span class="StandardLabel">Wydruk 1:1:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Job1to1Print">
                                                        <select id="yes_or_no_value22" class="PlatesDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; padding-left:5; ">
                                            <span class="StandardLabel">Ilość proofów do matryc:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Job1to1PrintQuantity">
                                                        <input type="number" min="0" class="PlatesDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table border="0px" width="100" style="padding-left:10;  margin-bottom:1;" id="PlatesOrder_Activator">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel" style=" color:red">Potwierdzam poprawność danych i zamawiam matryce:</span>
                                        </th>
                                        <td align="Left"  style="padding:2 5 2 5 ;">
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPlateOrderConfirmation">
                                                        <select id="plate_order_confirmation_value" class="PlatesDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <table style="padding-left:10;  margin-bottom:1;">
                                    <td>
                                        <span class="StandardLabel">
                                            Uwagi do matryc:
                                        </span>
                                    </td>
                                </table>
                                <table style="padding-left:10;  margin-bottom:1;">
                                    <td style="padding:5 5 5 5 ;">
                                        <xsl:for-each select="JobSpec">
                                            <xsl:for-each select="JobCommentsToPlates">
                                                <textarea style="height:100; width:800; padding:5 5 5 5;" class="PlatesDiv_Enabled_TextArea">
                                                    <xsl:value-of select="."/>
                                                </textarea>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </td>
                                </table>
                            </div>
                            <!-- PLATES SECTION END -->
                            <!-- RENEWAL SECTION BEGIN -->
                            <div id="renewal" style="position: absolute; visibility: hidden; background:#E3E3E3; border-left:1px solid dimgray; height:2000; width:890;">
                                <br/>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Data zamówienia wznowień:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPlateOrderDate">
                                                        <input id="RenewalOrderDate_ID" type="date" class="RenDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2;">
                                        <span class="StandardLabel">Nazwa projektu:</span>
                                    </th>
                                    <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                        <span>
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobAlias">
                                                    <input type="text" class="RenDiv_Disabled_TextInput" disabled="disabled" style="width:700px;">
                                                        <xsl:attribute name="value">
                                                            <xsl:value-of select="." />
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true">
                                            <span class="StandardLabel">Indeks 1 projektu klienta:</span>
                                        </th>
                                        <td align="left" nowrap="true">
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerID1Number" >
                                                        <input type="text"  style="width:auto;" class="RenDiv_Disabled_TextInput" disabled="disabled">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding-left:10;">
                                            <span class="StandardLabel">Indeks 2 projektu klienta:</span>
                                        </th>
                                        <td align="left" nowrap="true">
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerID2Number">
                                                        <input type="text" style="width:auto;" class="RenDiv_Disabled_TextInput" disabled="disabled">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Kod zadania:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" >
                                            <span class="RenDiv_Disabled_TextInput" disabled="disabled">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCode">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Kod projektu:</span>
                                        </th>
                                        <td align="Left" nowrap="true" style="padding:2;" >
                                            <span class="RenDiv_Disabled_TextInput" disabled="disabled">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProjectCode">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <hr/>
                                <table style="padding-left:10;  margin-bottom:1;">
                                    <td style="padding-top:0.2cm; padding-bottom:0.2cm; ">
                                        <span class="StandardLabel">
                                        Informacje na temat wznowień:
                                    </span>
                                    </td>
                                    <tr>
                                        <td>
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobPlateRenewalComments">
                                                    <textarea class="RenDiv_Enabled_TextArea">
                                                        <xsl:value-of select="."/>
                                                    </textarea>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <table border="0px" style="padding-left:10;  margin-bottom:1;" id="RenewalOrder_Activator">
                                    <tr>
                                        <th align="Left" width="100" nowrap="true" >
                                            <span class="StandardLabel" style="color: red;">Potwierdzam zaznaczenie poprawnych kolorów i zamawiam wznowienia:</span>
                                        </th>
                                        <td align="Left" width="auto" style="padding:2 5 2 5 ;">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobPlateRenewalConfirmation">
                                                    <select class="RenDiv_Enabled_SelectInput" id="yes_or_no_value24">
                                                        <xsl:apply-templates/>
                                                    </select>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <table border="1px" bordercolor="dimgray" rules="cols" width="95%" style="border-collapse: collapse; margin-left:10;" class="hoverTable">
                                    <tr>
                                        <th align="center" colspan="13" nowrap="true" style="padding:2; background:#000; ">
                                            <span class="SummaryLabel" style="font-size: 20px;">
                                            SPECYFIKACJA KOMPLETU MATRYC:
                                        </span>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Lp.</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Kolor</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Lpi</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Kąt</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>DC</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Zadruk</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Raster</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Kop.</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Płyta</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Wznów</span>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">1.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow1">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_R1">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow1">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="font-size: 14px; ">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateRenewalRow1">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowR1" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">2.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow2">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_R2">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow2">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateRenewalRow2">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowR2" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">3.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow3">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_R3">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow3">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateRenewalRow3">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowR3" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">4.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow4">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_R4">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow4">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateRenewalRow4">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowR4" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">5.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow5">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_R5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow5">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateRenewalRow5">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowR5" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">6.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow6">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_R6">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow6">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateRenewalRow6">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowR6" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">7.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow7">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_R7">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow7">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateRenewalRow7">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowR7" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">8.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow8">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_R8">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow8">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateRenewalRow8">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowR8" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">9.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow9">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_R9">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow9">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateRenewalRow9">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowR9" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">10.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow10">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled"  id="Color_R10">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow10">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateRenewalRow10">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowR10" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">11.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow11">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_R11">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow11">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateRenewalRow11">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowR11" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">12.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow12">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_R12">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow12">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateRenewalRow12">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowR12" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">13.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow13">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_R13">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow13">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateRenewalRow13">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowR13" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">14.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow14">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_R14">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow14">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateRenewalRow14">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowR14" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">15.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow15">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_R15">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow15">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateRenewalRow15">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowR15" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                </table>
                            </div>
                            <!-- RENEWAL SECTION END -->
                            <!-- COMPLAINT SECTION BEGIN -->
                            <div id="complaint" style="position: absolute; visibility: hidden; background:#E3E3E3; border-left:1px solid dimgray; height:2000; width:890;">
                                <br/>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Data złożenia reklamacji do matryc:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPlateOrderDate">
                                                        <input type="date" class="ComDiv_Enabled_DateInput" id="ComplaintOrderDate_ID">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2;">
                                        <span class="StandardLabel">Nazwa projektu:</span>
                                    </th>
                                    <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                        <span>
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobAlias">
                                                    <input type="text" class="ComDiv_Disabled_DateInput" disabled="disabled" style="width:700px;">
                                                        <xsl:attribute name="value">
                                                            <xsl:value-of select="." />
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true">
                                            <span class="StandardLabel">Indeks 1 projektu klienta:</span>
                                        </th>
                                        <td align="left" nowrap="true">
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerID1Number" >
                                                        <input type="text" style="width:auto" class="ComDiv_Disabled_TextInput" disabled="disabled">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding-left:10;">
                                            <span class="StandardLabel">Indeks 2 projektu klienta:</span>
                                        </th>
                                        <td align="left" nowrap="true">
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerID2Number">
                                                        <input type="text" style="width:auto" class="ComDiv_Disabled_TextInput" disabled="disabled">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Kod zadania:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" >
                                            <span class="ComDiv_Disabled_TextInput" disabled="disabled">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCode">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span class="StandardLabel">Kod projektu:</span>
                                        </th>
                                        <td align="Left" nowrap="true" style="padding:2;" >
                                            <span class="ComDiv_Disabled_TextInput" disabled="disabled">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProjectCode">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <hr/>
                                <table style="padding-left:10;  margin-bottom:1;">
                                    <td style="padding-top:0.2cm; padding-bottom:0.2cm; ">
                                        <span class="StandardLabel">
                                        Opis reklamacji:
                                    </span>
                                    </td>
                                    <tr>
                                        <td>
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobPlateComplaintComments">
                                                    <textarea class="ComDiv_Enabled_TextArea">
                                                        <xsl:value-of select="."/>
                                                    </textarea>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <table border="0px" style="padding-left:10;  margin-bottom:1;" id="ComplaintOrder_Activator">
                                    <tr>
                                        <th align="Left" width="100" nowrap="true" >
                                            <span class="StandardLabel" style="color: red;">Przyjęto zlecenie do rozpatrzenia reklamacji:</span>
                                        </th>
                                        <td align="Left" width="auto" style="padding:2 5 2 5 ;">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobPlateComplaintConfirmation">
                                                    <select class="ComDiv_Enabled_SelectInput" id="yes_or_no_value23">
                                                        <xsl:apply-templates/>
                                                    </select>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <table border="1px" bordercolor="dimgray" rules="cols" width="95%" style="border-collapse: collapse; margin-left:10;" class="hoverTable">
                                    <tr>
                                        <th align="center" colspan="13" nowrap="true" style="padding:2; background:#000; ">
                                            <span class="SummaryLabel" style="font-size: 20px;">
                                            SPECYFIKACJA KOMPLETU MATRYC:
                                        </span>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Lp.</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Kolor</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Lpi</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Kąt</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>DC</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Zadruk</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Raster</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Kop.</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Płyta</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Do reklamacji:</span>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">1.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow1">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_C1">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow1">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="font-size: 14px; ">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow1">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateComplaintRow1">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowC1" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">2.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow2">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_C2">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow2">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow2">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateComplaintRow2">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowC2" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">3.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow3">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_C3">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow3">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow3">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateComplaintRow3">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowC3" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">4.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow4">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_C4">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow4">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow4">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateComplaintRow4">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowC4" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">5.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow5">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_C5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow5">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow5">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateComplaintRow5">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowC5" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">6.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow6">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_C6">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow6">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow6">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateComplaintRow6">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowC6" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">7.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow7">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_C7">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow7">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow7">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateComplaintRow7">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowC7" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">8.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow8">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_C8">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow8">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow8">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateComplaintRow8">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowC8" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">9.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow9">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_C9">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow9">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow9">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateComplaintRow9">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowC9" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">10.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow10">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_C10">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow10">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow10">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateComplaintRow10">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowC10" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">11.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow11">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_C11">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow11">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow11">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateComplaintRow11">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowC11" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">12.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow12">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_C12">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow12">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow12">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateComplaintRow12">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowC12" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">13.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow13">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_C13">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow13">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow13">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateComplaintRow13">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowC13" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">14.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow14">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_C14">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow14">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow14">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateComplaintRow14">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowC14" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">15.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow15">
                                                        <input class="SummaryDiv_Disabled_TextInput" disabled="disabled" id="Color_C15">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow15">
                                                        <input  class="SummaryDiv_Disabled_TextInput" size="5">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow15">
                                                        <span class="SummaryDiv_Disabled_TextInput">
                                                            <xsl:apply-templates/>
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" class="chbx_class">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="PlateComplaintRow15">
                                                    <input type="hidden" value="No"/>
                                                    <input type="checkbox" id="checkbox_rowC15" value="yes" style="border:solid black 1px;">
                                                        <xsl:choose>
                                                            <xsl:when test=".='yes'">
                                                                <xsl:attribute name="value">yes</xsl:attribute>
                                                                <xsl:attribute name="checked">checked</xsl:attribute>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                </table>
                            </div>
                            <!-- COMPLAINT SECTION END -->
                            <!-- SUMMARY SECTION BEGIN -->
                            <div id="summary" style="position: absolute; visibility: hidden; background:#E3E3E3; border-left:1px solid dimgray; height:2000; width:890;">
                                <br/>
                                <table border="1px" bordercolor="dimgray" rules="cols" width="95%" style="border-right:solid dimgray 2px; align:left; margin-bottom:10; margin-left:10; padding-left:30;" align="center" class="hoverTable">
                                    <tr>
                                        <th align="center" colspan="9" nowrap="true" style="padding:2; background:#000; ">
                                            <span  class="SummaryLabel" style="font-size: 20px;">
                                                INFORMACJE PODSTAWOWE:
                                            </span>
                                        </th>
                                    </tr>
                                    <tr style="border-bottom:solid dimgray 2px;">
                                        <th align="left" bgcolor="#c4c4c4" nowrap="true" style="padding:2; background:#3f3f3f;">
                                            <span class="SummaryLabel" style="font-size:16px; padding:5 5 5 5;">Nazwa projektu:</span>
                                        </th>
                                        <td colspan="8" align="center" style="padding:5; " >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobAlias">
                                                        <input  id="JobName-Long2" class="SummaryDiv_Enabled_TextInput" style="font-size:16px; font-weight:bold;width:600px;" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Kod zadania:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" width="160">
                                            <span align="center">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCode">
                                                        <input class="SummaryDiv_Enabled_TextInput" style="width:150px;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f;">
                                            <span class="SummaryLabel">Index 1 klienta:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ; border-right:solid dimgray 2px;">
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerID1Number">
                                                        <input class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; " width="150">
                                            <span class="SummaryLabel">Wydruk A4 do drukarzy</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobA4Print">
                                                        <select id="yes_or_no_value1" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;">
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobA4PrintQuantity">
                                                        <input type="number" min="0" class="SummaryDiv_Enabled_TextInput" style="width: 19">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Kod projektu:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProjectCode">
                                                        <input class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Index 2 klienta:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ; border-right:solid dimgray 2px;">
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerID2Number">
                                                        <input class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Proof do klienta:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerProof">
                                                        <select id="yes_or_no_value2" class="SummaryDiv_Enabled_SelectInput" >
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerProofQuantity">
                                                        <input type="number" min="0" class="SummaryDiv_Enabled_TextInput" style="width: 19">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;background:#3f3f3f;  ">
                                            <span class="SummaryLabel">Klient (płatnik FV):</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerAndInvoicePayer">
                                                        <input class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Akceptujący:</span>
                                        </th>
                                        <td align="center" nowrap="true"  style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span class="SummaryDiv_Enabled_SelectInput">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPrintCoordinator">
                                                        <select id="client_print_coordinator_value1" class="SummaryDiv_Enabled_SelectInput" style="text-align:left">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Format proofa klienta:</span>
                                        </th>
                                        <td  align="center" colspan="2" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerProofFormat">
                                                        <input class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Drukarnia:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPrintHouse">
                                                        <input class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Data akceptacji:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPlateOrderDate">
                                                        <input type="date" class="SummaryDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; " width="150">
                                            <span class="SummaryLabel">Proof do drukarni:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProofToPlates">
                                                        <select id="yes_or_no_value3" class="SummaryDiv_Enabled_SelectInput" >
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;"  >
                                            <span style="max-width: 10px" >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobQuantityProofToPlates">
                                                        <input type="number" min="0" class="SummaryDiv_Enabled_TextInput" style="width: 19">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Kurier:</span>
                                        </th>
                                        <td  align="center"   nowrap="true" style="padding:2 2 2 2 ; border-right:solid dimgray 2px;">
                                            <span id="SummaryDiv_Enabled_SelectInput">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCourier">
                                                        <select id="spec_courier" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="false" style="padding:2; background:#3f3f3f;">
                                            <span class="SummaryLabel">Wzorzec:</span>
                                        </th>
                                        <td align="center" nowrap="true"  style="padding:2 2 2 2 ;border-right:solid dimgray 2px;">
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobAgencyProofOrSample">
                                                        <select id="samples_value1" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Format proofa drukarni:</span>
                                        </th>
                                        <td  align="center" colspan="2" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPrintHouseProofFormat">
                                                        <input class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Data dostarczenia:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPlateAlternativeDate">
                                                        <input type="date" class="SummaryDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Zwrot wzorca:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="SummaryData_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobAgencyProofReturn">
                                                        <select id="yes_or_no_value18" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Wydruk 1:1:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;">
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Job1to1Print">
                                                        <select id="yes_or_no_value" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="Job1to1PrintQuantity">
                                                        <input type="number" min="0" class="SummaryDiv_Enabled_TextInput" style="width: 19">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <table border="1px" bordercolor="dimgray" rules="cols" width="95%" style=" border-right:solid dimgray 2px; align:left; margin-bottom:10; margin-left:10; padding-left:30;" align="center" class="hoverTable">
                                    <tr>
                                        <th align="center" colspan="7" nowrap="true" style="padding:2; background:#000; ">
                                            <span class="SummaryLabel" style="font-size: 20px;">
                                                PRZYGOTOWALNIA:
                                            </span>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; " width="100">
                                            <span class="SummaryLabel">Przygotowanie akceptu:</span>
                                        </th>
                                        <td nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" width="150">
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobAcceptGraphicDesigner">
                                                        <select id="graphics_value" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;width:160">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Rodzaj folii:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ; border-right:solid dimgray 2px;" >
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobFoilType">
                                                        <input class="SummaryDiv_Enabled_TextInput" style="width:120;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Dystorsja:</span>
                                        </th>
                                        <td  align="center" colspan="2" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobDistortion">
                                                        <input class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Obróbka bitmapy:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobBitmapGraphicDesigner">
                                                        <select id="graphics_value1" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; " width="130">
                                            <span class="SummaryLabel">Laminacja:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ; border-right:solid dimgray 2px;" >
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobFoilLamination">
                                                        <input class="SummaryDiv_Enabled_TextInput " style="width:120;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Świecenie:</span>
                                        </th>
                                        <td  align="center" colspan="2"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobExposureType">
                                                        <select id="exposure_value" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Przygotowanie proofa:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProofGraphicDesigner">
                                                        <select id="graphics_value2" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Pasery:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPrintingFence">
                                                        <select id="yes_or_no_value5" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Matryca:</span>
                                        </th>
                                        <td  align="center" colspan="2" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPlateType">
                                                        <select id="plates_type_value" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Montaż / RIP:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobMontageGraphicDesigner">
                                                        <select id="graphics_value3" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2;background:#3f3f3f; ">
                                            <span class="SummaryLabel">Kliny:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobGussets">
                                                        <select id="yes_or_no_value6" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2;background:#3f3f3f;  ">
                                            <span class="SummaryLabel">Użytki na obwodzie:</span>
                                        </th>
                                        <td  align="center" colspan="2" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUsesOnRaport">
                                                        <input type="number" min="0" class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Wałek:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCylinderSize">
                                                        <input type="number" min="0" class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Bandy:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPrintingBelts">
                                                        <select id="yes_or_no_value7" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2;background:#3f3f3f;">
                                            <span class="SummaryLabel">Użytki na szerokości:</span>
                                        </th>
                                        <td  align="center" colspan="2" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUsesOnWidth">
                                                        <input type="number" min="0" class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Raport:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobRepeatLength">
                                                        <input type="number" min="0" class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Kostki:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCubes">
                                                        <select id="yes_or_no_value8" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Szerokość użytku:</span>
                                        </th>
                                        <td  align="center" colspan="2" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUseWidth">
                                                        <input type="number" min="0" class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Szerokość folii:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobRibbonWidth">
                                                        <input type="number" min="0" class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Fotokomórka:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPhotocell">
                                                        <select id="yes_or_no_value9" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Wysokość użytku:</span>
                                        </th>
                                        <td  align="center" colspan="2" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUseHeight">
                                                        <input type="number" min="0" class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;background:#3f3f3f;  ">
                                            <span class="SummaryLabel">Szerokość zadruku:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPrintWidth">
                                                        <input type="number" min="0" class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2;background:#3f3f3f;  ">
                                            <span class="SummaryLabel">Lustro / Rewers:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobMirror">
                                                        <select id="awers_rewers_value" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Przesunięcie:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span id="SummaryData_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobDisplacement">
                                                        <select id="yes_or_no_value10" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="SummaryData_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobDisplacementValue">
                                                        <input type="number" class="SummaryDiv_Enabled_TextInput" style="width: 30">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Liniatura [lpi]:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="SummaryData_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobScreenRuling">
                                                        <select id="screen_ruling_value1" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Biały:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="SummaryData_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobWhite">
                                                        <select id="white_value1" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; " >
                                            <span class="SummaryLabel">Maszyna:</span>
                                        </th>
                                        <td  align="center" colspan="2" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPrintMashine">
                                                        <select id="machine_value" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Nr akceptacji PDF:</span>
                                        </th>
                                        <td  align="center" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPDFAcceptedVer">
                                                        <select id="Nr_of_acceptPDF" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Lakier:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="SummaryData_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobVarnish">
                                                        <select id="varnish_value1" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Skrót na maszynie:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span id="SummaryData_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobShortcutOnMashine">
                                                        <select id="yes_or_no_value12" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span id="SummaryData_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobShortcutOnMashineValue">
                                                        <input type="number" class="SummaryDiv_Enabled_TextInput" style="width: 30">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Kolorystyka:</span>
                                        </th>
                                        <td  align="Left" colspan="6" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px; border-top: solid dimgray 1px" >
                                            <span id="SummaryData_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobColoristic">
                                                        <input class="SummaryDiv_Enabled_TextInput" style="text-align:left;width:600px;padding-left:15px;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Krzywa kompensacyjna:</span>
                                        </th>
                                        <td  align="Left" colspan="6" nowrap="true" style="border-right:solid dimgray 2px;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCompensationCurve">
                                                        <select id="client_compensation_curve_value" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f; ">
                                            <span class="SummaryLabel">Profil kolorystyczny:</span>
                                        </th>
                                        <td colspan="6" nowrap="true" style="border-right:solid dimgray 2px;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCalibration">
                                                        <select id="clientProfiles_value2" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <table border="1px" bordercolor="dimgray" rules="cols" width="95%" style="border-collapse: collapse; align:left; margin-bottom:10; margin-left:10; padding-left:30;">
                                    <tr>
                                        <th align="center" colspan="8" nowrap="true" style="padding:2; background:#000; ">
                                            <span class="SummaryLabel" style="font-size: 20px;">
                                                UWAGI:
                                            </span>
                                        </th>
                                    </tr>
                                    <tr >
                                        <td style="padding:5 5 5 5 ; background:#E3E3E3">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobSummaryComments">
                                                    <textarea class="SummaryDiv_Enabled_TextArea" placeholder="wpisz uwagi..." style="padding: 10 10 10 10; height:125; width:825; font-size:13px;">
                                                        <xsl:value-of select="."/>
                                                    </textarea>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <table border="1px" bordercolor="dimgray" rules="cols" width="95%" style="border-collapse: collapse; margin-left:10;" class="hoverTable">
                                    <tr>
                                        <th align="center" colspan="13" nowrap="true" style="padding:2; background:#000; ">
                                            <span class="SummaryLabel" style="font-size: 20px;">
                                                SPECYFIKACJA KOMPLETU MATRYC:
                                            </span>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Lp.</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Kolor</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Lpi</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Kąt</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>DC</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Zadruk</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Raster</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Kop.</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Płyta</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>X [cm]</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>Y [cm]</span>
                                        </th>
                                        <th bgcolor="#3F3F3F" class="SummaryLabel">
                                            <span>cm
                                                <sup>2</sup>
                                            </span>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">1.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5; font-size: 14px;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow1">
                                                        <input class="SummaryDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;width:10%;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow1">
                                                        <select id="spec_screen_rulling_value1" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;width:8%;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow1">
                                                        <select id="spec_angle_value1" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;width:9%; ">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow1">
                                                        <select id="spec_DC_value1" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;width:9%;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow1">
                                                        <select id="spec_print_type_value1" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;width:8%;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow1">
                                                        <select id="spec_raster_type_value1" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;width:2%">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow1">
                                                        <input type="number" id="row-Q" class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;width:13%;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow1">
                                                        <select id="spec_plates_type_value1" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;width:7%">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="XDimensionRow1">
                                                        <input id="row-X" class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;width:7%">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="YDimensionRow1">
                                                        <input id="row-Y" class="SummaryDiv_Enabled_TextInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row1">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="TotalSurfaceRow1">
                                                        <input class="SummaryDiv_Enabled_TextInput total-cm">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">2.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow2">
                                                        <input class="SummaryDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow2">
                                                        <select id="spec_screen_rulling_value2" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow2">
                                                        <select id="spec_angle_value2" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow2">
                                                        <select id="spec_DC_value2" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow2">
                                                        <select id="spec_print_type_value2" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow2">
                                                        <select id="spec_raster_type_value2" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow2">
                                                        <input type="number" id="row-Q" class="SummaryDiv_Enabled_TextInput" style="width:20;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow2">
                                                        <select id="spec_plates_type_value2" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="XDimensionRow2">
                                                        <input id="row-X" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="YDimensionRow2">
                                                        <input id="row-Y" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row2">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="TotalSurfaceRow2">
                                                        <input class="SummaryDiv_Enabled_TextInput total-cm">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">3.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow3">
                                                        <input class="SummaryDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow3">
                                                        <select id="spec_screen_rulling_value3" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow3">
                                                        <select id="spec_angle_value3" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow3">
                                                        <select id="spec_DC_value3" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow3">
                                                        <select id="spec_print_type_value3" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow3">
                                                        <select id="spec_raster_type_value3" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow3">
                                                        <input type="number" id="row-Q" class="SummaryDiv_Enabled_TextInput" style="width:20;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow3">
                                                        <select id="spec_plates_type_value3" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="XDimensionRow3">
                                                        <input id="row-X" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="YDimensionRow3">
                                                        <input id="row-Y" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row3">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="TotalSurfaceRow3">
                                                        <input class="SummaryDiv_Enabled_TextInput total-cm">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">4.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow4">
                                                        <input class="SummaryDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow4">
                                                        <select id="spec_screen_rulling_value4" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow4">
                                                        <select id="spec_angle_value4" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow4">
                                                        <select id="spec_DC_value4" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow4">
                                                        <select id="spec_print_type_value4" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow4">
                                                        <select id="spec_raster_type_value4" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow4">
                                                        <input type="number" id="row-Q" class="SummaryDiv_Enabled_TextInput" style="width:20;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow4">
                                                        <select id="spec_plates_type_value4" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="XDimensionRow4">
                                                        <input id="row-X" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="YDimensionRow4">
                                                        <input id="row-Y" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row4">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="TotalSurfaceRow4">
                                                        <input class="SummaryDiv_Enabled_TextInput total-cm">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">5.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow5">
                                                        <input class="SummaryDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow5">
                                                        <select id="spec_screen_rulling_value5" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow5">
                                                        <select id="spec_angle_value5" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow5">
                                                        <select id="spec_DC_value5" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow5">
                                                        <select id="spec_print_type_value5" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow5">
                                                        <select id="spec_raster_type_value5" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow5">
                                                        <input type="number" id="row-Q" class="SummaryDiv_Enabled_TextInput" style="width:20;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow5">
                                                        <select id="spec_plates_type_value5" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="XDimensionRow5">
                                                        <input id="row-X" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="YDimensionRow5">
                                                        <input id="row-Y" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row5">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="TotalSurfaceRow5">
                                                        <input class="SummaryDiv_Enabled_TextInput total-cm">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">6.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow6">
                                                        <input class="SummaryDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow6">
                                                        <select id="spec_screen_rulling_value6" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow6">
                                                        <select id="spec_angle_value6" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow6">
                                                        <select id="spec_DC_value6" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow6">
                                                        <select id="spec_print_type_value6" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow6">
                                                        <select id="spec_raster_type_value6" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow6">
                                                        <input type="number" id="row-Q" class="SummaryDiv_Enabled_TextInput" style="width:20;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow6">
                                                        <select id="spec_plates_type_value6" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="XDimensionRow6">
                                                        <input id="row-X" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="YDimensionRow6">
                                                        <input id="row-Y" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row6">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="TotalSurfaceRow6">
                                                        <input class="SummaryDiv_Enabled_TextInput total-cm">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">7.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow7">
                                                        <input class="SummaryDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow7">
                                                        <select id="spec_screen_rulling_value7" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow7">
                                                        <select id="spec_angle_value7" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow7">
                                                        <select id="spec_DC_value7" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow7">
                                                        <select id="spec_print_type_value7" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow7">
                                                        <select id="spec_raster_type_value7" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow7">
                                                        <input type="number" id="row-Q" class="SummaryDiv_Enabled_TextInput" style="width:20;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow7">
                                                        <select id="spec_plates_type_value7" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="XDimensionRow7">
                                                        <input id="row-X" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="YDimensionRow7">
                                                        <input id="row-Y" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row7">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="TotalSurfaceRow7">
                                                        <input class="SummaryDiv_Enabled_TextInput total-cm">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">8.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow8">
                                                        <input class="SummaryDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow8">
                                                        <select id="spec_screen_rulling_value8" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow8">
                                                        <select id="spec_angle_value8" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow8">
                                                        <select id="spec_DC_value8" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow8">
                                                        <select id="spec_print_type_value8" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow8">
                                                        <select id="spec_raster_type_value8" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow8">
                                                        <input type="number" id="row-Q" class="SummaryDiv_Enabled_TextInput" style="width:20;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow8">
                                                        <select id="spec_plates_type_value8" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="XDimensionRow8">
                                                        <input id="row-X" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="YDimensionRow8">
                                                        <input id="row-Y" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row8">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="TotalSurfaceRow8">
                                                        <input class="SummaryDiv_Enabled_TextInput total-cm">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">9.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow9">
                                                        <input class="SummaryDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow9">
                                                        <select id="spec_screen_rulling_value9" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow9">
                                                        <select id="spec_angle_value9" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow9">
                                                        <select id="spec_DC_value9" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow9">
                                                        <select id="spec_print_type_value9" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow9">
                                                        <select id="spec_raster_type_value9" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow9">
                                                        <input type="number" id="row-Q" class="SummaryDiv_Enabled_TextInput" style="width:20;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow9">
                                                        <select id="spec_plates_type_value9" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="XDimensionRow9">
                                                        <input id="row-X" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="YDimensionRow9">
                                                        <input id="row-Y" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row9">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="TotalSurfaceRow9">
                                                        <input class="SummaryDiv_Enabled_TextInput total-cm">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">10.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow10">
                                                        <input class="SummaryDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow10">
                                                        <select id="spec_screen_rulling_value10" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow10">
                                                        <select id="spec_angle_value10" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow10">
                                                        <select id="spec_DC_value10" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow10">
                                                        <select id="spec_print_type_value10" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow10">
                                                        <select id="spec_raster_type_value10" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow10">
                                                        <input type="number" id="row-Q" class="SummaryDiv_Enabled_TextInput" style="width:20;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow10">
                                                        <select id="spec_plates_type_value10" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="XDimensionRow10">
                                                        <input id="row-X" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="YDimensionRow10">
                                                        <input id="row-Y" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row10">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="TotalSurfaceRow10">
                                                        <input class="SummaryDiv_Enabled_TextInput total-cm">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">11.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow11">
                                                        <input class="SummaryDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow11">
                                                        <select id="spec_screen_rulling_value11" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow11">
                                                        <select id="spec_angle_value11" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow11">
                                                        <select id="spec_DC_value11" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow11">
                                                        <select id="spec_print_type_value11" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow11">
                                                        <select id="spec_raster_type_value11" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow11">
                                                        <input type="number" id="row-Q" class="SummaryDiv_Enabled_TextInput" style="width:20;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow11">
                                                        <select id="spec_plates_type_value11" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="XDimensionRow11">
                                                        <input id="row-X" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="YDimensionRow11">
                                                        <input id="row-Y" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row11">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="TotalSurfaceRow11">
                                                        <input class="SummaryDiv_Enabled_TextInput total-cm">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">12.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow12">
                                                        <input class="SummaryDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow12">
                                                        <select id="spec_screen_rulling_value12" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow12">
                                                        <select id="spec_angle_value12" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow12">
                                                        <select id="spec_DC_value12" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow12">
                                                        <select id="spec_print_type_value12" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow12">
                                                        <select id="spec_raster_type_value12" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow12">
                                                        <input type="number" id="row-Q" class="SummaryDiv_Enabled_TextInput" style="width:20;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow12">
                                                        <select id="spec_plates_type_value12" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="XDimensionRow12">
                                                        <input id="row-X" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="YDimensionRow12">
                                                        <input id="row-Y" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row12">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="TotalSurfaceRow12">
                                                        <input class="SummaryDiv_Enabled_TextInput total-cm">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">13.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow13">
                                                        <input class="SummaryDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow13">
                                                        <select id="spec_screen_rulling_value13" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow13">
                                                        <select id="spec_angle_value13" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow13">
                                                        <select id="spec_DC_value13" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow13">
                                                        <select id="spec_print_type_value13" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow13">
                                                        <select id="spec_raster_type_value13" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow13">
                                                        <input type="number" id="row-Q" class="SummaryDiv_Enabled_TextInput" style="width:20;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow13">
                                                        <select id="spec_plates_type_value13" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="XDimensionRow13">
                                                        <input id="row-X" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="YDimensionRow13">
                                                        <input id="row-Y" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row13">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="TotalSurfaceRow13">
                                                        <input class="SummaryDiv_Enabled_TextInput total-cm">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">14.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow14">
                                                        <input class="SummaryDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow14">
                                                        <select id="spec_screen_rulling_value14" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow14">
                                                        <select id="spec_angle_value14" class="SummaryDiv_Enabled_SelectInput" style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow14">
                                                        <select id="spec_DC_value14" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow14">
                                                        <select id="spec_print_type_value14" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow14">
                                                        <select id="spec_raster_type_value14" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow14">
                                                        <input type="number" id="row-Q" class="SummaryDiv_Enabled_TextInput" style="width:20;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow14">
                                                        <select id="spec_plates_type_value14" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="XDimensionRow14">
                                                        <input id="row-X" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="YDimensionRow14">
                                                        <input id="row-Y" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row14">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="TotalSurfaceRow14">
                                                        <input class="SummaryDiv_Enabled_TextInput total-cm">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#3F3F3F" nowrap="true" style="padding:2 5 2 5;">
                                            <span class="SummaryLabel">15.</span>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ColorRow15">
                                                        <input class="SummaryDiv_Enabled_TextInput" >
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="LpiRow15">
                                                        <select id="spec_screen_rulling_value15" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="AngleRow15">
                                                        <select id="spec_angle_value15" class="SummaryDiv_Enabled_SelectInput"  style="text-align:left;">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PatteringRow15">
                                                        <select id="spec_DC_value15" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PrintTypeRow15">
                                                        <select id="spec_print_type_value15" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="ScreeningRow15">
                                                        <select id="spec_raster_type_value15" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="CopiesRow15">
                                                        <input type="number" id="row-Q" class="SummaryDiv_Enabled_TextInput" style="width:20;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="PlateAndThicknessRow15">
                                                        <select id="spec_plates_type_value15" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="XDimensionRow15">
                                                        <input id="row-X" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="YDimensionRow15">
                                                        <input id="row-Y" class="SummaryDiv_Enabled_TextInput" style="width:40px">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                        <th nowrap="true" style="padding:2 5 2 5;">
                                            <div class="row15">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="TotalSurfaceRow15">
                                                        <input class="SummaryDiv_Enabled_TextInput total-cm">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th colspan="11" border="0px" bgcolor="#3F3F3F" align="right">
                                            <span class="SummaryLabel">Łączna powierzchnia matryc: </span>
                                        </th>
                                        <th  nowrap="true" class="SummaryLabel">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="TotalSurfaceAllPlates">
                                                    <input id='total-cm-all' class="SummaryDiv_Enabled_TextInput">
                                                        <xsl:attribute name="value">
                                                            <xsl:value-of select="." />
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </th>
                                    </tr>
                                </table>
                                <br/>
                                <table style="padding-left:10;">
                                    <th align="Left" nowrap="true" style="padding:2; border:1px; bordercolor:black;">
                                        <span class="StandardLabel" style="font-size:15;">
                                        Zaznacza grafik-montażysta:
                                    </span>
                                        <br/>
                                        <span class="StandardLabel" style="color: red;">
                                        Potwierdzam poprawność WSZYSTKICH DANYCH I MONTAŻU, proszę produkować matryce:
                                    </span>
                                    </th>
                                    <td valign="bottom">
                                        <span>
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobMontageConfirmation">
                                                    <select id="yes_or_no_value19" class="SummaryACTIVATORDiv_Enabled_SelectInput">
                                                        <xsl:apply-templates/>
                                                    </select>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <br/>
                                <hr/>
                                <br/>
                                <table border="1px" bordercolor="dimgray" rules="cols" width="95%" style="border-right:solid dimgray 2px; align:left; margin-bottom:10; margin-left:10; padding-left:30;" align="center" class="hoverTable">
                                    <tr>
                                        <th class="SummaryLabel" align="center" colspan="8" nowrap="true" style="padding:2; background:#000; ">
                                            <span  style="font-size: 20px;">
                                                PODSUMOWANIE ZAMÓWIENIA I KONTROLA JAKOŚCI:
                                            </span>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f;">
                                            <span class="SummaryLabel">Data produkcji:</span>
                                        </th>
                                        <td  align="center" colspan="2" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" width="70">
                                            <span align="center">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobOrderFinalDate">
                                                        <input id="ProductionDate_ID" type="date" class="SummaryDiv_Enabled_DateInput">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f;">
                                            <span class="SummaryLabel">Kleistość płyty:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ; border-right:solid dimgray 2px;" >
                                            <span class="SummaryLabel">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPlateViscosity">
                                                        <select id="viscosity_of_plate_value" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f;">
                                            <span class="SummaryLabel">Operator wykonujący:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ; border-right:solid dimgray 2px;" >
                                            <span class="SummaryLabel">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProductionOperator">
                                                        <select id="production_operator_value" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f;">
                                            <span class="SummaryLabel">Test punktu:</span>
                                        </th>
                                        <td  align="center" colspan="2" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span class="SummaryLabel">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPointTest">
                                                        <select id="point_test_value" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f;" width="100">
                                            <span class="SummaryLabel">Zgodność z maską:</span>
                                        </th>
                                        <td align="center" nowrap="true" style="padding:2 2 2 2 ; border-right:solid dimgray 2px;" >
                                            <span class="SummaryLabel">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobMaskCompability">
                                                        <select id="mask_compatibility_value" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f;" width="100">
                                            <span class="SummaryLabel">Operator sprawdzający:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;" width="150">
                                            <span class="SummaryLabel">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobQualityProductionOperator">
                                                        <select id="production_operator_value1" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f;">
                                            <span class="SummaryLabel">Relief:</span>
                                        </th>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span class="SummaryLabel">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobReliefHighnessValue">
                                                        <select id="spec_relief_value" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <td  align="center"  nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span class="SummaryLabel">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobReliefHighnessCheck">
                                                        <select id="spec_relief_accept_value" class="SummaryDiv_Enabled_SelectInput">
                                                            <option value="OK">
                                                                <xsl:if test=".='OK'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                OK
                                                            </option>
                                                            <option value="Za niski">
                                                                <xsl:if test=".='Za niski'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                Za niski
                                                            </option>
                                                            <option value="Za wysoki">
                                                                <xsl:if test=".='Za wysoki'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                Za wysoki
                                                            </option>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f;">
                                            <span class="SummaryLabel">Rozwarstwienie:</span>
                                        </th>
                                        <td  align="center" nowrap="true" width="150" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span class="SummaryLabel">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPlateDissection">
                                                        <select id="dissection_value" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f;">
                                            <span class="SummaryLabel">Elementy niepożądane:</span>
                                        </th>
                                        <td  align="center" colspan="2" nowrap="true" style="padding:2 2 2 2 ;border-right:solid dimgray 2px;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUndesirableElements">
                                                        <select id="undesired_elements_value" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f;">
                                            <span class="SummaryLabel">Kurier:</span>
                                        </th>
                                        <td  align="center" colspan="2"  nowrap="true" style="padding:2 2 2 2 ; border-right:solid dimgray 2px;">
                                            <span id="SummaryDiv_Enabled_SelectInput">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCourier">
                                                        <select id="spec_courier1" class="SummaryDiv_Enabled_SelectInput">
                                                            <xsl:apply-templates/>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; background:#3f3f3f;">
                                            <span class="SummaryLabel">List przewozowy:</span>
                                        </th>
                                        <td align="left" nowrap="true"  colspan="6" style="padding:2 2 2 2; padding-left:15; border-right:solid dimgray 2px;" >
                                            <span id="SummaryData_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCourierTrackingNumber">
                                                        <input class="SummaryDiv_Enabled_TextInput" style="text-align:left;width:400;">
                                                            <xsl:attribute name="value">
                                                                <xsl:value-of select="." />
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <table style="padding-left:10;">
                                    <th align="Left" nowrap="true" style="padding:2; border:1px; bordercolor:black;">
                                        <span class="StandardLabel" style="font-size:15;">
                                        Zaznacza pracownik produkcji:
                                    </span>
                                        <br/>
                                        <span class="StandardLabel" style="color: red;">
                                        Potwierdzam poprawność wykonania matryc i kompletność przesyłki:
                                    </span>
                                    </th>
                                    <td valign="bottom">
                                        <span>
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobFinalConfirmation">
                                                    <select id="yes_or_no_value20" class="SummaryACTIVATORDiv_Enabled_SelectInput">
                                                        <xsl:apply-templates/>
                                                    </select>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                            </div>
                            <!-- SUMMARY SECTION END -->
                        </td>
                    </tr>
                </tbody>
            </table>
        </body>
    </xsl:template>
</xsl:stylesheet>