ARG ALFRESCO_TAG
ARG ALFRESCO_CE_TAG
#FROM alfresco/alfresco-content-repository-community:${ALFRESCO_TAG}
FROM alfresco/alfresco-governance-repository-community:${ALFRESCO_CE_TAG}

ARG TOMCAT_DIR=/usr/local/tomcat
ARG IMAGEUSERNAME=alfresco

# default user is alfresco (added on the base image alfresco/alfresco-content-repository-community)
# change to root user to be able to install the addons and packages
USER root

# COPY alfresco-extension/public-services-security-context.xml $TOMCAT_DIR/shared/classes/alfresco/extension/public-services-security-context.xml

# Install modules and addons
# RUN mkdir -p $TOMCAT_DIR/amps
# COPY modules/amps $TOMCAT_DIR/amps
# COPY modules/jars $TOMCAT_DIR/webapps/alfresco/WEB-INF/lib

#RUN java -jar $TOMCAT_DIR/alfresco-mmt/alfresco-mmt*.jar install \
#    $TOMCAT_DIR/amps $TOMCAT_DIR/webapps/alfresco -directory -nobackup -force

EXPOSE 2121 2433 2434



