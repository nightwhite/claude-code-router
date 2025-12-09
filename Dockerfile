FROM node:20-alpine

RUN npm install -g @musistudio/claude-code-router

EXPOSE 3456

# Clean stale PID files before starting to avoid false "already running" exits
CMD ["sh", "-c", "rm -f /root/.claude-code-router/ccr.pid /root/.claude-code-router/reference_count && ccr start"]
