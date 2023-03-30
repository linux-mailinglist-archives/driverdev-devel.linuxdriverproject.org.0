Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9036D0558
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Mar 2023 14:53:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35AE060AB7;
	Thu, 30 Mar 2023 12:53:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35AE060AB7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8WdAenemFuKH; Thu, 30 Mar 2023 12:53:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0426460A7A;
	Thu, 30 Mar 2023 12:53:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0426460A7A
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 051FC1BF39F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:53:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D2BEE60BDB
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:53:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2BEE60BDB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hqurnexAtq0U
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:53:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF03F60A61
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AF03F60A61
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:53:17 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0584660C4E;
 Thu, 30 Mar 2023 12:53:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07A82C433D2;
 Thu, 30 Mar 2023 12:53:15 +0000 (UTC)
Date: Thu, 30 Mar 2023 14:53:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Joel Camilo Chang Gonzalez <jcchangg3@gmail.com>
Subject: Re: [PATCH] staging: ks7010: remove unnecessary parentheses
Message-ID: <ZCWGOZqdH1kWtOEq@kroah.com>
References: <ZCWFHFogxD+O9N51@joel-ubuntu-desktop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCWFHFogxD+O9N51@joel-ubuntu-desktop>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1680180796;
 bh=8qLMey7kTMh7dd1/XYcwvnGwz0i7C9tIuc0XxBH8KfU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZT2HO1VWFd3Hjn1k63iLvOMXx+WRMNxySdHOa7mDIvrY47i7M2KZyaRwWBk4l4TVL
 IFdBwlx/r2/OJ6LCYTuqdS42VaDW/t+Q1XI9v0D9BJA2n1oqc0mcbsGM0FdLGhMTmT
 nxVdnzcNTGDWzgEQ7NOyvwQqdKq/KtravszbGktk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=ZT2HO1VW
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
Cc: linux-staging@lists.linux.dev, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 30, 2023 at 08:48:28PM +0800, Joel Camilo Chang Gonzalez wrote:
> Remove redundant parentheses
> 
> Signed-off-by: Joel Camilo Chang Gonzalez <jcchangg3@gmail.com>
> ---
>  drivers/staging/ks7010/ks_wlan_net.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
> index e03c87f0bfe7..eef1a1e70088 100644
> --- a/drivers/staging/ks7010/ks_wlan_net.c
> +++ b/drivers/staging/ks7010/ks_wlan_net.c
> @@ -193,14 +193,14 @@ static int ks_wlan_set_freq(struct net_device *dev,
>  		fwrq->freq.m = c + 1;
>  	}
>  	/* Setting by channel number */
> -	if ((fwrq->freq.m > 1000) || (fwrq->freq.e > 0))
> +	if (fwrq->freq.m > 1000 || fwrq->freq.e > 0)

Do you want to have to remember the precidence order between "||" and
">"?  I don't, so please don't make this change.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
