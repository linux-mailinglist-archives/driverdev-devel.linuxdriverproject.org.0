Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8B274881
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 09:55:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9CAC86D89;
	Thu, 25 Jul 2019 07:55:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NpHtfdpq-lfI; Thu, 25 Jul 2019 07:55:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E84886D67;
	Thu, 25 Jul 2019 07:55:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1A5831BF4D6
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 07:55:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 16F918659B
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 07:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8U6gzBQvCVWC for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 07:55:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9E49A863E0
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 07:55:06 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 031F5217F4;
 Thu, 25 Jul 2019 07:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564041306;
 bh=+tV5n5sf9wkieKz1ys/rYJZbU4avHfRqWAEuAygUAsY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vEWb+a0imLFCZ742kKF0nm457xfdd0Y/iYu3AqTmEO9s5mdB808vWdCtpKr6TQQiT
 5KJk9UGRUHLmuJNJk3wajuP0T5+voMa2iCRF612G27T1cv/teMYXUIX4Bveu5hATau
 euCAs+Mk6pOarNlfHG2u2b7/pP6+StS2+hy9HWUM=
Date: Thu, 25 Jul 2019 09:55:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCH] staging: rtl8723bs: Disable procfs debugging by default
Message-ID: <20190725075503.GA16693@kroah.com>
References: <20190718092522.17748-1-kai.heng.feng@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718092522.17748-1-kai.heng.feng@canonical.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 18, 2019 at 05:25:22PM +0800, Kai-Heng Feng wrote:
> The procfs provides many useful information for debugging, but it may be
> too much for normal usage, routines like proc_get_sec_info() reports
> various security related information.
> 
> So disable it by defaultl.
> 
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>  drivers/staging/rtl8723bs/include/autoconf.h | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/include/autoconf.h b/drivers/staging/rtl8723bs/include/autoconf.h
> index 196aca3aed7b..8f4c1e734473 100644
> --- a/drivers/staging/rtl8723bs/include/autoconf.h
> +++ b/drivers/staging/rtl8723bs/include/autoconf.h
> @@ -57,9 +57,5 @@
>  #define DBG	0	/*  for ODM & BTCOEX debug */
>  #endif /*  !DEBUG */
>  
> -#ifdef CONFIG_PROC_FS
> -#define PROC_DEBUG
> -#endif

What?  Why?  If you are going to do this, then rip out all of the code
as well.

And are you _sure_ you want to do this?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
