#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Satwik Singh Chauhan | Reg No: 24BCY10189

echo "======================================="
echo "  Open Source Manifesto Generator"
echo "======================================="
echo ""
echo "Answer three questions below."
echo ""
echo -n "1. Name one open-source tool you use every day: "
read TOOL

echo -n "2. In one word, what does 'freedom' mean to you in software? "
read FREEDOM

echo -n "3. Name one thing you would build and share freely if you could: "
read BUILD
DATE=$(date '+%d %B %Y')
UNAME=$(whoami)
OUTPUT="manifesto_${UNAME}.txt"

echo ""
echo "Generating your manifesto..."
echo ""
{
echo "Open Source Manifesto"
echo "Generated on: $DATE"
echo "----------------------------------------------"
echo ""
echo "I use $TOOL every single day without paying a cent, without requesting"
echo "permission, and without waiting on a company to decide which features"
echo "I am and am not allowed to have. That is not a minor thing. To me, freedom"
echo "in software means $FREEDOM — the ability to look under the surface, change"
echo "what doesn't work, and pass on what you've figured out."
echo ""
echo "If I had the ability and the time, I would build $BUILD and put it out"
echo "there for whoever needs it. Not because it would earn me anything, but"
echo "because that's exactly how the tools I rely on were made — by people who"
echo "contributed something without knowing precisely who would end up using it."
echo ""
echo "Open source isn't charity. It's a position on what kind of environment"
echo "you want to work in. I'd rather work in one where knowledge gets shared."
echo ""
echo "-- $UNAME, $DATE"
} > "$OUTPUT"

echo "Manifesto saved to: $OUTPUT"
echo ""
cat "$OUTPUT"
