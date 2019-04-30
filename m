Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38423F3AE
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 12:08:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77E0187850;
	Tue, 30 Apr 2019 10:08:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fFgtriISyg+a; Tue, 30 Apr 2019 10:08:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12B5B85B3C;
	Tue, 30 Apr 2019 10:08:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E15CD1BF31F
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 10:08:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DE5C285DC0
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 10:08:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kwPozQklvdwc for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 10:08:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 42DC785DA5
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 10:08:05 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x3UA3aJt033304;
 Tue, 30 Apr 2019 10:08:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=dtQuBl11xaoPJLNvvxMye/1ZO950lVHHUMyKYmwkh1A=;
 b=SIAxZnZSCBpTf7tgn/j+IY5iaIyvYA8Lelb2DAMR012RT++g8W2T46OjEkO4vCURd6Uk
 AzNVWiq8dIy5VP6aF9iHfJ96WK0lUl4pxezIBS+v5U+mOLhbqMeWnNejMX/uHolLQAYX
 7jFgZ6cq7F3MLdW1pnvUxtr3+nwh9Ak6nHFfoUf7jIAgGshQUtwsxQdmii8KeD0lCCWl
 Y3xSHlvhxrfKMcPttqjSa6TMTZJ02uCGvXLshHTSudf4GsSVuDX2FBkWmK+Ada9c9BZV
 IlsoAx+ZIl/osFpLeG4EGhc4Hq6wAz8Cm0QnKrJNzbXOq1KBtf4KdoJkVoS4krscee0q Nw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2s5j5u08pf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 30 Apr 2019 10:08:02 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x3UA6fOE062168;
 Tue, 30 Apr 2019 10:08:01 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2s4d4ae54v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 30 Apr 2019 10:08:01 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x3UA7w5r017407;
 Tue, 30 Apr 2019 10:08:00 GMT
Received: from kadam (/196.97.65.153) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 30 Apr 2019 03:07:57 -0700
Date: Tue, 30 Apr 2019 13:07:50 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nicholas Mc Guire <hofrat@osadl.org>
Subject: Re: [PATCH RFC V2] staging: kpc2000: use int for
 wait_for_completion_interruptible
Message-ID: <20190430100750.GE2269@kadam>
References: <1556356474-8575-1-git-send-email-hofrat@osadl.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556356474-8575-1-git-send-email-hofrat@osadl.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9242
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1904300067
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9242
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1904300067
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
 Matt Sickler <Matt.Sickler@daktronics.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 27, 2019 at 11:14:34AM +0200, Nicholas Mc Guire wrote:
> weit_for_completion_interruptible returns in (0 on completion and 
   ^
  wait_for_completion_interruptible

> -ERESTARTSYS on interruption) - so use an int not long for API conformance
> and simplify the logic here a bit: need not check explicitly for == 0 as
> this is either -ERESTARTSYS or 0.
> 
> Signed-off-by: Nicholas Mc Guire <hofrat@osadl.org>
> ---
> 
> Problem located with experimental API conformance checking cocci script
> 
> V2: kbuild reported a missing closing comment - seems that I managed
>     send out the the initial version before compile testing/checkpatching
>     sorry for the noise.
> 
> Not sure if making such point-wise fixes makes much sense - this driver has
> a number of issues both style-wise and API compliance wise.
> 
> Note that kpc_dma_transfer() returns int not long - currently rv (long) is
> being returned in most places (some places do return int) - so the return
> handling here is a bit inconsistent.
> 
> Patch was compile-tested with: x86_64_defconfig + KPC2000=y, KPC2000_DMA=y
> (with a number of unrelated sparse warnings about non-declared symbols, and
>  smatch warnings about overflowing constants as well as coccicheck warning
>  about usless casting)
> 
> Patch is against 5.1-rc6 (localversion-next is next-20190426)
> 
>  drivers/staging/kpc2000/kpc_dma/fileops.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> index 5741d2b..66f0d5a 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -38,6 +38,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
>  {
>  	unsigned int i = 0;
>  	long rv = 0;
> +	int ret = 0;

This assignment is never used.  It just turns static checking for
uninitialized variable bugs.

>  	struct kpc_dma_device *ldev;
>  	struct aio_cb_data *acd;
>  	DECLARE_COMPLETION_ONSTACK(done);
> @@ -180,16 +181,17 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
>  	
>  	// If this is a synchronous kiocb, we need to put the calling process to sleep until the transfer is complete
>  	if (kcb == NULL || is_sync_kiocb(kcb)){
> -		rv = wait_for_completion_interruptible(&done);
> -		// If the user aborted (rv == -ERESTARTSYS), we're no longer responsible for cleaning up the acd
> -		if (rv == -ERESTARTSYS){
> +		ret = wait_for_completion_interruptible(&done);
> +		/* If the user aborted (ret == -ERESTARTSYS), we're
> +		 * no longer responsible for cleaning up the acd
> +		 */
> +		if (ret) {
>  			acd->cpl = NULL;
> -		}
> -		if (rv == 0){
> -			rv = acd->len;
> +		} else {
> +			ret = acd->len;

"acd->len" is a size_t (unsigned long) so probably we should just
change the type of kpc_dma_transfer to ssize_t actually.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
