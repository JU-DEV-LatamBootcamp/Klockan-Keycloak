# Klockan-Keycloak

## Setting up the Keycloak Server in a Container:

Follow these steps to set up the Keycloak Server using Docker:

1. Navigate to the Work Directory:
   Change your working directory to the location where you want to set up the Keycloak Server.
2. Build the Container:
   Execute the following command to build and start the container:
   ```docker-compose up -d --build```
   This command will build the container and run it in detached mode (`-d`), allowing it to operate in the background.
   ***Note:*** Ensure that you have a valid `docker-compose.yml` file in your work directory.
3. Run the Container (Without Building):
   If you've already built the container and want to start it without rebuilding, use the following command:
   ```docker run keycloak-server```
4. Stop the Container:
   To stop the running Keycloak container, use the following command:
   ```docker stop keycloak-server```
5. Remove the Container:
   If you want to remove the Keycloak container and associated volumes, execute the following command:
   ```docker-compose down -v```
   The `-v` option ensures that volumes associated with the container are also removed.

These steps allow you to efficiently manage the lifecycle of your Keycloak Server container.
