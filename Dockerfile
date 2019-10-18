##################################################
#
#  Dockerfile to build todo-app demo application
#
#################################################
# Set base to Python 2.7

FROM saifrahm/demo-app:v1

MAINTAINER "OneCloud Consulting Inc. <sabdhagiri@onecloudinc.com>"

RUN rm -rf /tod-app && ls /
COPY . /todo-app
WORKDIR /todo-app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
EXPOSE 9000





