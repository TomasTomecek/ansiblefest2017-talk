FROM registry.fedoraproject.org/fedora:26
ENV PATH=/root/.local/bin:$PATH
RUN dnf install -y python3-docker && \
    pip3 install --user ansible-container[docker]
