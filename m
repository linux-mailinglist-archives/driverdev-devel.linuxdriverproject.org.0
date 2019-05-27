Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BE92AF93
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 May 2019 09:53:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A535224B99;
	Mon, 27 May 2019 07:53:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XKMyIPtAQoQf; Mon, 27 May 2019 07:53:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4870E228B4;
	Mon, 27 May 2019 07:53:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53D4C1BF951
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 07:53:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4F97D86365
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 07:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2et33+JE8Bu6 for <devel@linuxdriverproject.org>;
 Mon, 27 May 2019 07:53:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3F4B184D8E
 for <devel@driverdev.osuosl.org>; Mon, 27 May 2019 07:53:07 +0000 (UTC)
Received: from localhost (unknown [84.241.203.246])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 429E021726;
 Mon, 27 May 2019 07:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558943587;
 bh=CGmjzcWKgrZ6IkxcnHtGaWfIu82CPDqb95D7jTXFwbc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0Z9ByR+nz7ezn5KnOZOwHu4PBOJd5KyJAkL2+0suOmgDObs1JwRDxdUZlubuWsGoa
 vFnFzrf6ms/0uYsVJLH6f/xao9FybokmvUhdcOgzqZIEfsIu/2VwKJDkdfy9u/+oQm
 5toNauxl3Kc2vjU+/Fk4JmalvTxpstcXUc/O/lHE=
Date: Mon, 27 May 2019 09:53:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Yacov Simhony <ysimhony@gmail.com>
Subject: Re: [PATCH] emxx_udc : Fix #if 0 coding style warning
Message-ID: <20190527075303.GA21124@kroah.com>
References: <20190526201035.GA13466@yacov-PR601-VR603>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190526201035.GA13466@yacov-PR601-VR603>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 26, 2019 at 11:10:55PM +0300, Yacov Simhony wrote:
> This patch fixes the checkpathc.pl warning:
> WARNING: Consider removing the code enclosed by this #if 0 and its #endif
> 
> Signed-off-by: Yacov Simhony <ysimhony@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.h | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> index b8c3dee..985a1fb 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -10,10 +10,8 @@
>  
>  /*---------------------------------------------------------------------------*/
>  /*----------------- Default undef */
> -#if 0
> -#define DEBUG
> -#define UDC_DEBUG_DUMP
> -#endif
> +//#define DEBUG
> +//#define UDC_DEBUG_DUMP

Why not remove any code that depends on this and then these lines?
these are usually only needed while development of the driver happens,
no user is ever going to rebuild the driver with these flags set.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
