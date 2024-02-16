printf "Start of Script File\n" > /workspaces/BigLog.txt

# Access the GITHUB_REPOSITORY environment variable
repo=$GITHUB_REPOSITORY

# Split the variable into owner and repository name
IFS='/' read -ra ADDR <<< "$repo"
owner=${ADDR[0]}
repository=${ADDR[1]}

printf "Owner: $owner and Repository: $repository\n" > /workspaces/BigLog.txt


printf "CD command\n" >> /workspaces/BigLog.txt
cd /usr/share

mv dotnet dotnet-8.0.101
mkdir dotnet

printf "curl command\n" >> /workspaces/BigLog.txt
curl -Lo dotnet.tar.gz https://download.visualstudio.microsoft.com/download/pr/85bcc525-4e9c-471e-9c1d-96259aa1a315/930833ef34f66fe9ee2643b0ba21621a/dotnet-sdk-8.0.201-linux-x64.tar.gz

printf "tar command\n" >> /workspaces/BigLog.txt
tar -C dotnet -xf dotnet.tar.gz

printf "remove file\n" >> /workspaces/BigLog.txt
rm dotnet.tar.gz

printf "End of Script File" >> /workspaces/BigLog.txt
