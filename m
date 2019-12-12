Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EDA11CC91
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 12:51:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3098B24B6B;
	Thu, 12 Dec 2019 11:51:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RexkWDwMtlQt; Thu, 12 Dec 2019 11:51:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0D7E624981;
	Thu, 12 Dec 2019 11:51:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1769F1BF3EC
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 11:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 13BCF8704A
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 11:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RkhOMSdDU4Me for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 11:51:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 85ACE86F88
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 11:51:50 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBCBk7d0092536;
 Thu, 12 Dec 2019 11:51:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=QYEt3ZHHvwyo7hQcDmCsE+2gnaQbCn7M898TjPIxqIY=;
 b=VxL13QJJ9Of4N03WEBOiXN7ilSvi6qi6PSIqU3S7oZ30BCKJzeXcjF+x7JwDl0a8+Ycc
 O7ZrrIzcCA4TBPFXa1fJpuDVUPtkHwCLVKDe55yi93nrYYf1t4/SS3+TdDBzURQ7Q1Mn
 gpsu0BL1YSMUCjPPLnLDuauwG1/PFXgEsOzo821C6qDPij+YrHGsBIq5H3I8XZcVFTaV
 t6sHGaU/syEJVTXAXRo5NpETL4woyC7vxMd76uzIYK8AezMPk1LdzvmQITAa5097xgzN
 Sik1lO6nz7wmtcd4D//EFSgE3jCvQDS2sC4MRjwbxVlz5YHDbhCL3XcuZWnOvnELZAIi bw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2wr4qrte1k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Dec 2019 11:51:49 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBCBnDlu054722;
 Thu, 12 Dec 2019 11:51:49 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2wums91y16-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Dec 2019 11:51:48 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xBCBpiHo024067;
 Thu, 12 Dec 2019 11:51:44 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 12 Dec 2019 03:51:43 -0800
Date: Thu, 12 Dec 2019 14:51:34 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] media: imx7-mipi-csis: Add the missed
 v4l2_async_notifier_cleanup in remove
Message-ID: <20191212115134.GA1895@kadam>
References: <20191209085828.16183-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209085828.16183-1-hslester96@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9468
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912120089
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9468
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912120089
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
Cc: devel@driverdev.osuosl.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 09, 2019 at 04:58:28PM +0800, Chuhong Yuan wrote:
> All drivers in imx call v4l2_async_notifier_cleanup() after unregistering
> the notifier except this driver.
> This should be a miss and we need to add the call to fix it.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
>  drivers/staging/media/imx/imx7-mipi-csis.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 99166afca071..2bfa85bb84e7 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -1105,6 +1105,7 @@ static int mipi_csis_remove(struct platform_device *pdev)
>  	mipi_csis_debugfs_exit(state);
>  	v4l2_async_unregister_subdev(&state->mipi_sd);
>  	v4l2_async_notifier_unregister(&state->subdev_notifier);
> +	v4l2_async_notifier_cleanup(&state->subdev_notifier);
>  

In this case the "state->subdev_notifier" was never initialized or used
so both v4l2_async_notifier_unregister() and v4l2_async_notifier_cleanup()
are no-ops.

We should just delete "subdev_notifier".

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
