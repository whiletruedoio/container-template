# Always specify the complete path to avoid conflicts.
# It is also recommended to use a version tag.
FROM docker.io/library/alpine:3

# Adding some while-true-do.io information
LABEL io.while-true-do.site="https://while-true-do.io"
LABEL io.while-true-do.blog="https://blog.while-true-do.io"
LABEL io.while-true-do.code="https://github.com/whiletruedoio"
LABEL io.while-true-do.mail="hello@while-true-do.io"

# Adding authors is recommended
LABEL io.while-true-do.image.authors="dschier@while-true-do.io"

# Adding content should be done from "less often changing" to "more often
# changing" to save some time during builds.
RUN apk add --no-cache "apache2>=2" "bash>=5"

# It is recommended to adjust the file owners and permissions properly.
COPY src/bin /usr/local/bin/
COPY src/html /var/www/localhost/htdocs/

RUN chmod +x /usr/local/bin/entrypoint.sh

# It is recommended to specify exposed ports, so container engines can detect
# these. It is not needed, though.
EXPOSE 80

# If the command in the container can run without root, it is recommended to
# specify the user for the container. This is known to be more secure.
#USER apache

# It is recommended to use the ENTRYPOINT statement for containers, but also
# needs some additional scripting. For simple container images the CMD statement
# is fine.
ENTRYPOINT ["/usr/bin/env","bash","/usr/local/bin/entrypoint.sh"]
