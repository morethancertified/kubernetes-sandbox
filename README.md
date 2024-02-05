# kubernetes-sandbox
A Terraform deployment for an EC2 instance with Minikube installed that outputs the connection script to VS Code for an automagic Kubernetes Sandbox. 

**Based on the FREE Build a Dev Environment with AWS and Terraform course:**  
**More than Certified Website:** https://courses.morethancertified.com/p/rfp-terraform  
**YouTube Playlist:** https://www.youtube.com/watch?v=wZoEpn6DwmY&list=PL5_Rrj9tYQAlgX9bTzlTN0WzU67ZeoSi_  

**Azure Version (K8s Sandbox TODO):**   
**More than Certified Website:** https://courses.morethancertified.com/p/rfp-terraform-azure  
**YouTube:** https://www.youtube.com/watch?v=FiS0s5z7eYk&list=PL5_Rrj9tYQAmBTVMPcwlP4j0TZqWvscYA  

Feel free to use this for any of your own public projects, blogs, or videos. If you've found it helpful, it would mean the world to me if you tagged me:  

**LinkedIn:** https://linkedin.com/in/derekm1215  
**X**: https://x.com/mtcderek  
**Website**: https://morethancertified.com  
**YouTube**: https://youtube.com/morethancertified  

### Use at your own risk! Like any code from the internet, running this can break things or cost money. If you aren't familiar with AWS and Terraform, this probably isn't for you.  
### I AM NOT RESPONSIBLE IF YOU BREAK STUFF!   

## Instructions  
1. Clone the code to your terminal running VS Code.  
2. Create an ssh key: `ssh-keygen -t rsa`  
3. Install the Remote-SSH extension in VS Code: https://code.visualstudio.com/docs/remote/ssh   
4. Modify the `terraform.tfvars` file with your values. Minikube will run best with a t3.medium or higher EC2 instance with at least 20Gib of storage. **This will cost money!**  
5. *Optional* Modify the `userdata.tpl` script to provide any custom userdata to your instance.   
6. `terraform init`  
7. `terraform plan`  
8. `terraform apply`  
9. Use `CTRL+P` in VS Code, search for the `Remote-SSH` extension, and then choose the IP address output from the Terraform script.  
10. Follow the prompts to open a new VS Code window that will connect to your instance and provide your very own K8s Sandbox.  
11. `terraform destroy` to destroy your infrastructure when you're finished.  

## FAQ  
**Q: You're a Terraform expert; why didn't you use modules?**  
A: This is supposed to be free and easy to manage for newcomers. I don't have time to overengineer this incredibly simple deployment.   
**Q: Can I contribute?**  
A: Feel free to open a pull request or an issue.   
**Q: Why did you reject my PR for my suggestion to modularize, add a complicated function, etc.?**  
A: This is supposed to be a pragmatic and easy-to-read deployment. Please don't make complicated suggestions just to show how smart you are. If something is broken, please suggest a fix!  



