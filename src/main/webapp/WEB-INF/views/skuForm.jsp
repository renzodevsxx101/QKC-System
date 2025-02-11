<div class="modal" tabindex="-1" role="dialog" id="addSkuMdl">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Add SKU</h5>
			</div>
			<div class="modal-body">
				<form id="addFormSku">
					<div class="form-group">
						<label for="addSkuCd">SKU Code</label> <input type="text"
							class="form-control" id="addSkuCd" name="addSkuCd" pattern="^(?:SKU)\d\d\d$" required
							placeholder="SKU###" title="Format: SKU###">
					</div>
					<br>
					<div class="form-group">
						<label for="addSkuName">SKU Name</label> <input type="text"
							class="form-control" id="addSkuName" name="addSkuName" required
							placeholder="Enter SKU name">
					</div>
					<br>
					<div class="form-group">
						<label for="addSkuUOM">Unit of Measurement</label> <!--  <input type=""
							class="form-control" id="addRawMatUOM" name="addRawMatUOM" required
							placeholder="Unit of Measurement">-->
							<select class="form-select form-select-sm unit_of_measurement" aria-label=".unit_of_measurement options" id = "addSkuUOM" name = "addSkuUOM">
							  <option disabled selected>Choose unit of measurement</option>
							  <option value="Pouch">Pouch</option>
							</select>
					</div>
					<br>
					<div class="form-group">
						<input id="btnSkuSave" type="Submit" class="btn btn-primary" value="Add" />
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>




<div class="modal" tabindex="-1" role="dialog" id="editSkuMdl">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Edit SKU</h5>
			</div>
			<div class="modal-body">
				<form id="editFormSku">
					<input type="hidden" id="oldSkuCd" name="oldSkuCd"/>
					<div class="form-group">
						<label for="newSkuCd">SKU Code</label> <input type="text"
							class="form-control" id="newSkuCd" title="Format: SKU###" name="newSkuCd" pattern="^(?:SKU)\d\d\d$" required />
					</div>
					<br>
					<div class="form-group">
						<label for="newSkuName">SKU Name</label> <input type="text"
							class="form-control" id="newSkuName" name="newSkuName" required />
					</div>
					<br>
					<div class="form-group">
						<label for="newSkuUOM">Unit of Measurement</label> <!--  <input type=""
							class="form-control" id="addRawMatUOM" name="addRawMatUOM" required
							placeholder="Unit of Measurement">-->
							<select class="form-select form-select-sm unit_of_measurement" aria-label=".unit_of_measurement options" id = "newSkuUOM" name = "newSkuUOM" required>
							  <option selected>Choose unit of measurement</option>
							  <option value="Pouch">Pouch</option>
							</select>
					</div>
					<br>
					<div class="form-group">
						<input id="btnSkuSave" type="Submit" class="btn btn-primary" value="Save changes" />
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>




<div class="modal" tabindex="-1" role="dialog" id="deleteSkuMdl">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Delete SKU</h5>
			</div>
			<div class="modal-body">
				<p>Are you sure you want to delete this SKU?</p>
				<form id="deleteFormSku">
					<input type="hidden" id="skuCode" name="skuCode"/>
					<div class="form-group">
						<button type="button" class="btn btn-secondary" id="close-modal" data-bs-dismiss="modal">No</button>
			   			<button type="Submit" class="btn btn-danger" id="btnRawMatDelete">Yes</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

