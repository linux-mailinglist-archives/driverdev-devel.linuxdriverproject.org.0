Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0671B0674
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 12:21:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3372F85C37;
	Mon, 20 Apr 2020 10:21:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HhF6rd8W4PhP; Mon, 20 Apr 2020 10:21:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EA1F85785;
	Mon, 20 Apr 2020 10:21:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0A3621BF407
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 10:21:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 032B1204FE
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 10:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9uDoc7iS89Ir for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 10:21:49 +0000 (UTC)
X-Greylist: delayed 00:06:34 by SQLgrey-1.7.6
Received: from smtp110.ord1c.emailsrvr.com (smtp110.ord1c.emailsrvr.com
 [108.166.43.110])
 by silver.osuosl.org (Postfix) with ESMTPS id 8C85C20015
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 10:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1587377714;
 bh=KE+p7nNz2ulsXQ37ZSxFILCnrC3V3T2DkQkwLsftGEs=;
 h=Subject:To:From:Date:From;
 b=CvDuyE0Z+g2G9s2Gni0Wv0vFUbJGSIBmFLj4U6Dp1bZZrfPV165Lcp6o3VzQujoQX
 psPfQJMNvi+dXEictMOYRYeN3WaOK68D3ptwDeVrSSyFwCxri+rpOENnlyYalgMtxd
 qO8/z8J01IRpQmZZPTyk+jBmz17ooMiC62XvroDw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1587377714;
 bh=KE+p7nNz2ulsXQ37ZSxFILCnrC3V3T2DkQkwLsftGEs=;
 h=Subject:To:From:Date:From;
 b=YD6ZZr+NVivTfMnXYy3qJaA8bX2C1qNXKS5LQhJL3LKkAR9M1R4vJu5gddOmUd1i3
 /7c6zO2TaFOlQFzotuOnp9HXh5dqW0mmhDlaNrpKJ/lZ0FaihDzerJAE+PbNNzHxNX
 ijF9WO6p1KpErJpm5uaN0AUvCrEOFpPrN1QH6OgU=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp6.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 96E37A0109; 
 Mon, 20 Apr 2020 06:15:13 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
 by 0.0.0.0:465 (trex/5.7.12); Mon, 20 Apr 2020 06:15:14 -0400
Subject: Re: [PATCH] staging: comedi: Fix comedi_device refcnt leak in
 comedi_open
To: Xiyu Yang <xiyuyang19@fudan.edu.cn>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Xin Tan <tanxin.ctf@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <1587361459-83622-1-git-send-email-xiyuyang19@fudan.edu.cn>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <a5988c23-e552-b787-feb0-2d1bda8f1668@mev.co.uk>
Date: Mon, 20 Apr 2020 11:15:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1587361459-83622-1-git-send-email-xiyuyang19@fudan.edu.cn>
Content-Language: en-GB
X-Classification-ID: 061321d8-5d6b-4c3f-b7bb-fc78540ae002-1-1
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
Cc: yuanxzhang@fudan.edu.cn, kjlu@umn.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 20/04/2020 06:44, Xiyu Yang wrote:
> comedi_open() invokes comedi_dev_get_from_minor(), which returns a
> reference of the COMEDI device to "dev" with increased refcount.
> 
> When comedi_open() returns, "dev" becomes invalid, so the refcount
> should be decreased to keep refcount balanced.
> 
> The reference counting issue happens in one exception handling path of
> comedi_open(). When "cfp" allocation is failed, the refcnt increased by
> comedi_dev_get_from_minor() is not decreased, causing a refcnt leak.
> 
> Fix this issue by calling comedi_dev_put() on this error path when "cfp"
> allocation is failed.
> 
> Fixes: 20f083c07565 ("staging: comedi: prepare support for per-file read
> and write subdevices")
> Signed-off-by: Xiyu Yang <xiyuyang19@fudan.edu.cn>
> Signed-off-by: Xin Tan <tanxin.ctf@gmail.com>
> ---
>   drivers/staging/comedi/comedi_fops.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> index 08d1bbbebf2d..e84b4fb493d6 100644
> --- a/drivers/staging/comedi/comedi_fops.c
> +++ b/drivers/staging/comedi/comedi_fops.c
> @@ -2725,8 +2725,10 @@ static int comedi_open(struct inode *inode, struct file *file)
>   	}
>   
>   	cfp = kzalloc(sizeof(*cfp), GFP_KERNEL);
> -	if (!cfp)
> +	if (!cfp) {
> +		comedi_dev_put(dev);
>   		return -ENOMEM;
> +	}
>   
>   	cfp->dev = dev;
>   
> 

Thanks for spotting that!

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
