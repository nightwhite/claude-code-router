FROM node:20-alpine

RUN npm install -g @musistudio/claude-code-router

EXPOSE 3456

# Clean stale PID and ref-count files before starting to avoid false "already running" exits
CMD ["sh", "-c", "rm -f /root/.claude-code-router/.claude-code-router.pid /tmp/claude-code-reference-count.txt && ccr start"]
