Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C5022C752
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 16:07:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06CB8854C9;
	Fri, 24 Jul 2020 14:07:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WyKZHodlE05M; Fri, 24 Jul 2020 14:07:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA4BA85683;
	Fri, 24 Jul 2020 14:07:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9CC491BF853
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 14:07:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 99A378852D
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 14:07:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PLZq8FxyKCwK for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 14:07:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4D1D388504
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 14:07:37 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06OE7PaG003940;
 Fri, 24 Jul 2020 14:07:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=CW4YUZcfLNTwU0sxRcEBTffpXS+KRbS3dRlEucgSZ5w=;
 b=jehS3/VkimbbVsSd5/u2rFguumG5l9UlNWO2FgmDQE4GdPunZzx9CUG1bz/sM2yzXXOW
 cCdIoJ/chD5Eyimj8bavdruvQiEQPFNKTKMsq4xWdw8OZOhOIN+HPxUFXxsKmxnrTI9z
 nyiqlikpgVD0yjnHGkvDf2No7mkIAE0tgtzaNeSCQRAAhG+kzPSSiZAACCNmgTHvCDIY
 ieSXZOVKnoMnMAJKOnjUxgsdaGh+lzCk2xOTk8LPJCiD+pD3/c9aYGf5UX8lJWcICKSk
 +wiUivKMMtXjyCR3mB9f4iL3FbFjw/fPRFgP7HsfuXnQQN2HA5/BoCOIisFW7ENY9sQb 7g== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 32bs1my9j6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 Jul 2020 14:07:35 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06OE3CBW073180;
 Fri, 24 Jul 2020 14:07:34 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 32g0s2hkny-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Jul 2020 14:07:33 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 06OE7W3x020210;
 Fri, 24 Jul 2020 14:07:32 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 24 Jul 2020 07:07:31 -0700
Date: Fri, 24 Jul 2020 17:07:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Subject: Re: [PATCH] change slave occurence to secondary everywhere
Message-ID: <20200724140725.GV2549@kadam>
References: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9691
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=999 mlxscore=0
 spamscore=0 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007240108
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9691
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 bulkscore=0 adultscore=0
 lowpriorityscore=0 mlxlogscore=999 malwarescore=0 clxscore=1015
 spamscore=0 mlxscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007240108
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, marvin24@gmx.de,
 p.zabel@pengutronix.de, linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The patch prefix isn't right.

On Thu, Jul 23, 2020 at 08:45:13PM +0530, Rohit K Bharadwaj wrote:
> changed usage of slave (deprecated) to secondary
> 
> Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
> ---
>  drivers/staging/nvec/nvec.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> index 360ec0407740..5d7b66719a39 100644
> --- a/drivers/staging/nvec/nvec.c
> +++ b/drivers/staging/nvec/nvec.c
> @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
>  	return IRQ_HANDLED;
>  }
>  
> -static void tegra_init_i2c_slave(struct nvec_chip *nvec)
> +static void tegra_init_i2c_secondary(struct nvec_chip *nvec)
>  {
>  	u32 val;
>  
> @@ -744,7 +744,7 @@ static void tegra_init_i2c_slave(struct nvec_chip *nvec)
>  }
>  
>  #ifdef CONFIG_PM_SLEEP
> -static void nvec_disable_i2c_slave(struct nvec_chip *nvec)
> +static void nvec_disable_i2c_secondary(struct nvec_chip *nvec)
>  {
>  	disable_irq(nvec->irq);
>  	writel(I2C_SL_NEWSL | I2C_SL_NACK, nvec->base + I2C_SL_CNFG);
> @@ -784,7 +784,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
>  	platform_set_drvdata(pdev, nvec);
>  	nvec->dev = dev;
>  
> -	if (of_property_read_u32(dev->of_node, "slave-addr", &nvec->i2c_addr)) {
> +	if (of_property_read_u32(dev->of_node, "secondary-addr", &nvec->i2c_addr)) {

Be careful not to break the driver.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
