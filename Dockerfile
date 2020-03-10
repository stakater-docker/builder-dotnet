# keeping latest as we would have to individually change version if anything changes there
FROM stakater/pipeline-tools:v2.1.1

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

RUN rpm -Uvh https://packages.microsoft.com/config/rhel/7/packages-microsoft-prod.rpm

RUN yum -y update

RUN yum install -y dotnet-sdk-2.2

# Define default command, can be overriden by passing an argument when running the container
CMD ["bash"]
