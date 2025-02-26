#!/bin/bash
if git diff --quiet; then
  echo "No changes detected"
else
  git add cn_dict/
  git commit -m "增量更新词库 (夜间构建)"
  git push origin main
fi
