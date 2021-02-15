Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4122A31B5F7
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Feb 2021 09:44:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A5E186899;
	Mon, 15 Feb 2021 08:44:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZrdnStEjTnUR; Mon, 15 Feb 2021 08:44:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C278186887;
	Mon, 15 Feb 2021 08:44:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 986011BF3A1
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 08:44:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 94E5C848C2
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 08:44:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PDwX3701q4bK for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 08:44:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3768F848A9
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 08:44:27 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1613378665; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7p0ZgJ7y6ZYSp40cSR2HClicIs9V9AmTmeD/P0zrzfM=;
 b=jR+Ajl9qThbiHeigkerXV0mkqJhMebC+WU2WKgJwC+evDZjAkMvChSzoKIJTaZd1NNOzBm
 e055hpfXlrJirRBuSzYrMeJvD0SOeSNpaI4DPTAfe6l+UNcpINMj7gDQ0SzsxV1H6Uf7lb
 SeZrlXHJmXen2taNgw8BLT2CjlyeqpI=
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id E0FC3AD78;
 Mon, 15 Feb 2021 08:44:24 +0000 (UTC)
Date: Mon, 15 Feb 2021 09:44:24 +0100
From: Michal Hocko <mhocko@suse.com>
To: Ivan Safonov <insafonov@gmail.com>
Subject: Re: [PATCH] staging:wlan-ng: use memdup_user instead of
 kmalloc/copy_from_user
Message-ID: <YCo0aAMajx0AG7JM@dhcp22.suse.cz>
References: <20210213120527.451531-1-insafonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210213120527.451531-1-insafonov@gmail.com>
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
 linux-kernel@vger.kernel.org, Johannes Weiner <hannes@cmpxchg.org>,
 Waiman Long <longman@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Allen Pais <apais@linux.microsoft.com>,
 Abheek Dhawan <adawesomeguy222@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat 13-02-21 15:05:28, Ivan Safonov wrote:
> memdup_user() is shorter and safer equivalent
> of kmalloc/copy_from_user pair.
> 
> Signed-off-by: Ivan Safonov <insafonov@gmail.com>
> ---
>  drivers/staging/wlan-ng/p80211netdev.c | 28 ++++++++++++--------------
>  1 file changed, 13 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
> index a15abb2c8f54..6f9666dc0277 100644
> --- a/drivers/staging/wlan-ng/p80211netdev.c
> +++ b/drivers/staging/wlan-ng/p80211netdev.c
> @@ -569,24 +569,22 @@ static int p80211knetdev_do_ioctl(struct net_device *dev,
>  		goto bail;
>  	}
>  
> -	/* Allocate a buf of size req->len */
> -	msgbuf = kmalloc(req->len, GFP_KERNEL);
> -	if (msgbuf) {
> -		if (copy_from_user(msgbuf, (void __user *)req->data, req->len))
> -			result = -EFAULT;
> -		else
> -			result = p80211req_dorequest(wlandev, msgbuf);
> +	msgbuf = memdup_user(req->data, req->len);

Move to memdup_user is definitely a right step. What is the range of
req->len though? If this can be larger than PAGE_SIZE then vmemdup_user
would be a better alternative.

-- 
Michal Hocko
SUSE Labs
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
