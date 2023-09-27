import os
import re

account_name = os.environ.get("GITHUB_ACCOUNT", "default_account_name")

# Table header
table_content = "| Tool Name | Install Command | Version |\n|-----------|----------------|---------|\n"

for filename in os.listdir("."):
    if filename.endswith(".rb"):
        tool_name = filename.replace(".rb", "")
        install_command = f"`brew install {account_name}/tap/{tool_name}`"
        
        with open(filename, "r") as f:
            content = f.read()
            version_match = re.search(r'version "([\d\.]+)"', content)
            if version_match:
                version = version_match.group(1)
                
        table_content += f"| {tool_name} | {install_command} | {version} |\n"

with open("README.md", "w") as f:
    f.write("# Homebrew Tap\n")
    f.write("\n")
    f.write("## Tools\n")
    f.write("\n")
    f.write(table_content)
