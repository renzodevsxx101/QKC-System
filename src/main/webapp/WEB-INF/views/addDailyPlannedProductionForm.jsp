<!-- Form within a modal -->
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<div class="modal fade" id="dailyPlannedProductionMdl" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Add Production Plan</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="addPlanProdForm" method="post">
			<div class="form-group">
				<h5 class="text-center fw-bold">SKU</h5>
				<hr>
				<div class="input-group mb-2 w-50">
					<span class="input-group-text fw-bold" id="skuLabel">SKU: </span>
					<select id="skuSelection" name="sku_cd" class="form-select" aria-label="Default select example" onfocus="this.size=4" onblur="this.size=1;" onchange="this.size=1; this.blur();" required >
					  	<option disabled>--Select SKU--</option>
					  	<c:forEach var="sku" items="${skuList}">
							<option data-skuUnit="${sku.unit_of_measurement}" value="${sku.sku_cd}"><c:out value="${sku.sku_name}"/></option>
						</c:forEach>
					</select>
				</div>
				<div class="input-group w-50">
					<span class="input-group-text fw-bold" id="qtyLabel">Quantity: </span>
					<input type="number" class="form-control" min="1" max="1000" id="skuQuantity" name="skuQuantity" placeholder="Quantity" required>
				</div>
			</div>
			<hr>
			<div class="form-group">
				<h5 class="text-center fw-bold">Raw Material</h5>
				<hr>
				<div id="availRawMaterial"></div>
			</div>
			<br>
			<div class="form-group text-center">
				<input id="dppBtnAdd" type="Submit" class="btn btn-primary" value="Add" />
			</div>
		</form>
      </div>
    </div>
  </div>
</div>