Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A79316675
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 13:20:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8A036F60B
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 12:19:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3UJ5_lPLSwml for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 12:19:58 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 50E0B6F62D; Wed, 10 Feb 2021 12:19:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3FCFB6ED1C;
	Wed, 10 Feb 2021 12:19:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6202B1BF861
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 12:19:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5D56484456
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 12:19:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wes12srExQT4 for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 12:19:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C37638361A
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 12:19:28 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11ACFIJj117957;
 Wed, 10 Feb 2021 12:19:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=RSSYx5ZKyLwSH2WY20S360SzVHoate5hhIssdRM7i4w=;
 b=PePQVMmURpS+XLsy2yNWWMLPwxopuGErm8HDwg+7rysPqfu+Fc3eNsM8ba93ZfXUzTWT
 WOdg00F3KBIBf/arngjQ+PXREcvrC15p2xfBkJClXR8UhfqKO+CLCLQYiDmquMUjsura
 jNZkX+O8nQfmB49VMuvDch6E/irvkCBxe2s6HmS6SsEshzPpz2xerlNsq+5Y56VZNnMc
 2P//T/MIqf/Oy9y6x4qYPgKP5eVcheLS3hWAn56D+k9PrzYB5xkDVbPug0c/bO/HBNbe
 DszITgMQe2V0NAVJNpapEiGNrxQaXQD2CPCjACbJ6GBXGFbmH2y8GZeWcJzA00tx7YMN fg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 36m4upsnum-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Feb 2021 12:19:26 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11ACEg1c074049;
 Wed, 10 Feb 2021 12:19:24 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 36j4vsqyj9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Feb 2021 12:19:24 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11ACJNjJ008895;
 Wed, 10 Feb 2021 12:19:23 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 10 Feb 2021 04:19:22 -0800
Date: Wed, 10 Feb 2021 15:19:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Aakash Hemadri <aakashhemadri123@gmail.com>
Subject: Re: [PATCH] staging: ralink-gdma: Fix checkpatch.pl CHECK
Message-ID: <20210210121915.GX2696@kadam>
References: <20210210120348.262328-1-aakashhemadri123@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210120348.262328-1-aakashhemadri123@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9890
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0
 mlxlogscore=999 mlxscore=0 suspectscore=0 malwarescore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102100120
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9890
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 mlxscore=0
 mlxlogscore=999 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1011
 suspectscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102100120
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 05:33:48PM +0530, Aakash Hemadri wrote:
> Remove CHECK: Lines should not end with a '('
> 
> Signed-off-by: Aakash Hemadri <aakashhemadri123@gmail.com>
> ---
> 
>  drivers/staging/ralink-gdma/ralink-gdma.c | 28 ++++++++++++-----------
>  1 file changed, 15 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index 655df317d0ee..a11f915f3308 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -135,8 +135,7 @@ struct gdma_data {
>  	int (*start_transfer)(struct gdma_dmaengine_chan *chan);
>  };
> 
> -static struct gdma_dma_dev *gdma_dma_chan_get_dev(
> -	struct gdma_dmaengine_chan *chan)
> +static struct gdma_dma_dev *gdma_dma_chan_get_dev(struct gdma_dmaengine_chan *chan)
>  {
>  	return container_of(chan->vchan.chan.device, struct gdma_dma_dev,
>  		ddev);
> @@ -510,10 +509,11 @@ static void gdma_dma_issue_pending(struct dma_chan *c)
>  	spin_unlock_irqrestore(&chan->vchan.lock, flags);
>  }
> 
> -static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg(
> -		struct dma_chan *c, struct scatterlist *sgl,
> -		unsigned int sg_len, enum dma_transfer_direction direction,
> -		unsigned long flags, void *context)
> +static struct dma_async_tx_descriptor
> +	*gdma_dma_prep_slave_sg(struct dma_chan *c, struct scatterlist *sgl,

Don't do it like this...  The original code is better so, I guess, lets
leave it as is.  There are two accepted ways to start a function in the
kernel:

ONE:
static type
function_name(paramenters)

TWO
static type function_name(paramenters)

Either option will let you grep for the names of the functions:

	egrep "^[a-zA-Z]" dir/file.c | grep '('

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
