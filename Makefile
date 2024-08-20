dagster-agent:
	docker run \
	--network=dagster_cloud_agent \
	--volume $PWD/dagster.yaml:/opt/dagster/app/dagster.yaml:ro \
	--volume /var/run/docker.sock:/var/run/docker.sock \
	-it docker.io/dagster/dagster-cloud-agent:latest \
	dagster-cloud agent run /opt/dagster/app
