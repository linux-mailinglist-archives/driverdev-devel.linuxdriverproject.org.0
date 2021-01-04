Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148412E9D0C
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Jan 2021 19:32:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E7D4786D92;
	Mon,  4 Jan 2021 18:32:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id smnK7Ku0AVMG; Mon,  4 Jan 2021 18:32:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E72DB8693C;
	Mon,  4 Jan 2021 18:32:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 81FD81BF3A7
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 18:32:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 72F1320485
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 18:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r0Ifo+3hTAvY for <devel@linuxdriverproject.org>;
 Mon,  4 Jan 2021 18:32:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 2512A2047A
 for <devel@driverdev.osuosl.org>; Mon,  4 Jan 2021 18:32:00 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 104IP40J091150;
 Mon, 4 Jan 2021 18:31:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=j7wrXXfTWvb/vcEaKzZG1GxLgg27D7M9T8jXvFJETlU=;
 b=gSvLwbI0DklVr5TXE57mfhkJjbNLhXcRwNCB0doH58UFVsUQoHafndGp+OYPoUOVeW+5
 K2pTOIsR4hjynTSPIn+e9JFFnasuMoTJNE2F1sJTxYM8P5Cqjx/WIPyurfPapHBhwNH/
 OLLTrpOyaMIB0MLGuAMyM6ostY/IXXZspKZWU32NII8h6DuajqyM4pHtTm/xWCwwaNQs
 gjVdZCa7KZUTwacdxUfnlcEpGB0GHr8p/nFSr4LpKGzZVvjfis8a50xbbh+X13Yyjqfv
 Cv7VXdKikgjkYzo+Ere96Z/y2fX5vK2vbE9tOVmdtl/ud3dHR84yZejjHdu7CekRBVFI FQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 35tgsknke1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 04 Jan 2021 18:31:54 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 104IPWE2029694;
 Mon, 4 Jan 2021 18:31:53 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 35v2axha1t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 04 Jan 2021 18:31:53 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 104IVpeQ023945;
 Mon, 4 Jan 2021 18:31:51 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 04 Jan 2021 18:31:50 +0000
Date: Mon, 4 Jan 2021 21:31:34 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Fix bulk userdata handling
Message-ID: <20210104183134.GV2809@kadam>
References: <20210104120929.294063-1-phil@raspberrypi.com>
 <20210104120929.294063-2-phil@raspberrypi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210104120929.294063-2-phil@raspberrypi.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9854
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 phishscore=0
 suspectscore=0 spamscore=0 malwarescore=0 adultscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101040119
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9854
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 malwarescore=0
 phishscore=0 impostorscore=0 bulkscore=0 clxscore=1011 priorityscore=1501
 lowpriorityscore=0 adultscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101040119
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 04, 2021 at 12:09:27PM +0000, Phil Elwell wrote:
> The addition of the local 'userdata' pointer to
> vchiq_irq_queue_bulk_tx_rx omitted the case where neither BLOCKING nor
> WAITING modes are used, in which case the value provided by the
> caller is replaced with a NULL.
> 
> Fixes: 4184da4f316a ("staging: vchiq: fix __user annotations")
> 
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index f500a7043805..2a8883673ba1 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -958,7 +958,7 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
>  	struct vchiq_service *service;
>  	struct bulk_waiter_node *waiter = NULL;
>  	bool found = false;
> -	void *userdata = NULL;
> +	void *userdata;
>  	int status = 0;
>  	int ret;
>  
> @@ -997,6 +997,8 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
>  			"found bulk_waiter %pK for pid %d", waiter,
>  			current->pid);
>  		userdata = &waiter->bulk_waiter;
> +	} else {
> +		userdata = args->userdata;

"args->userdata" is marked as a user pointer so we really don't want to
mix user and kernel pointers here.  Presumably this opens up a large
security hole.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
