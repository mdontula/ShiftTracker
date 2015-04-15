<%@ include file="includeTaglib.jsp"%>
<div id="main">

	<a name="TemplateInfo"></a>
	<h1>Patient Information</h1>
	<form:form modelAttribute="patientVB">
			<table id="printpatTable" cellspacing="2">
			<tr>
				<td><form:label path="name">Name</form:label></td>
				<td><form:input path="name" readonly="true" /></td>
				<td><form:label path="name">Patient Id</form:label></td>
				<td><form:input path="id" readonly="true" /></td>
				<td><form:label path="name">Date(yyyy-MM-dd)</form:label></td>
				<td><form:input path="created_date" readonly="true" /></td>
			</tr>
			<tr>
				<td><form:label path="ref_by_dr">Ref. by Dr.</form:label></td>
				<td><form:input path="ref_by_dr" readonly="true" /></td>
				<td><form:label path="age">Age</form:label></td>
				<td><form:input path="age" readonly="true" /></td>
				<td><form:label path="sex">Sex</form:label></td>
				<td><form:input path="sex" readonly="true" /></td>
			</tr>
		</table>
	</form:form>
	<br>
	<h1>Create Report and View Existing</h1>
	<span style="  background-color: #FAFAFA; font-size:14px; font-weight:bold;
    border: 1px solid #F2F2F2;" >
	 <input type="radio" id="mainReportButton" name="tab"
		class="reportformbutton" value="create main report"> Main report
		<input type="radio" id="urineReportButton" class="reportformbutton"
		value="create Urine report" name="tab">Urine report
		<input type="radio" id="biochemistReportButton" class="reportformbutton"
		value="create bio-Chemistry and Liver report" name="tab">Bio-Chemistry and Liver report
		<input type="radio" id="lipidReportButton" class="reportformbutton"
		value="create Lipid profile report" name="tab"> Lipid profile report
		 <input type="radio" id="showHistoryButton" class="reportformbutton"
		value="show History" name="tab">show History
		</span>
		<div id="showHistory" class="reportform" style="display: none">
		<h3>Patient Reports</h3>
		
		<code>
		<center><table border="1">
		
		<tr>
		<td><b>ID</b>
		<td><b>DATE</b>
		<td><b>STATUS</b></td>
		</tr>
		<tr>
		<td colspan="3"><b>Main Reports</b>
		</tr>
		<c:if test="${empty mainreportList}">
		<tr>
		<td colspan="3">No Reports Available yet</td>
		</tr>
		</c:if>
		<c:forEach var="mainreport" items="${mainreportList}">
		<tr>
		<td>${mainreport.id}</td>
		<td>${mainreport.created_date}</td>
		<td><a href="reportdetails.do?mainreport=true&reportid=${mainreport.id}&patientid=${param.patientid}">View Report</a></td>
		</tr>
		</c:forEach>
		
		<tr>
		<td colspan="3"><b>Urine Reports</b>
		</tr>
		<c:if test="${empty urineReportList}">
		<td colspan="3">No Reports Available yet</td>
		</c:if>
		<c:forEach var="urinereport" items="${urineReportList}">
		<tr>
		<td>${urinereport.id}</td>
		<td>${urinereport.created_date}</td>
		<td><a href="reportdetails.do?urinereport=true&reportid=${urinereport.id}&patientid=${param.patientid}">View Report</a></td>
		</tr>
		</c:forEach>
		
		<tr>
		<td colspan="3"><b>Bio Chemistry Liver  Reports</b>
		</tr>
		<c:if test="${empty biochemLiverReportList}">
		<td colspan="3">No Reports Available yet</td>
		</c:if>
		<c:forEach var="biochemliverreport" items="${biochemLiverReportList}">
		<tr>
		<td>${biochemliverreport.id}</td>
		<td>${biochemliverreport.created_date}</td>
		<td><a href="reportdetails.do?biochemliverreport=true&reportid=${biochemliverreport.id}&patientid=${param.patientid}">View Report</a></td>
		</tr>
		</c:forEach>
		
		<tr>
		<td colspan="3"><b>Lipid profile Reports</b>
		</tr>
		<c:if test="${empty lipidreportList}">
		<td colspan="3">No Reports Available yet</td>
		</c:if>
		<c:forEach var="lipidreport" items="${lipidreportList}">
		<tr>
		<td>${lipidreport.id}</td>
		<td>${lipidreport.created_date}</td>
		<td><a href="reportdetails.do?lipidreport=true&reportid=${lipidreport.id}&patientid=${param.patientid}">View Report</a></td>
		</tr>
		</c:forEach>
		
		</table>
</center>
		
		</code>
		</div>

	<div id="mainReport" class="reportform" style="display: none">
		<h3>Main report - HEMOTOLOGY</h3>

		<code>
			<form:form modelAttribute="mainReportVB">
			
			
							<table width="650px">
					<tr>
						<td colspan="3"><strong style="color: green; font-size: 20px; text-align: center"><center>HEMOTOLOGY REPORT</center></strong></td>
					</tr>
					
					<tr>
						<td><strong style="color: green;">INVESTIGATIONS</strong></td>
						<td><strong style="color: green; ">REPORT</strong></td>
						<td><strong style="color: green; ">NORMAL RANGE</strong></td>
					</tr>
					<tr>
						<td><form:label path="malaria_pf_pv">Malaria pf/pv</form:label></td>
						<td><form:input path="malaria_pf_pv" size="15" /></td>
						<td><label></label></td>
					</tr>
					
					<tr>
						<td><form:label path="widal_dilution_o">Widal dilution O</form:label></td>
						<td><form:input path="widal_dilution_o" size="15" /></td>
						
					</tr>
					<tr>
						<td><form:label path="widal_dilution_h">Widal dilution H</form:label></td>
						<td><form:input path="widal_dilution_h" size="15" /></td>
	
					</tr>
					<tr>
						<td><form:label path="widal_dilution_ah">Widal dilution AH</form:label></td>
						<td><form:input path="widal_dilution_ah" size="15" /></td>
					</tr>
					<tr>
						<td><form:label path="widal_dilution_oh">Widal dilution BH</form:label></td>
						<td><form:input path="widal_dilution_oh" size="15" /></td>
					</tr>
						<tr>
						<td><form:label path="hemoglobin">Hemoglobin</form:label></td>
						<td><form:input path="hemoglobin" size="15" /></td>
						<td><label>M: 13.5-18.0 gm%  F:11.5-16.5gm%</label></td>
					</tr>
					<tr>
						<td><form:label path="hematologyVB.wbccount">W.B.C Count</form:label></td>
						<td><form:input path="hematologyVB.wbccount" size="15" /></td>
						<td><label>4,000 - 11,000 cells/cumm</label></td>
					</tr>
						<tr>
						<td><form:label path="hematologyVB.rbccount">R.B.C Count</form:label></td>
						<td><form:input path="hematologyVB.rbccount" size="15" /></td>
						<td><label>M: 5.0-6.0 Mill/Cumm  F: 4.5-5.5 Mill/Cumm</label></td>
					</tr>
			
					<tr>
						<td><form:label path="hematologyVB.esristhour">E.S.R. Isthour</form:label></td>
						<td><form:input path="hematologyVB.esristhour" size="15" /></td>
						<td><label>M: 1-10mm  F: 1-15mm </label></td>
					</tr>
					<tr>
						<td><form:label path="hematologyVB.aeccount">A.E.C Count</form:label></td>
						<td><form:input path="hematologyVB.aeccount" /></td>
					    <td><label>40-440 Cells/Cumm </label></td>
					</tr>
					
					<tr>
						<td><form:label path="hematologyVB.bt">B.T</form:label></td>
						<td><form:input path="hematologyVB.bt" /></td>
					    <td><label>B.T: 1-4 Minutes </label></td>
					</tr>
					
					<tr>
						<td><form:label path="hematologyVB.ct">C.T</form:label></td>
						<td><form:input path="hematologyVB.ct" /></td>
					    <td><label>C.T: 1-6 Minutes </label></td>
					</tr>
					<tr>
						<td><form:label path="platelet_count">Platelet count</form:label></td>
						<td><form:input path="platelet_count" size="15" /></td>
						<td><label>1.5-4.0 lakh/Cumm</label></td>
					</tr>
					<tr>
						<td><form:label path="hematologyVB.bloodgroup">BLOOD GROUP</form:label></td>
						<td><form:input path="hematologyVB.bloodgroup" /></td>
					    <td><label></label></td>
					</tr>
					<tr>
						<td><form:label path="hematologyVB.rhfactor">RH FACTOR</form:label></td>
						<td><form:input path="hematologyVB.rhfactor" /></td>
						<td><label> </label></td>
					</tr>

					<tr>
						<td colspan="3"><strong style="color: green; font-size: 20px; text-align: center"><center>DIFFERENTIAL COUNT</center></strong></td>
					</tr>

					<tr>
                        <td><form:label path="hematologyVB.neutrophils">Neutrophils</form:label></td>
						<td><form:input path="hematologyVB.neutrophils" size="15" /></td>
						<td><label>40-70%</label></td>
					</tr>
					<tr>
						<td><form:label path="hematologyVB.lymphocytes">Lymphocytes</form:label></td>
						<td><form:input path="hematologyVB.lymphocytes" size="15" /></td>
						<td><label>20-40%</label></td>
					</tr>
					<tr>
						<td><form:label path="hematologyVB.eosinophils">Eosinophils</form:label></td>
						<td><form:input path="hematologyVB.eosinophils" size="17" /></td>
						<td><label>1-6%</label></td>
					</tr>
						<tr>
						<td><form:label path="hematologyVB.monocytes">Monocytes</form:label></td>
						<td><form:input path="hematologyVB.monocytes" size="15" /></td>
						<td><label>2-8%</label></td>
					</tr>
						<tr>
						<td><form:label path="hematologyVB.basophils">Basophils</form:label></td>
						<td><form:input path="hematologyVB.basophils" size="15" /></td>
						<td><label>0-1%</label></td>
					</tr>	


				</table>
			
	<input type="hidden" name="mainReport" value="true" />
				<p>
					<input style="margin-left: 350px" type="submit" value="Create Hemotology report" />
				</p>
			</form:form>

		</code>

	</div>

	<div id="urineReport" class="reportform" style="display: none">
		<h3>Urine Examination Report</h3>

		<code>
			<form:form modelAttribute="urineexamVB">
			
			
			
			<table width="650px">
				<tr>
						<td colspan="3"><strong style="color: green; font-size: 20px; text-align: center"><center>URINE EXAM REPORT</center></strong></td>
					</tr>
				 <tr>
				    <td><form:label path="appearance">Appearance:</form:label></td>
				    <td><form:select path="appearance">
						<form:option value="clear"></form:option>
						<form:option value="cloudy"></form:option>
						<form:option value="turbdity"></form:option>
						<form:option value="Others"></form:option>
						<form:option value="--"></form:option>
					</form:select></td>
			     </tr>
				 
				 <tr>
				    <td><form:label path="color">Color:</form:label></td>
				    <td><form:select path="color">
						<form:option value="Pale Yellow"></form:option>
						<form:option value="Deep Yellow"></form:option>
						<form:option value="Reddish Yellow"></form:option>
						<form:option value="Others"></form:option>
						<form:option value="--"></form:option>
					</form:select></td>
			     </tr>
				 
				 <tr>
				    <td><form:label path="sugar">Sugar:</form:label></td>
				    <td><form:select path="sugar">
						<form:option value="Nill"></form:option>
						<form:option value="trace"></form:option>
						<form:option value="+"></form:option>
						<form:option value="++"></form:option>
						<form:option value="+++"></form:option>
						<form:option value="++++"></form:option>
						<form:option value="Others"></form:option>
						<form:option value="--"></form:option>
					</form:select></td>
			     </tr>			 
				 
				 <tr>
				    <td><form:label path="albumin">Albumin:</form:label></td>
				    <td><form:select path="albumin">
						<form:option value="Nill"></form:option>
						<form:option value="trace"></form:option>
						<form:option value="+"></form:option>
						<form:option value="++"></form:option>
						<form:option value="+++"></form:option>
						<form:option value="Others"></form:option>
						<form:option value="--"></form:option>
					</form:select></td>
			     </tr>
			
				 <tr>
				    <td><form:label path="bile_salts">Bile Salts:</form:label></td>
				    <td><form:select path="bile_salts">
						<form:option value="Negative(-V)"></form:option>
						<form:option value="Postitive(+V)"></form:option>
					</form:select></td>
			     </tr>	
				 
				 			 <tr>
				    <td><form:label path="ph">PH:</form:label></td>
				    <td><form:input path="ph"  size="15"/></td>
			     </tr>			 
				 
				 <tr>
				    <td><form:label path="sp_gravity">Sp. Gravity:</form:label></td>
				    <td><form:select path="sp_gravity">
						<form:option value="Q.N.S"></form:option>
						<form:option value="Others"></form:option>
						<form:option value="--"></form:option>
					</form:select></td>
			     </tr>
			
				 <tr>
				    <td><form:label path="ketonbodies">Keton Bodies:</form:label></td>
				    <td><form:select path="ketonbodies">
						<form:option value="Negative"></form:option>
						<form:option value="Postitive"></form:option>
						<form:option value="--"></form:option>
					</form:select></td>
			     </tr>
				 
				 <tr>
				 <td><form:label path="urine_for_gravendex"></form:label></td>
				 <td><form:select path="urine_for_gravendex">
						<form:option value="Negative"></form:option>
						<form:option value="Postitive"></form:option>
						<form:option value="--"></form:option>
					</form:select></td>
				 </tr>
					<tr>
						<td colspan="2"><strong style="color: green; font-size: 20px; text-align: center"><center>Microscopic Exam</center></strong></td>
					</tr>
				 <tr>
				 <td><form:label path="pus_cells">Pus Cells:  </form:label></td>
				 <td><form:input path="pus_cells" size="15"/></td>
				 </tr>
				 
				 <tr>
				 <td><form:label path="rbcs">R.B.C.s: </form:label></td>
				 <td><form:input path="rbcs" size="15"/></td>
				 </tr>
				 <tr>
				 <td><form:label path="epithelial_cells">Epithelial cell: </form:label></td>
				 <td><form:input path="epithelial_cells" size="15"/></td>
				 </tr>
				 <tr>
				 <td><form:label path="casts">casts: </form:label></td>
				 <td><form:input path="casts" size="15"/></td>
				 </tr>
				 
				 <tr>
				 <td><form:label path="crystals">Crystals: </form:label></td>
				 <td><form:input path="crystals" size="15"/></td>
				 </tr>
			
				 <tr>
				 <td><form:label path="other_Findings">Other Findings: </form:label></td>
				 <td><form:textarea path="other_Findings" cols="20" rows="3" /></td>
				 </tr>
				 
				 </table>
			

				<input type="hidden" name="urineReport" value="urine" />
				<p>
					<input style="margin-left: 350px" type="submit"
						value="Create Urine Report" />
				</p>
			</form:form>

		</code>

	</div>

	<div id="biochemReport" class="reportform" style="display: none">
		<h3>Bio Chemistry and Liver Report</h3>

		<code>
			<form:form modelAttribute="bioChemLiverVB">
								<table width="500px" cellspacing="0">
					<tr>
						<td colspan="3"><strong style="color: green; font-size: 20px; text-align: center"><center>BIO - CHEMISTRY REPORT</center></strong></td>
					</tr>
					<tr>
						<td><strong style="color: green;">INVESTIGATIONS</strong></td>
						<td><strong style="color: green; ">REPORT</strong></td>
						<td><strong style="color: green; ">NORMAL RANGE</strong></td>
					</tr>
					<tr>
						<td><form:label path="fasting_blood_sugar">Fasting Blood Sugar</form:label></td>
						<td><form:input path="fasting_blood_sugar" size="15" /></td>
						<td><label>70-110mg%</label></td>
					</tr>
					<tr>
						<td><form:label path="post_lunch_blood_sugar">Post Lunch Blood Sugar</form:label>
						<td><form:input path="post_lunch_blood_sugar" size="15" />
						<td ><label>100-160mg%</label></td>
					</tr>
					<tr>
						<td><form:label path="random_blood_sugar">Random Blood Sugar</form:label></td>
						<td><form:input path="random_blood_sugar" size="15" /></td>
						<td ><label>80-160mg%</label></td>
					</tr>
						<tr>
						<td><form:label path="blood_urea">Blood Urea</form:label></td>
						<td><form:input path="blood_urea" size="15" /></td>
						<td ><label>20-40mg%</label></td>
					</tr>
					<tr>
						<td><form:label path="serum_creatinine">Serum Creatinine</form:label></td>
						<td><form:input path="serum_creatinine" size="15" /></td>
						<td ><label>0.6-1.5mg%</label></td>
					</tr>
					<tr>
						<td><form:label path="serum_calcium">Serum Calcium</form:label></td>
						<td><form:input path="serum_calcium" size="15" /></td>
						<td ><label>9-11mg%</label></td>
					</tr>
					<tr>
						<td><form:label path="serum_amylase">Serum Amylase</form:label></td>
						<td><form:input path="serum_amylase" size="15" /></td>
						<td ><label>50-120U/L</label></td>
					</tr>
				
					<tr>
						<td><form:label path="serum_uric_acid">Serum Uric Acid</form:label></td>
						<td><form:input path="serum_uric_acid" size="15" /></td>
						<td ><label>Men : 2.5-7mg%<br>Women : 1.5-6mmg%</label></td>
					</tr>
					<tr>
						<td><form:label path="serum_electrolytes_na">Serum electrolytes Na+</form:label></td>
						<td><form:input path="serum_electrolytes_na" size="15" /></td>
						<td ><label>136-145 meq/L</label></td>
					</tr>
					<tr>
						<td><form:label path="serum_electrolytes_cl">Serum electrolytes Cl-</form:label></td>
						<td><form:input path="serum_electrolytes_cl" size="15" /></td>
						<td ><label>95-105 meq/L</label></td>
					</tr>
					<tr>
						<td><form:label path="serum_electrolytes_k">Serum electrolytes K+</form:label></td>
						<td><form:input path="serum_electrolytes_k" size="15" /></td>
						<td ><label>3.5-5 meq/L</label></td>
					</tr>
				<tr>
						<td colspan="3"><strong style="color: green; font-size: 20px; text-align: center"><center>LIVER FUNCTION TEST</center></strong></td>
					</tr>
						<tr>
						<td><strong style="color: green;">INVESTIGATIONS</strong></td>
						<td><strong style="color: green; ">REPORT</strong></td>
						<td><strong style="color: green; ">NORMAL RANGE</strong></td>
					</tr>
					
					
					<tr>
						<td><form:label path="liverTestVB.serum_total_bilirubin">Serum Total Bilirubin</form:label></td>
						<td><form:input path="liverTestVB.serum_total_bilirubin" size="15" /></td>
						<td ><label>0.2-1.0mg/dl</label></td>
					</tr>
						<tr>
						<td><form:label path="liverTestVB.serum_direct_bilirubin">Serum Direct Bilirubin</form:label></td>
						<td><form:input path="liverTestVB.serum_direct_bilirubin" size="15" /></td>
						<td ><label>0-0.25mg/dl</label></td>
						</tr>
						<tr>
						<td><form:label path="liverTestVB.serum_indirect_bilirubin">Serum Indirect Bilirubin</form:label></td>
						<td><form:input path="liverTestVB.serum_indirect_bilirubin" size="15" /></td>
						<td ><label> </label></td>
						</tr>
					<tr>
						<td><form:label path="liverTestVB.serum_total_proteins">Serum Total Proteins</form:label></td>
						<td><form:input path="liverTestVB.serum_total_proteins" size="15" /></td>
						<td ><label>6.0-8.5gm%</label></td>
					</tr>
					<tr>
						<td><form:label path="liverTestVB.albumin">Albumin</form:label></td>
						<td><form:input path="liverTestVB.albumin" size="15" /></td>
						<td ><label>3.5-5.0gm%</label></td>
					</tr>
					<tr>
						<td><form:label path="liverTestVB.globulin">Globulin</form:label></td>
						<td><form:input path="liverTestVB.globulin" size="15" /></td>
						<td ><label>1.5-3.5gm%</label></td>
					</tr>
					
					<tr>
						<td><form:label path="liverTestVB.sgpt">SGPT</form:label></td>
						<td><form:input path="liverTestVB.sgpt" size="15" /></td>
						<td ><label>5-40 IU/L</label></td>
					</tr>
						<tr>
						<td><form:label path="liverTestVB.sgot">SGOT</form:label></td>
						<td><form:input path="liverTestVB.sgot" size="15" /></td>
						<td ><label>5-40 IU/L</label></td>
					</tr>
						<tr>
						<td><form:label path="liverTestVB.serum_alkaline_phosphates">Serum Alkaline Phosphates</form:label></td>
						<td><form:input path="liverTestVB.serum_alkaline_phosphates"size="15" /></td>
						<td ><label>25-90 IU/L</label></td>
					</tr>
				</table>
				<input type="hidden" name="biochemliverReport" value="true" />
				<p>
					<input style="margin-left: 350px" type="submit" value="Create BioChem Liver report" />
				</p>
			</form:form>

		</code>

	</div>

	<div id="lipidReport" class="reportform" style="display: none">
		<h3>Lipid Profile Report</h3>

		<code>
			<form:form modelAttribute="lipidReportVB">
<table width="650px">
					<tr>
						<td colspan="3"><strong style="color: green; font-size: 20px; text-align: center"><center>LIPID PROFILE REPORT</center></strong></td>
					</tr>
					
					<tr>
						<td><strong style="color: green;">INVESTIGATIONS</strong></td>
						<td><strong style="color: green; ">REPORT</strong></td>
						<td><strong style="color: green; ">NORMAL RANGE</strong></td>
					</tr>
					<tr>
						<td><form:label path="serum_cholestrol">Serum cholestrol</form:label></td>
						<td><form:input path="serum_cholestrol" size="15" /></td>
						<td><label>140-250mg/dl</label></td>
					</tr>
					<tr>
						<td><form:label path="hdl_cholestrol">Hdl Cholestrol</form:label></td>
						<td><form:input path="hdl_cholestrol" size="15" /></td>
						<td><label>30-70mg/dl</label></td>
					</tr>
					<tr>
						<td><form:label path="ldl_cholestrol">Ldl Cholestrol</form:label></td>
						<td><form:input path="ldl_cholestrol" size="15" /></td>
						<td><label>35-130mg/dl</label></td>
					</tr>
					<tr>
						<td><form:label path="vldl_cholestrol">Vldl Cholestrol</form:label></td>
						<td><form:input path="vldl_cholestrol" size="15" /></td>
						<td><label>up to 30mg/dl</label></td>
					</tr>
						<tr>
						<td><form:label path="trigly_cerides">Trigly Cerides</form:label></td>
						<td><form:input path="trigly_cerides" size="15" /></td>
						<td><label>25-160mg/dl</label></td>
					</tr>
			
					<tr>
						<td><form:label path="ratio">Ratio</form:label></td>
						<td><form:input path="ratio" size="15" /></td>
						<td><label> </label></td>
					</tr>
					<tr>
						<td colspan="3"><strong style="color: green; font-size: 20px; text-align: center"><center>SEROLOGY REPORT</center></strong></td>
					</tr>
					<tr>
						<td><form:label path="serologyvb.widal_dilution_o">Widal dilution O</form:label></td>
						<td><form:input path="serologyvb.widal_dilution_o" size="15" /></td>
						<td><label><strong  style="font-size: 20px;">SPUTUM FOR AFB </strong></label></td>
					</tr>
					<tr>
						<td><form:label path="serologyvb.widal_dilution_h">Widal dilution H</form:label></td>
						<td><form:input path="serologyvb.widal_dilution_h" size="15" /></td>
							
						<td><form:label path="others">Others</form:label></td>
					</tr>
					<tr>
						<td><form:label path="serologyvb.widal_dilution_ah">Widal dilution AH</form:label></td>
						<td><form:input path="serologyvb.widal_dilution_ah" size="15" /></td>
						<td colspan="5"><form:textarea path="others" col="10" rows="1" /></td>
					</tr>
					<tr>
						<td><form:label path="serologyvb.widal_dilution_bh">Widal dilution BH</form:label></td>
						<td><form:input path="serologyvb.widal_dilution_bh" size="15" /></td>
					</tr>
					<tr>
						<td><form:label path="serologyvb.vdrl">V.R.D.L</form:label></td>
						<td><form:select path="serologyvb.vdrl">
							<form:option value="Negative"></form:option>
							<form:option value="Postitive"></form:option>
							<form:option value="--"></form:option>
						</form:select>
						</td>
					</tr>
					<tr>
						<td><form:label path="serologyvb.rafactor">R.A. Factor</form:label></td>
						<td><form:select path="serologyvb.rafactor">
							<form:option value="Negative"></form:option>
							<form:option value="Postitive"></form:option>
							<form:option value="--"></form:option>
						</form:select>
						</td>
					</tr>
					<tr>
						<td><form:label path="serologyvb.asotitre">A.S.O Titre</form:label></td>
						<td><form:select path="serologyvb.asotitre">
							<form:option value="Negative"></form:option>
							<form:option value="Postitive"></form:option>
							<form:option value="--"></form:option>
						</form:select></td>
					</tr>
						<tr>
						<td><form:label path="serologyvb.asotitle_dilution">Dilution</form:label></td>
						<td><form:input path="serologyvb.asotitle_dilution" size="15" /></td>
					</tr>
						<tr>
						<td><form:label path="serologyvb.hiv1andhiv2">HIV I & HIV II</form:label></td>
						<td><form:select path="serologyvb.hiv1andhiv2">
							<form:option value="Negative"></form:option>
							<form:option value="Postitive"></form:option>
							<form:option value="--"></form:option>
						</form:select></td>
					</tr>
						<tr>
						<td><form:label path="serologyvb.hbsag">HBSAG</form:label></td>
						<td>	
						<form:select path="serologyvb.hbsag">
							<form:option value="Negative"></form:option>
							<form:option value="Postitive"></form:option>
							<form:option value="--"></form:option>
						</form:select>
							
					</tr>

				</table>

				<input type="hidden" name="lipidReport" value="true" />
				<p>
					<input style="margin-left: 350px" type="submit" value="Create Lipid report" />
				</p>
			</form:form>

		</code>

	</div>




</div>