Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3A369BC1
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 21:55:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5E2B87BB6;
	Mon, 15 Jul 2019 19:55:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gtCpN7rITr6j; Mon, 15 Jul 2019 19:55:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2304887A4F;
	Mon, 15 Jul 2019 19:55:54 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B9AE1BF393
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:55:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 54F738682A
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hTKNH0X2hrk6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:55:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DFA3A86812
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:55:50 +0000 (UTC)
Received: from localhost (unknown [88.128.80.139])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65B5420659;
 Mon, 15 Jul 2019 19:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563220550;
 bh=z/Y1fMTUnxpvdkYC/MCbWhNjuFAEkRbaAEVXsAy2RwM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RlA28QydtXZIn5rlH0GcyttXOpb3RALwlUgCTWYkIiZLMCogrfyHdMXu9B6HGZkML
 JpI8GHfUWPjhU6LTkk9iIuiUV00m6yKwsAZuOWyrEL0NhViq//KWKz6gzFWtjZyeY5
 kZfFX5TA6ukvu+UDa+6Yd00hWy2N74A7ZFx16SCc=
Date: Mon, 15 Jul 2019 21:41:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: christianluciano.m@gmail.com
Subject: Re: [PATCH] staging: rtl8712: Fix Alignment CHECK
Message-ID: <20190715194124.GC26092@kroah.com>
References: <20190713214720.11683-1-christianluciano.m@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190713214720.11683-1-christianluciano.m@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 13, 2019 at 06:47:20PM -0300, christianluciano.m@gmail.com wrote:
> From: Christian Luciano Moreno <christianluciano.m@gmail.com>
> 
> Fix alignment check reported by checkpatch.
> 
> Signed-off-by: Christian Luciano Moreno <christianluciano.m@gmail.com>
> ---
>  drivers/staging/rtl8712/recv_linux.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
> index 4e20cbafa9fb..97c980a039bd 100644
> --- a/drivers/staging/rtl8712/recv_linux.c
> +++ b/drivers/staging/rtl8712/recv_linux.c
> @@ -61,7 +61,7 @@ int r8712_os_recvbuf_resource_alloc(struct _adapter *padapter,
>  
>  /*free os related resource in struct recv_buf*/
>  int r8712_os_recvbuf_resource_free(struct _adapter *padapter,
> -			     struct recv_buf *precvbuf)
> +				   struct recv_buf *precvbuf)
>  {
>  	if (precvbuf->pskb)
>  		dev_kfree_skb_any(precvbuf->pskb);
> -- 
> 2.22.0

As my patch-bot said, you need to send all of these as a patch series,
properly numbered, so I have a chance to apply them in the correct
order.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
