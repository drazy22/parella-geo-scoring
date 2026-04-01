#!/bin/bash
# Run this from Terminal — it pushes your GEO dashboard to GitHub
cd ~/Documents/Claude/Projects/Parella/geo-scoring-v3

git init
git add index.html geo_results.csv mistral_results.csv claude_self_audit.csv llm_batch_results.csv QUERY_MATRIX.md GEO_TESTING_REPORT.md citability_audit.md geo_audit_report.md geo_scoring_raw_en.csv geo_scoring_summary_en.md
git commit -m "Parella GEO Scoring Dashboard V5 — AI Brand Visibility Tracking"
git branch -M main
git remote add origin https://github.com/drazy22/parella-geo-scoring.git
git push -u origin main

echo ""
echo "✅ Done! Now deploy to Vercel:"
echo "npx vercel --prod"
