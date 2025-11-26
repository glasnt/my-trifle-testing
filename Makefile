BUILD_FILE := test.cloudbuild.yaml

test:
	cd ${dir}
	@if [ -f "$(BUILD_FILE)" ]; then \
		gcloud builds submit --config $(BUILD_FILE); \
	else; \
		echo "No $(BUILD_FILE) found in ${dir}."; \
	end;
