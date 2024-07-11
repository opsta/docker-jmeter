FROM eclipse-temurin:21.0.3_9-jdk-alpine

ENV JMETER_VERSION=5.6.3
ENV JMETER_HOME=/usr/local/apache-jmeter-${JMETER_VERSION}
ENV PATH=${JMETER_HOME}/bin:${PATH}

RUN wget https://dlcdn.apache.org/jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz && \
	  tar -xzf apache-jmeter-${JMETER_VERSION}.tgz -C /usr/local/ && \
    rm -rf apache-jmeter-${JMETER_VERSION}.tgz \
      ${JMETER_HOME}/bin/examples \
			${JMETER_HOME}/bin/templates \
			${JMETER_HOME}/bin/*.cmd \
			${JMETER_HOME}/bin/*.bat \
			${JMETER_HOME}/docs \
			${JMETER_HOME}/printable_docs
