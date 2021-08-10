FROM pantsel/konga:latest

RUN mv /app/start.sh /app/_start.sh 
COPY start.sh /app/start.sh

