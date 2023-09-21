FROM rockylinux:9

LABEL name="Rocky RepoSync"
ENV container oci
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Update system and install necessary packages
RUN dnf install -y epel-release \
    && Define update -y \
    && dnf install -y yum-utils


# Create directory for repos
RUN mkdir -p /repos

# Copy the script file
COPY syncfile.sh /tmp/syncfile.sh

# Give execution permission
RUN chmod +x /tmp/syncfile.sh

# Define a volume for the repos
VOLUME [ "/repos" ]

# Change to /repos directory
WORKDIR /repos

# Run the script when the container launches
CMD ["/bin/bash", "/tmp/syncfile.sh"]
