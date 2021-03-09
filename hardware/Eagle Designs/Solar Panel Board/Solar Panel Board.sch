<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26928/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" urn="urn:adsk.eagle:component:26957/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="KXOB25-05X3F">
<packages>
<package name="KXOB25-05X3F">
<smd name="+" x="-10.5" y="0" dx="3" dy="8.4" layer="1"/>
<smd name="-" x="10.5" y="0" dx="3" dy="8.4" layer="1"/>
<text x="-8.45" y="-0.6" size="1.27" layer="21">+</text>
<text x="7.89" y="-0.48" size="1.27" layer="21">-</text>
<wire x1="-12.1" y1="4.3" x2="12.1" y2="4.3" width="0.127" layer="51"/>
<wire x1="12.1" y1="4.3" x2="12.1" y2="-4.3" width="0.127" layer="51"/>
<wire x1="12.1" y1="-4.3" x2="-12.1" y2="-4.3" width="0.127" layer="51"/>
<wire x1="-12.1" y1="-4.3" x2="-12.1" y2="4.3" width="0.127" layer="51"/>
<wire x1="-12.1" y1="4.3" x2="12.1" y2="4.3" width="0.127" layer="21"/>
<wire x1="12.1" y1="4.3" x2="12.1" y2="-4.3" width="0.127" layer="21"/>
<wire x1="12.1" y1="-4.3" x2="-12.1" y2="-4.3" width="0.127" layer="21"/>
<wire x1="-12.1" y1="-4.3" x2="-12.1" y2="4.3" width="0.127" layer="21"/>
<text x="-3.683" y="2.413" size="1.778" layer="25">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="KXOB25-05X3F">
<pin name="+" x="-2.54" y="2.54" length="short"/>
<pin name="-" x="12.7" y="2.54" length="short" rot="R180"/>
<wire x1="0" y1="5.08" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="5.08" x2="10.16" y2="0" width="0.254" layer="94"/>
<wire x1="10.16" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="94"/>
<text x="0.5" y="5.2" size="1.778" layer="95">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="KXOB25-05X3F" prefix="SC">
<description>KXOB25-05X3F - 
Monocrystalline Solar Cell 30.7mW, 2.07V</description>
<gates>
<gate name="G$1" symbol="KXOB25-05X3F" x="20.32" y="-10.16"/>
</gates>
<devices>
<device name="" package="KXOB25-05X3F">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Molex - 503763-0291">
<description>Upverter Parts Library

Created by Upverter.com</description>
<packages>
<package name="MOLEX_503763-0291_0">
<description>2 Positions Header Connector 0.039" (1.00mm) Surface Mount, Right Angle Gold</description>
<wire x1="-2.9" y1="-2.425" x2="-2.9" y2="2.425" width="0.15" layer="51"/>
<wire x1="-2.9" y1="2.425" x2="2.9" y2="2.425" width="0.15" layer="51"/>
<wire x1="2.9" y1="2.425" x2="2.9" y2="-2.425" width="0.15" layer="51"/>
<wire x1="2.9" y1="-2.425" x2="-2.9" y2="-2.425" width="0.15" layer="51"/>
<wire x1="-2.9" y1="-0.5" x2="-2.9" y2="-2.425" width="0.15" layer="21"/>
<wire x1="2.9" y1="-0.5" x2="2.9" y2="-2.425" width="0.15" layer="21"/>
<wire x1="2.9" y1="-2.425" x2="1.2" y2="-2.425" width="0.15" layer="21"/>
<wire x1="-2.9" y1="-2.425" x2="-1.2" y2="-2.425" width="0.15" layer="21"/>
<wire x1="-3.605" y1="-3.035" x2="-3.605" y2="2.725" width="0.1" layer="39"/>
<wire x1="-3.605" y1="2.725" x2="3.605" y2="2.725" width="0.1" layer="39"/>
<wire x1="3.605" y1="2.725" x2="3.605" y2="-3.035" width="0.1" layer="39"/>
<wire x1="3.605" y1="-3.035" x2="-3.605" y2="-3.035" width="0.1" layer="39"/>
<wire x1="-2.9" y1="2.425" x2="2.9" y2="2.425" width="0.15" layer="21"/>
<text x="-3.655" y="3" size="1" layer="25">&gt;NAME</text>
<circle x="0.492" y="-3.442" radius="0.25" width="0" layer="21"/>
<rectangle x1="-2.605" y1="1.205" x2="-1.735" y2="2.375" layer="41"/>
<rectangle x1="1.735" y1="1.205" x2="2.605" y2="2.375" layer="41"/>
<rectangle x1="1.735" y1="1.125" x2="2.245" y2="1.205" layer="41"/>
<rectangle x1="-2.245" y1="1.125" x2="-1.735" y2="1.205" layer="41"/>
<smd name="3" x="-2.875" y="0.555" dx="1.26" dy="1.3" layer="1"/>
<smd name="4" x="2.875" y="0.555" dx="1.26" dy="1.3" layer="1"/>
<smd name="1" x="0.5" y="-2.435" dx="0.55" dy="1" layer="1"/>
<smd name="2" x="-0.5" y="-2.435" dx="0.55" dy="1" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="MOLEX_503763-0291_0_0">
<description>2 Positions Header Connector 0.039" (1.00mm) Surface Mount, Right Angle Gold</description>
<wire x1="2.54" y1="-30.48" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="15.24" y2="-5.08" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="15.24" y2="-30.48" width="0.254" layer="94"/>
<wire x1="15.24" y1="-30.48" x2="2.54" y2="-30.48" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.668" x2="7.62" y2="-9.652" width="1.016" layer="94"/>
<wire x1="7.62" y1="-9.652" x2="11.938" y2="-9.652" width="1.016" layer="94"/>
<wire x1="11.938" y1="-9.652" x2="11.938" y2="-10.668" width="1.016" layer="94"/>
<wire x1="11.938" y1="-10.668" x2="7.62" y2="-10.668" width="1.016" layer="94"/>
<wire x1="9.652" y1="-10.16" x2="15.24" y2="-10.16" width="0.508" layer="94"/>
<wire x1="7.62" y1="-15.748" x2="7.62" y2="-14.732" width="1.016" layer="94"/>
<wire x1="7.62" y1="-14.732" x2="11.938" y2="-14.732" width="1.016" layer="94"/>
<wire x1="11.938" y1="-14.732" x2="11.938" y2="-15.748" width="1.016" layer="94"/>
<wire x1="11.938" y1="-15.748" x2="7.62" y2="-15.748" width="1.016" layer="94"/>
<wire x1="9.652" y1="-15.24" x2="15.24" y2="-15.24" width="0.508" layer="94"/>
<wire x1="7.62" y1="-20.828" x2="7.62" y2="-19.812" width="1.016" layer="94"/>
<wire x1="7.62" y1="-19.812" x2="11.938" y2="-19.812" width="1.016" layer="94"/>
<wire x1="11.938" y1="-19.812" x2="11.938" y2="-20.828" width="1.016" layer="94"/>
<wire x1="11.938" y1="-20.828" x2="7.62" y2="-20.828" width="1.016" layer="94"/>
<wire x1="9.652" y1="-20.32" x2="15.24" y2="-20.32" width="0.508" layer="94"/>
<wire x1="7.62" y1="-25.908" x2="7.62" y2="-24.892" width="1.016" layer="94"/>
<wire x1="7.62" y1="-24.892" x2="11.938" y2="-24.892" width="1.016" layer="94"/>
<wire x1="11.938" y1="-24.892" x2="11.938" y2="-25.908" width="1.016" layer="94"/>
<wire x1="11.938" y1="-25.908" x2="7.62" y2="-25.908" width="1.016" layer="94"/>
<wire x1="9.652" y1="-25.4" x2="15.24" y2="-25.4" width="0.508" layer="94"/>
<wire x1="15.24" y1="-10.16" x2="15.24" y2="-10.16" width="0.15" layer="94"/>
<wire x1="15.24" y1="-15.24" x2="15.24" y2="-15.24" width="0.15" layer="94"/>
<wire x1="15.24" y1="-20.32" x2="15.24" y2="-20.32" width="0.15" layer="94"/>
<wire x1="15.24" y1="-25.4" x2="15.24" y2="-25.4" width="0.15" layer="94"/>
<text x="2.54" y="-2.54" size="2.54" layer="95" align="top-left">&gt;NAME</text>
<text x="2.286" y="-30.988" size="2.54" layer="95" align="top-left">503763-0291</text>
<pin name="1" x="20.32" y="-10.16" visible="pad" length="middle" rot="R180"/>
<pin name="2" x="20.32" y="-15.24" visible="pad" length="middle" rot="R180"/>
<pin name="MNT_1" x="20.32" y="-20.32" visible="pad" length="middle" rot="R180"/>
<pin name="MNT_2" x="20.32" y="-25.4" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOLEX_503763-0291" prefix="J">
<description>2 Positions Header Connector 0.039" (1.00mm) Surface Mount, Right Angle Gold</description>
<gates>
<gate name="G$0" symbol="MOLEX_503763-0291_0_0" x="0" y="0"/>
</gates>
<devices>
<device name="MOLEX_503763-0291_0_0" package="MOLEX_503763-0291_0">
<connects>
<connect gate="G$0" pin="1" pad="1"/>
<connect gate="G$0" pin="2" pad="2"/>
<connect gate="G$0" pin="MNT_1" pad="3"/>
<connect gate="G$0" pin="MNT_2" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="CENTROID_NOT_SPECIFIED" value="No"/>
<attribute name="DATASHEET" value="http://www.molex.com/pdm_docs/sd/5037630291_sd.pdf"/>
<attribute name="DIGIKEY_DESCRIPTION" value="CONN HEADER 1MM R/A 2CKT"/>
<attribute name="DIGIKEY_PART_NUMBER" value="WM10654CT-ND"/>
<attribute name="LEAD_FREE" value="yes"/>
<attribute name="MF" value="Molex"/>
<attribute name="MOUSER_PART_NUMBER" value="538-503763-0291"/>
<attribute name="MPN" value="503763-0291"/>
<attribute name="PACKAGE" value="HDR02"/>
<attribute name="PREFIX" value="J"/>
<attribute name="ROHS" value="yes"/>
<attribute name="TEMPERATURE_RANGE_HIGH" value="+105°C"/>
<attribute name="TEMPERATURE_RANGE_LOW" value="-40°C"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Molex - 503763-0491">
<description>Upverter Parts Library

Created by Upverter.com</description>
<packages>
<package name="MOLEX_503763-0491_0">
<description>Wire-To-Board Connector, Pico-Lock 503763 Series, Surface Mount, Header, 4 Contacts, 1 mm</description>
<wire x1="-4" y1="-2.525" x2="-4" y2="2.525" width="0.15" layer="51"/>
<wire x1="-4" y1="2.525" x2="4" y2="2.525" width="0.15" layer="51"/>
<wire x1="4" y1="2.525" x2="4" y2="-2.525" width="0.15" layer="51"/>
<wire x1="4" y1="-2.525" x2="-4" y2="-2.525" width="0.15" layer="51"/>
<wire x1="-4" y1="2.525" x2="4" y2="2.525" width="0.15" layer="21"/>
<wire x1="4" y1="-2.525" x2="4" y2="-0.47" width="0.15" layer="21"/>
<wire x1="4" y1="1.58" x2="4" y2="2.525" width="0.15" layer="21"/>
<wire x1="-4" y1="-2.525" x2="-2.15" y2="-2.525" width="0.15" layer="21"/>
<wire x1="2.15" y1="-2.525" x2="4" y2="-2.525" width="0.15" layer="21"/>
<wire x1="-4" y1="-2.525" x2="-4" y2="-0.47" width="0.15" layer="21"/>
<wire x1="-4" y1="1.58" x2="-4" y2="2.525" width="0.15" layer="21"/>
<wire x1="-4.605" y1="-3.035" x2="-4.605" y2="2.625" width="0.1" layer="39"/>
<wire x1="-4.605" y1="2.625" x2="4.605" y2="2.625" width="0.1" layer="39"/>
<wire x1="4.605" y1="2.625" x2="4.605" y2="-3.035" width="0.1" layer="39"/>
<wire x1="4.605" y1="-3.035" x2="-4.605" y2="-3.035" width="0.1" layer="39"/>
<text x="-4" y="2.825" size="1" layer="25">&gt;NAME</text>
<circle x="1.525" y="-3.51" radius="0.25" width="0" layer="21"/>
<rectangle x1="2.735" y1="1.125" x2="3.605" y2="2.375" layer="41"/>
<rectangle x1="-3.605" y1="1.125" x2="-2.735" y2="2.375" layer="41"/>
<smd name="1" x="1.5" y="-2.435" dx="0.55" dy="1" layer="1"/>
<smd name="2" x="0.5" y="-2.435" dx="0.55" dy="1" layer="1"/>
<smd name="3" x="-0.5" y="-2.435" dx="0.55" dy="1" layer="1"/>
<smd name="4" x="-1.5" y="-2.435" dx="0.55" dy="1" layer="1"/>
<smd name="5" x="-3.875" y="0.555" dx="1.26" dy="1.3" layer="1"/>
<smd name="6" x="3.875" y="0.555" dx="1.26" dy="1.3" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="MOLEX_503763-0491_0_0">
<description>Wire-To-Board Connector, Pico-Lock 503763 Series, Surface Mount, Header, 4 Contacts, 1 mm</description>
<wire x1="2.54" y1="-40.64" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="15.24" y2="-5.08" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="15.24" y2="-40.64" width="0.254" layer="94"/>
<wire x1="15.24" y1="-40.64" x2="2.54" y2="-40.64" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.668" x2="7.62" y2="-9.652" width="1.016" layer="94"/>
<wire x1="7.62" y1="-9.652" x2="11.938" y2="-9.652" width="1.016" layer="94"/>
<wire x1="11.938" y1="-9.652" x2="11.938" y2="-10.668" width="1.016" layer="94"/>
<wire x1="11.938" y1="-10.668" x2="7.62" y2="-10.668" width="1.016" layer="94"/>
<wire x1="9.652" y1="-10.16" x2="15.24" y2="-10.16" width="0.508" layer="94"/>
<wire x1="7.62" y1="-15.748" x2="7.62" y2="-14.732" width="1.016" layer="94"/>
<wire x1="7.62" y1="-14.732" x2="11.938" y2="-14.732" width="1.016" layer="94"/>
<wire x1="11.938" y1="-14.732" x2="11.938" y2="-15.748" width="1.016" layer="94"/>
<wire x1="11.938" y1="-15.748" x2="7.62" y2="-15.748" width="1.016" layer="94"/>
<wire x1="9.652" y1="-15.24" x2="15.24" y2="-15.24" width="0.508" layer="94"/>
<wire x1="7.62" y1="-20.828" x2="7.62" y2="-19.812" width="1.016" layer="94"/>
<wire x1="7.62" y1="-19.812" x2="11.938" y2="-19.812" width="1.016" layer="94"/>
<wire x1="11.938" y1="-19.812" x2="11.938" y2="-20.828" width="1.016" layer="94"/>
<wire x1="11.938" y1="-20.828" x2="7.62" y2="-20.828" width="1.016" layer="94"/>
<wire x1="9.652" y1="-20.32" x2="15.24" y2="-20.32" width="0.508" layer="94"/>
<wire x1="7.62" y1="-25.908" x2="7.62" y2="-24.892" width="1.016" layer="94"/>
<wire x1="7.62" y1="-24.892" x2="11.938" y2="-24.892" width="1.016" layer="94"/>
<wire x1="11.938" y1="-24.892" x2="11.938" y2="-25.908" width="1.016" layer="94"/>
<wire x1="11.938" y1="-25.908" x2="7.62" y2="-25.908" width="1.016" layer="94"/>
<wire x1="9.652" y1="-25.4" x2="15.24" y2="-25.4" width="0.508" layer="94"/>
<wire x1="7.62" y1="-30.988" x2="7.62" y2="-29.972" width="1.016" layer="94"/>
<wire x1="7.62" y1="-29.972" x2="11.938" y2="-29.972" width="1.016" layer="94"/>
<wire x1="11.938" y1="-29.972" x2="11.938" y2="-30.988" width="1.016" layer="94"/>
<wire x1="11.938" y1="-30.988" x2="7.62" y2="-30.988" width="1.016" layer="94"/>
<wire x1="9.652" y1="-30.48" x2="15.24" y2="-30.48" width="0.508" layer="94"/>
<wire x1="7.62" y1="-36.068" x2="7.62" y2="-35.052" width="1.016" layer="94"/>
<wire x1="7.62" y1="-35.052" x2="11.938" y2="-35.052" width="1.016" layer="94"/>
<wire x1="11.938" y1="-35.052" x2="11.938" y2="-36.068" width="1.016" layer="94"/>
<wire x1="11.938" y1="-36.068" x2="7.62" y2="-36.068" width="1.016" layer="94"/>
<wire x1="9.652" y1="-35.56" x2="15.24" y2="-35.56" width="0.508" layer="94"/>
<wire x1="15.24" y1="-10.16" x2="15.24" y2="-10.16" width="0.15" layer="94"/>
<wire x1="15.24" y1="-15.24" x2="15.24" y2="-15.24" width="0.15" layer="94"/>
<wire x1="15.24" y1="-20.32" x2="15.24" y2="-20.32" width="0.15" layer="94"/>
<wire x1="15.24" y1="-25.4" x2="15.24" y2="-25.4" width="0.15" layer="94"/>
<wire x1="15.24" y1="-30.48" x2="15.24" y2="-30.48" width="0.15" layer="94"/>
<wire x1="15.24" y1="-35.56" x2="15.24" y2="-35.56" width="0.15" layer="94"/>
<text x="2.54" y="-2.54" size="2.54" layer="95" align="top-left">&gt;NAME</text>
<text x="2.54" y="-43.18" size="2.54" layer="95" align="top-left">503763-0491</text>
<pin name="1" x="20.32" y="-10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="2" x="20.32" y="-15.24" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="3" x="20.32" y="-20.32" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="4" x="20.32" y="-25.4" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="MNT_1" x="20.32" y="-30.48" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="MNT_2" x="20.32" y="-35.56" visible="pad" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOLEX_503763-0491" prefix="J">
<description>Wire-To-Board Connector, Pico-Lock 503763 Series, Surface Mount, Header, 4 Contacts, 1 mm</description>
<gates>
<gate name="G$0" symbol="MOLEX_503763-0491_0_0" x="0" y="0"/>
</gates>
<devices>
<device name="MOLEX_503763-0491_0_0" package="MOLEX_503763-0491_0">
<connects>
<connect gate="G$0" pin="1" pad="1"/>
<connect gate="G$0" pin="2" pad="2"/>
<connect gate="G$0" pin="3" pad="3"/>
<connect gate="G$0" pin="4" pad="4"/>
<connect gate="G$0" pin="MNT_1" pad="5"/>
<connect gate="G$0" pin="MNT_2" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="AUTOMOTIVE" value="No"/>
<attribute name="CENTROID_NOT_SPECIFIED" value="No"/>
<attribute name="CONN_GENDER" value="Male"/>
<attribute name="CONN_ORIENTATION" value="Right Angle"/>
<attribute name="CONTACT_MATERIAL" value="Gold,Nickel"/>
<attribute name="CURRENT_RATING" value="1.5A"/>
<attribute name="DATASHEET" value="https://www.molex.com/webdocs/datasheets/pdf/en-us/5037630491_PCB_HEADERS.pdf"/>
<attribute name="DEVICE_CLASS_L1" value="Connectors"/>
<attribute name="DEVICE_CLASS_L2" value="Headers and Wire Housings"/>
<attribute name="DEVICE_CLASS_L3" value="unset"/>
<attribute name="DIGIKEY_DESCRIPTION" value="CONN HEADER 1MM R/A 4CKT"/>
<attribute name="DIGIKEY_PART_NUMBER" value="WM10655CT-ND"/>
<attribute name="FOOTPRINT_URL" value="https://www.molex.com/pdm_docs/sd/5037630491_sd.pdf"/>
<attribute name="FOOTPRINT_VARIANT_NAME_0" value="Recommended_Land_Pattern"/>
<attribute name="HEIGHT" value="1.7mm"/>
<attribute name="LEAD_FREE" value="Yes"/>
<attribute name="MF" value="Molex"/>
<attribute name="MFG_PACKAGE_IDENT" value="503763-0491"/>
<attribute name="MFG_PACKAGE_IDENT_DATE" value="0"/>
<attribute name="MFG_PACKAGE_IDENT_REV" value="0"/>
<attribute name="MOUSER_PART_NUMBER" value="538-503763-0491"/>
<attribute name="MPN" value="503763-0491"/>
<attribute name="NUMBER_OF_CONTACTS" value="4"/>
<attribute name="NUMBER_OF_ROWS" value="1"/>
<attribute name="PACKAGE" value="HDR4"/>
<attribute name="PITCH" value="1mm"/>
<attribute name="PREFIX" value="J"/>
<attribute name="ROHS" value="Yes"/>
<attribute name="TEMPERATURE_RANGE_HIGH" value="+105°C"/>
<attribute name="TEMPERATURE_RANGE_LOW" value="-40°C"/>
<attribute name="VERIFICATION_VERSION" value="0.0.0.1"/>
<attribute name="VOLTAGE_RATING" value="150V"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="SC1" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC2" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC3" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC4" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC5" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC6" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC7" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC8" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC9" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC10" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC11" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC12" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC13" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC14" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC15" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC16" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC17" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC18" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC19" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC20" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC21" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC22" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC23" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC24" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC25" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC26" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC27" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC28" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC29" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC30" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC31" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="SC32" library="KXOB25-05X3F" deviceset="KXOB25-05X3F" device=""/>
<part name="J1" library="Molex - 503763-0291" deviceset="MOLEX_503763-0291" device="MOLEX_503763-0291_0_0"/>
<part name="J2" library="Molex - 503763-0491" deviceset="MOLEX_503763-0491" device="MOLEX_503763-0491_0_0"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="GND1" gate="1" x="426.72" y="26.67" smashed="yes">
<attribute name="VALUE" x="424.18" y="24.13" size="1.778" layer="96"/>
</instance>
<instance part="P+1" gate="VCC" x="426.72" y="36.83" smashed="yes">
<attribute name="VALUE" x="424.18" y="34.29" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SC1" gate="G$1" x="454.66" y="40.64" smashed="yes" rot="R270">
<attribute name="NAME" x="459.86" y="40.14" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC2" gate="G$1" x="454.66" y="25.4" smashed="yes" rot="R270">
<attribute name="NAME" x="459.86" y="24.9" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC3" gate="G$1" x="454.66" y="10.16" smashed="yes" rot="R270">
<attribute name="NAME" x="459.86" y="9.66" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC4" gate="G$1" x="454.66" y="-5.08" smashed="yes" rot="R270">
<attribute name="NAME" x="459.86" y="-5.58" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC5" gate="G$1" x="454.66" y="-20.32" smashed="yes" rot="R270">
<attribute name="NAME" x="459.86" y="-20.82" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC6" gate="G$1" x="454.66" y="-35.56" smashed="yes" rot="R270">
<attribute name="NAME" x="459.86" y="-36.06" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC7" gate="G$1" x="454.66" y="-50.8" smashed="yes" rot="R270">
<attribute name="NAME" x="459.86" y="-51.3" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC8" gate="G$1" x="454.66" y="-66.04" smashed="yes" rot="R270">
<attribute name="NAME" x="459.86" y="-66.54" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC9" gate="G$1" x="469.9" y="40.64" smashed="yes" rot="R270">
<attribute name="NAME" x="475.1" y="40.14" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC10" gate="G$1" x="469.9" y="25.4" smashed="yes" rot="R270">
<attribute name="NAME" x="475.1" y="24.9" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC11" gate="G$1" x="469.9" y="10.16" smashed="yes" rot="R270">
<attribute name="NAME" x="475.1" y="9.66" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC12" gate="G$1" x="469.9" y="-5.08" smashed="yes" rot="R270">
<attribute name="NAME" x="475.1" y="-5.58" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC13" gate="G$1" x="469.9" y="-20.32" smashed="yes" rot="R270">
<attribute name="NAME" x="475.1" y="-20.82" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC14" gate="G$1" x="469.9" y="-35.56" smashed="yes" rot="R270">
<attribute name="NAME" x="475.1" y="-36.06" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC15" gate="G$1" x="469.9" y="-50.8" smashed="yes" rot="R270">
<attribute name="NAME" x="475.1" y="-51.3" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC16" gate="G$1" x="469.9" y="-66.04" smashed="yes" rot="R270">
<attribute name="NAME" x="475.1" y="-66.54" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC17" gate="G$1" x="485.14" y="40.64" smashed="yes" rot="R270">
<attribute name="NAME" x="490.34" y="40.14" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC18" gate="G$1" x="485.14" y="25.4" smashed="yes" rot="R270">
<attribute name="NAME" x="490.34" y="24.9" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC19" gate="G$1" x="485.14" y="10.16" smashed="yes" rot="R270">
<attribute name="NAME" x="490.34" y="9.66" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC20" gate="G$1" x="485.14" y="-5.08" smashed="yes" rot="R270">
<attribute name="NAME" x="490.34" y="-5.58" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC21" gate="G$1" x="485.14" y="-20.32" smashed="yes" rot="R270">
<attribute name="NAME" x="490.34" y="-20.82" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC22" gate="G$1" x="485.14" y="-35.56" smashed="yes" rot="R270">
<attribute name="NAME" x="490.34" y="-36.06" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC23" gate="G$1" x="485.14" y="-50.8" smashed="yes" rot="R270">
<attribute name="NAME" x="490.34" y="-51.3" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC24" gate="G$1" x="485.14" y="-66.04" smashed="yes" rot="R270">
<attribute name="NAME" x="490.34" y="-66.54" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC25" gate="G$1" x="500.38" y="40.64" smashed="yes" rot="R270">
<attribute name="NAME" x="505.58" y="40.14" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC26" gate="G$1" x="500.38" y="25.4" smashed="yes" rot="R270">
<attribute name="NAME" x="505.58" y="24.9" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC27" gate="G$1" x="500.38" y="10.16" smashed="yes" rot="R270">
<attribute name="NAME" x="505.58" y="9.66" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC28" gate="G$1" x="500.38" y="-5.08" smashed="yes" rot="R270">
<attribute name="NAME" x="505.58" y="-5.58" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC29" gate="G$1" x="500.38" y="-20.32" smashed="yes" rot="R270">
<attribute name="NAME" x="505.58" y="-20.82" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC30" gate="G$1" x="500.38" y="-35.56" smashed="yes" rot="R270">
<attribute name="NAME" x="505.58" y="-36.06" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC31" gate="G$1" x="500.38" y="-50.8" smashed="yes" rot="R270">
<attribute name="NAME" x="505.58" y="-51.3" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SC32" gate="G$1" x="500.38" y="-66.04" smashed="yes" rot="R270">
<attribute name="NAME" x="505.58" y="-66.54" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="J1" gate="G$0" x="396.24" y="22.86" smashed="yes">
<attribute name="NAME" x="398.78" y="20.32" size="2.54" layer="95" align="top-left"/>
</instance>
<instance part="J2" gate="G$0" x="396.24" y="-22.86" smashed="yes">
<attribute name="NAME" x="398.78" y="-25.4" size="2.54" layer="95" align="top-left"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="VCC" class="0">
<segment>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="426.72" y1="34.29" x2="426.72" y2="29.21" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SC1" gate="G$1" pin="+"/>
<wire x1="457.2" y1="43.18" x2="457.2" y2="45.72" width="0.1524" layer="91"/>
<label x="457.2" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SC9" gate="G$1" pin="+"/>
<wire x1="472.44" y1="43.18" x2="472.44" y2="45.72" width="0.1524" layer="91"/>
<label x="472.44" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SC17" gate="G$1" pin="+"/>
<wire x1="487.68" y1="43.18" x2="487.68" y2="45.72" width="0.1524" layer="91"/>
<label x="487.68" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SC25" gate="G$1" pin="+"/>
<wire x1="502.92" y1="43.18" x2="502.92" y2="45.72" width="0.1524" layer="91"/>
<label x="502.92" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="416.56" y1="-33.02" x2="419.1" y2="-33.02" width="0.1524" layer="91"/>
<label x="419.1" y="-33.02" size="1.778" layer="95"/>
<pinref part="J2" gate="G$0" pin="1"/>
</segment>
<segment>
<wire x1="416.56" y1="-38.1" x2="419.1" y2="-38.1" width="0.1524" layer="91"/>
<label x="419.1" y="-38.1" size="1.778" layer="95"/>
<pinref part="J2" gate="G$0" pin="2"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="SC2" gate="G$1" pin="+"/>
<pinref part="SC1" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="SC3" gate="G$1" pin="+"/>
<pinref part="SC2" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="SC4" gate="G$1" pin="+"/>
<pinref part="SC3" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="SC5" gate="G$1" pin="+"/>
<pinref part="SC4" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="SC6" gate="G$1" pin="+"/>
<pinref part="SC5" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="SC7" gate="G$1" pin="+"/>
<pinref part="SC6" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="SC8" gate="G$1" pin="+"/>
<pinref part="SC7" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="SC10" gate="G$1" pin="+"/>
<pinref part="SC9" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="SC11" gate="G$1" pin="+"/>
<pinref part="SC10" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="SC12" gate="G$1" pin="+"/>
<pinref part="SC11" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="SC13" gate="G$1" pin="+"/>
<pinref part="SC12" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="SC14" gate="G$1" pin="+"/>
<pinref part="SC13" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="SC15" gate="G$1" pin="+"/>
<pinref part="SC14" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="SC16" gate="G$1" pin="+"/>
<pinref part="SC15" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="SC18" gate="G$1" pin="+"/>
<pinref part="SC17" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="SC19" gate="G$1" pin="+"/>
<pinref part="SC18" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="SC20" gate="G$1" pin="+"/>
<pinref part="SC19" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="SC21" gate="G$1" pin="+"/>
<pinref part="SC20" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="SC22" gate="G$1" pin="+"/>
<pinref part="SC21" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="SC23" gate="G$1" pin="+"/>
<pinref part="SC22" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="SC24" gate="G$1" pin="+"/>
<pinref part="SC23" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="SC26" gate="G$1" pin="+"/>
<pinref part="SC25" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="SC27" gate="G$1" pin="+"/>
<pinref part="SC26" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="SC28" gate="G$1" pin="+"/>
<pinref part="SC27" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="SC29" gate="G$1" pin="+"/>
<pinref part="SC28" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="SC30" gate="G$1" pin="+"/>
<pinref part="SC29" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="SC31" gate="G$1" pin="+"/>
<pinref part="SC30" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="SC32" gate="G$1" pin="+"/>
<pinref part="SC31" gate="G$1" pin="-"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="SC8" gate="G$1" pin="-"/>
<wire x1="457.2" y1="-78.74" x2="457.2" y2="-81.28" width="0.1524" layer="91"/>
<label x="457.2" y="-81.28" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="SC16" gate="G$1" pin="-"/>
<wire x1="472.44" y1="-78.74" x2="472.44" y2="-81.28" width="0.1524" layer="91"/>
<label x="472.44" y="-81.28" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="SC24" gate="G$1" pin="-"/>
<wire x1="487.68" y1="-78.74" x2="487.68" y2="-81.28" width="0.1524" layer="91"/>
<label x="487.68" y="-81.28" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="SC32" gate="G$1" pin="-"/>
<wire x1="502.92" y1="-78.74" x2="502.92" y2="-81.28" width="0.1524" layer="91"/>
<label x="502.92" y="-81.28" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="416.56" y1="2.54" x2="419.1" y2="2.54" width="0.1524" layer="91"/>
<label x="419.1" y="2.54" size="1.778" layer="95"/>
<pinref part="J1" gate="G$0" pin="MNT_1"/>
</segment>
<segment>
<wire x1="416.56" y1="-48.26" x2="419.1" y2="-48.26" width="0.1524" layer="91"/>
<label x="419.1" y="-48.26" size="1.778" layer="95"/>
<pinref part="J2" gate="G$0" pin="4"/>
</segment>
<segment>
<wire x1="416.56" y1="-58.42" x2="419.1" y2="-58.42" width="0.1524" layer="91"/>
<label x="419.1" y="-58.42" size="1.778" layer="95"/>
<pinref part="J2" gate="G$0" pin="MNT_2"/>
</segment>
<segment>
<wire x1="416.56" y1="-53.34" x2="419.1" y2="-53.34" width="0.1524" layer="91"/>
<label x="419.1" y="-53.34" size="1.778" layer="95"/>
<pinref part="J2" gate="G$0" pin="MNT_1"/>
</segment>
<segment>
<wire x1="416.56" y1="-43.18" x2="419.1" y2="-43.18" width="0.1524" layer="91"/>
<label x="419.1" y="-43.18" size="1.778" layer="95"/>
<pinref part="J2" gate="G$0" pin="3"/>
</segment>
<segment>
<wire x1="416.56" y1="-2.54" x2="419.1" y2="-2.54" width="0.1524" layer="91"/>
<label x="419.1" y="-2.54" size="1.778" layer="95"/>
<pinref part="J1" gate="G$0" pin="MNT_2"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="J1" gate="G$0" pin="1"/>
<wire x1="416.56" y1="12.7" x2="419.1" y2="12.7" width="0.1524" layer="91"/>
<label x="419.1" y="12.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="G$0" pin="2"/>
<wire x1="416.56" y1="7.62" x2="419.1" y2="7.62" width="0.1524" layer="91"/>
<label x="419.1" y="7.62" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
