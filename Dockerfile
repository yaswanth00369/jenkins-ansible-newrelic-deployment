FROM public.ecr.aws/amazonlinux/amazonlinux:2023

# Install dependencies (including tools required by New Relic script)
RUN yum install -y sudo tar gzip shadow-utils findutils which util-linux hostname htop && \
    yum install -y nginx && \
    yum clean all

# Install New Relic
RUN curl -Ls https://download.newrelic.com/install/newrelic-cli/scripts/install.sh | bash
RUN sudo NEW_RELIC_API_KEY=NRAK-04XUDJPPZ4BV0CVSJXEUV4ZTWWX NEW_RELIC_ACCOUNT_ID=6978270 /usr/local/bin/newrelic install -y
RUN echo "display_name: AmazonLinux2-$(date +%Y%m%d)" >> /etc/newrelic-infra.yml

# Configure Nginx index page
RUN echo '<!DOCTYPE html> \
<html> \
<head> \
<title>NewRelic Integration</title> \
</head> \
<body> \
<h1>This Docker Image is integrated successfully with New Relic</h1> \
</body> \
</html>' > /usr/share/nginx/html/index.html

# Expose Nginx port
EXPOSE 80

# Start both New Relic Agent and Nginx
CMD ["/bin/sh", "-c", "newrelic-infra & nginx -g 'daemon off;'"]
