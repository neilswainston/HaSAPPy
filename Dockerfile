FROM python:2.7

COPY . /
WORKDIR /

# Install Python dependencies:
RUN pip install --upgrade pip \
	&& pip install numpy \
	&& pip install -r requirements.txt

# Set ENTRYPOINT:
ENV PYTHONPATH "${PYTHONPATH}:/"

ENTRYPOINT ["python", "-u", "HaSAPPy/GeneReference_built.py"]