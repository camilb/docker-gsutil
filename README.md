###gsutil tool for Google Cloud Storage on alpine linux


Create a local or private image

Dockerfile:

		FROM camil/gsutil

		COPY boto /root/.boto

####Example usage

    `docker build -t camil/gsutil:private`		

    `docker run -it --rm camil/gsutil:private gsutil ls`

  	`docker run -it --rm -v dir:/gs camil/gsutil:private gsutil cp -r /gs gs://my-bucket`


####config file example


    [Credentials]

    gs_oauth2_refresh_token = your_token


    [Boto]


    https_validate_certificates = True


    [GSUtil]

    content_language = en

    default_api_version = 2

    default_project_id = your_project_id

    [OAuth2]

####generate token example

    `docker run -it --rm camil/gsutil sh`

    `# gsutil config`
