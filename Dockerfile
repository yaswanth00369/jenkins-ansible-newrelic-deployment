FROM public.ecr.aws/amazonlinux/amazonlinux:2023

# Install dependencies
RUN yum install -y sudo tar gzip shadow-utils findutils which util-linux hostname htop && \
    yum install -y nginx && \
    yum clean all

# Install New Relic Infrastructure Agent directly (bypass CLI detection issues)
RUN curl -o /etc/yum.repos.d/newrelic-infra.repo https://download.newrelic.com/infrastructure_agent/linux/yum/el/8/x86_64/newrelic-infra.repo && \
    yum install -y newrelic-infra && \
    echo "enable_process_metrics: true" > /etc/newrelic-infra.yml && \
    echo "status_server_enabled: true" >> /etc/newrelic-infra.yml && \
    echo "status_server_port: 18003" >> /etc/newrelic-infra.yml && \
    echo "license_key: df41d8c2212297082ca4fefb4397eaf4FFFFNRAL" >> /etc/newrelic-infra.yml && \
    echo "custom_attributes:" >> /etc/newrelic-infra.yml && \
    echo "  nr_deployed_by: ansible-docker-build" >> /etc/newrelic-infra.yml && \
    echo "display_name: Mumbai-Docker-Nginx-App" >> /etc/newrelic-infra.yml

# Configure Nginx index page with styled message
RUN echo '<!DOCTYPE html> \
<html> \
<head> \
<title>Docker-Nginx-NewRelic</title> \
</head> \
<body> \
<h1><p><span style="color:crimson;">This Nginx application was</span> \
<span style="color:green;">deployed</span> \
<span style="color:purple;">using a Dockerfile</span> \
<span style="color:Teal;">with built-in New Relic integration.</span></p></h1> \
</body> \
</html>' > /usr/share/nginx/html/index.html


# Expose Nginx port
EXPOSE 80

# Start New Relic Agent & Nginx
CMD ["/bin/sh", "-c", "newrelic-infra & nginx -g 'daemon off;'"]
