Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD1A35285F
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Apr 2021 11:17:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C39984C68;
	Fri,  2 Apr 2021 09:17:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TF7ZGYUk1_-f; Fri,  2 Apr 2021 09:17:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CEA684BC4;
	Fri,  2 Apr 2021 09:17:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D3A91BF309
 for <devel@linuxdriverproject.org>; Fri,  2 Apr 2021 09:17:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D53B84BC4
 for <devel@linuxdriverproject.org>; Fri,  2 Apr 2021 09:17:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OACXNjvsar2S for <devel@linuxdriverproject.org>;
 Fri,  2 Apr 2021 09:17:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0A0984BC1
 for <devel@driverdev.osuosl.org>; Fri,  2 Apr 2021 09:17:39 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 577A861008;
 Fri,  2 Apr 2021 09:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1617355057;
 bh=nNXmKyTHRFu5FEX84hqP3eIGOZ1pmAYpxndQn7fgYQ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1bVRMjgYnmVMwuln9bkOhNMTJOytmbdU1QgJ5Dtjpb2LfVD+hbNtkvBbBZw8IA7w3
 M/xh4gd+1KECR2HoShaNrE8pvZHCJ1wIkkdioSG/TrpGKy2E6tLztD7laPSepvqlaq
 XqclZkejDnGUS8hOPj7hLv9X/OQIboeIhOwxWN18=
Date: Fri, 2 Apr 2021 11:17:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Carlis <zhangxuezhi3@gmail.com>
Subject: Re: [PATCH] staging: fbtft: change snprintf() to scnprintf()
Message-ID: <YGbhLxwZO9k/330J@kroah.com>
References: <20210402090501.152561-1-zhangxuezhi3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210402090501.152561-1-zhangxuezhi3@gmail.com>
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
Cc: devel@driverdev.osuosl.org, zhangxuezhi1@yulong.com,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Apr 02, 2021 at 09:05:01AM +0000, Carlis wrote:
> From: Xuezhi Zhang <zhangxuezhi1@yulong.com>
> 
> show() must not use snprintf() when formatting the value to
> be returned to user space.

Why not?  The code is just fine as-is.

> 
> Signed-off-by: Xuezhi Zhang <zhangxuezhi1@yulong.com>
> ---
>  drivers/staging/fbtft/fbtft-sysfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
> index 26e52cc2de64..7df92db648d6 100644
> --- a/drivers/staging/fbtft/fbtft-sysfs.c
> +++ b/drivers/staging/fbtft/fbtft-sysfs.c
> @@ -199,7 +199,7 @@ static ssize_t show_debug(struct device *device,
>  	struct fb_info *fb_info = dev_get_drvdata(device);
>  	struct fbtft_par *par = fb_info->par;
>  
> -	return snprintf(buf, PAGE_SIZE, "%lu\n", par->debug);
> +	return scnprintf(buf, PAGE_SIZE, "%lu\n", par->debug);

If you really want to "fix" this, please just use sysfs_emit().  This
change as-is, does nothing.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
