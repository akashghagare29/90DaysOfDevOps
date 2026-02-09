# 🐧 Day 08 – Cloud Server Setup: Docker, Nginx & Web Deployment

Today, we learned **deploy a real web server on the cloud** and learn practical server management.

### 🛠️ Setting Up the Cloud Server

1. **Choose a Cloud Provider**: We selected a cloud provider (like AWS, DigitalOcean, or Google Cloud) and created an account.
2. **Create a Virtual Machine (VM)**: We launched a new VM instance with our preferred operating system (e.g., Ubuntu).
3. **Access the VM**: We connected to our VM using SSH from our local terminal.

### 🐧 Commands Used ###

```bash
# Connect to the VM
ssh username@your_vm_ip_address
# Update package lists
sudo apt update
# Install Nginx
sudo apt install nginx -y
```
### Access web server

```bash
Hit IP in browser: http://18.222.213.90

# Step 1: View Nginx Logs
tail -n 5 /var/log/nginx/access.log

# Step 2: Save Logs to File
tail -n 5 /var/log/nginx/access.log > nginx_logs.txt

# Step 3: Download Log File to Your Local Machine
# For AWS:
scp -i your-key.pem ubuntu@<your-instance-ip>:~/nginx-logs.txt .

# For Utho:
scp root@<your-instance-ip>:~/nginx-logs.txt .
```
