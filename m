Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3789E10C46E
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Nov 2019 08:45:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A2E887857;
	Thu, 28 Nov 2019 07:45:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jlQGyZFRrG3b; Thu, 28 Nov 2019 07:45:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87C6B877BB;
	Thu, 28 Nov 2019 07:45:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 006CC1BF8B4
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 07:45:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F0CB1877BB
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 07:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wXWm17Xf56lT for <devel@linuxdriverproject.org>;
 Thu, 28 Nov 2019 07:45:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1622387789
 for <devel@driverdev.osuosl.org>; Thu, 28 Nov 2019 07:45:27 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAS7jMFU011581;
 Thu, 28 Nov 2019 07:45:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=OdpF9tLxLFKM7EnkRAYagcdyDm+kWt6AXF8o3UG4bMk=;
 b=HRyajfzZSaedBpO9gCM8SyuLLeUKiQaJk00s0eoc8hVckt3gaA1AV+q/ZJ6FVwyQ/W0o
 7F/iR7RmlNP/u0pnPjcm73b2QO3/CQdeSNw5JH1VklUlMCEwnPYN0f4k7Bm9ux746Z44
 b32LFfmdGVwYUh0G4S1awoYDG4Q2JEyxVFDtw8k5P7dCL8lxpIRKWi9pgyKlwlQMZT6+
 PSLFYkzNYatwp2pOyMHYJ7Xsil0Mwp2ObSl49eNFpRrjqnPHVrDWuL0jwAPfmTteCZvd
 szy5CxlWFNGkCcYyqv10C6Mw6BzqP9R+gyuYZXWx6bivGNv65Xmk6JqUT0a6PkJ8qCdy 9Q== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2wevqqhxn9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 Nov 2019 07:45:22 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAS7jAWt049678;
 Thu, 28 Nov 2019 07:45:21 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2why49m30r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 Nov 2019 07:45:21 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xAS7jEpZ028073;
 Thu, 28 Nov 2019 07:45:15 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 27 Nov 2019 23:45:14 -0800
Date: Thu, 28 Nov 2019 10:45:05 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: shubhrajyoti.datta@gmail.com
Subject: Re: [PATCH v3 08/10] clk: clock-wizard: Make the output names unique
Message-ID: <20191128074505.GC1781@kadam>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <d9277db2692bb77a41dfed927cfb791bdcced17d.1574922435.git.shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d9277db2692bb77a41dfed927cfb791bdcced17d.1574922435.git.shubhrajyoti.datta@xilinx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9454
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911280065
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9454
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911280065
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 mturquette@baylibre.com, Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 soren.brinkmann@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 28, 2019 at 12:06:15PM +0530, shubhrajyoti.datta@gmail.com wrote:
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> Incase there are more than one instance of the clocking wizard.
> And if the output name given is the same then the probe fails.
> Fix the same by appending the device name to the output name to
> make it unique.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---
>  drivers/clk/clk-xlnx-clock-wizard.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
> index 75ea745..9993543 100644
> --- a/drivers/clk/clk-xlnx-clock-wizard.c
> +++ b/drivers/clk/clk-xlnx-clock-wizard.c
> @@ -555,6 +555,9 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>  		ret = -ENOMEM;
>  		goto err_disable_clk;
>  	}
> +	outputs = of_property_count_strings(np, "clock-output-names");
> +	if (outputs == 1)
> +		flags = CLK_SET_RATE_PARENT;
>  	clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor
>  			(&pdev->dev, clk_name,
>  			 __clk_get_name(clk_wzrd->clk_in1),
> @@ -566,9 +569,6 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>  		goto err_disable_clk;
>  	}
>  
> -	outputs = of_property_count_strings(np, "clock-output-names");
> -	if (outputs == 1)
> -		flags = CLK_SET_RATE_PARENT;
>  	clk_name = kasprintf(GFP_KERNEL, "%s_mul_div", dev_name(&pdev->dev));
>  	if (!clk_name) {
>  		ret = -ENOMEM;
> @@ -591,6 +591,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>  	/* register div per output */
>  	for (i = outputs - 1; i >= 0 ; i--) {
>  		const char *clkout_name;
> +		const char *clkout_name_wiz;
>  
>  		if (of_property_read_string_index(np, "clock-output-names", i,
>  						  &clkout_name)) {
> @@ -599,9 +600,11 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>  			ret = -EINVAL;
>  			goto err_rm_int_clks;
>  		}
> +		clkout_name_wiz = kasprintf(GFP_KERNEL, "%s_%s",
> +					    dev_name(&pdev->dev), clkout_name);

If this kasprintf() crashes then clk_wzrd_register_divf() will fail.
But that was a headache to review.  Just add a check for NULL.  We need
a kfree() as well.

One alternative would be to just declare a buffer on the stack and use
snprintf().  We don't need to keep the name around after the call to
clk_wzrd_register_divf().

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
