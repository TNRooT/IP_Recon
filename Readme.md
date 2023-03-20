### Automated Ethical Penetration Testing Script for Multiple IP Addresses 
#### Automates the process of scanning a list of IP addresses for vulnerabilities and security issues by running a set of selected tools on each IP address.


![/banner.png](https://github.com/TNRooT/IP_Recon/blob/master/Banner.png)
#### Key Features :

   - User-friendly: The script prompts the user to input the path to a file of IP addresses and provides clear feedback on the progress and results of the scans.
   - Customizable: The user can choose which tools to run for each IP address using command line options.
   - Automated: The script runs all the selected tools for each IP address automatically, saving time and effort.
   - Comprehensive: The script runs a TCP scan, UDP scan, ping sweep, vulnerability scanning, and brute force for each IP address, providing a comprehensive security assessment.
   - Organized: The results of each scan are saved in separate directories for each IP address, making it easy to review and analyze the results.

  

#### Usage instructions :

```
Note : Use python 3.7+
1-Download the script: Download the modified script to a directory of your choice.
2-Make the script executable: Open a terminal window, navigate to the directory where the script is saved, and run the command chmod +x <script_name> to make the script executable.
3-Run the script: To run the script, type ./pen-test.sh in the terminal window and press Enter.
4-Specify options: If you want to customize the tools that are run for each IP address, you can specify command line options when running the script. Available options are:

    -i : Only run the selected tools for the IP addresses specified in a file. If this option is not set or is set to false, the script will generate a list of IP addresses automatically.

    -t : Enable or disable TCP scanning. Valid options are true or false.

    -u : Enable or disable UDP scanning. Valid options are true or false.

    -p : Enable or disable ping sweeping. Valid options are true or false.

    -v : Enable or disable vulnerability scanning. Valid options are true or false.

    -b : Enable or disable brute force attacks. Valid options are true or false.
For example, to only run the selected tools for the IP addresses in a file called ips.txt, and disable TCP scanning and brute force attacks, you would run the command:
    '''
    $./pen-test.sh -i true -t false -b false
    '''
5-Follow the prompts: If you didn't specify a file of IP addresses, the script will prompt you to enter the path to a file of IP addresses. Follow the prompts to provide the necessary information.
6-Review the results: The results of each scan will be saved in separate directories for each IP address. Review the results to identify any vulnerabilities or security issues that need to be addressed.

```
#### Note :
```
Usage: $./pen-test.sh [-i true/false] [-t true/false] [-u true/false] [-p true/false] [-v true/false] [-b true/false]

Options:
  -i true/false: Only run the selected tools for the IP addresses specified in a file. Default is false.
  -t true/false: Enable or disable TCP scanning. Default is true.
  -u true/false: Enable or disable UDP scanning. Default is true.
  -p true/false: Enable or disable ping sweeping. Default is true.
  -v true/false: Enable or disable vulnerability scanning. Default is true.
  -b true/false: Enable or disable brute force attacks. Default is true.

```
  

#### Usage options :

```
    -i true/false: If set to true, the script will only run the selected tools for the IP addresses specified in a file. If set to false (default), the script will generate a list of IP addresses automatically.
    -t true/false: If set to true (default), the script will perform a TCP scan for each IP address. If set to false, this scan will be skipped.
    -u true/false: If set to true (default), the script will perform a UDP scan for each IP address. If set to false, this scan will be skipped.
    -p true/false: If set to true (default), the script will perform a ping sweep for each IP address. If set to false, this scan will be skipped.
    -v true/false: If set to true (default), the script will perform vulnerability scanning for each IP address. If set to false, this scan will be skipped.
    -b true/false: If set to true (default), the script will perform brute force attacks for each IP address. If set to false, this scan will be skipped.

```

#### My Twitter :


**Say hello** : [TNRooT](https://github.com/TNRooT)
                
            
#### My Youtube Channel :
**Say hello** : [TNRooT](https://youtube.com/@The_Ethical_TN)

