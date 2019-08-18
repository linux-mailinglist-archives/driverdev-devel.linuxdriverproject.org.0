Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7328A914D0
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 07:03:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76B45878A5;
	Sun, 18 Aug 2019 05:03:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NCLer2EJT20Y; Sun, 18 Aug 2019 05:03:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7275387816;
	Sun, 18 Aug 2019 05:03:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7FE521BF40B
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 05:03:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 79B36860D5
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 05:03:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LiiJcPq+f0my for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 05:03:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C3A7A85CA1
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 05:03:20 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C0F520B7C;
 Sun, 18 Aug 2019 05:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566104600;
 bh=ql9ej5FJ98q5w8xOOl3dVUrbb6fRmslfoh3dW60tJvM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=srxiX8TznxuoQK3RJBoVJvWWBfd5RaVgQCRAr1T/IbxkBOK/MlieyaurNgXK7Kl+x
 tGLuh7QLkppVTNFqNxvNzjA3Y12IBnmDRLMPzRGV8tDQoob4eL2EBcgn7xleIQVhwn
 FvknPx9MZ5yyiHzK1Q5mhEyZFwt8VgH5xROre4pc=
Date: Sun, 18 Aug 2019 07:03:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Donald Yandt <donald.yandt@gmail.com>
Subject: Re: [PATCH] staging: android: Remove ion device tree bindings from
 the TODO
Message-ID: <20190818050317.GA8147@kroah.com>
References: <20190817213758.5868-1-donald.yandt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817213758.5868-1-donald.yandt@gmail.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, linux-kernel@vger.kernel.org,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Aug 17, 2019 at 05:37:58PM -0400, Donald Yandt wrote:
> This patch removes the todo for the ion chunk and
> carveout device tree bindings.
> 
> Signed-off-by: Donald Yandt <donald.yandt@gmail.com>
> ---
>  drivers/staging/android/TODO | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/android/TODO b/drivers/staging/android/TODO
> index fbf015cc6..767dd98fd 100644
> --- a/drivers/staging/android/TODO
> +++ b/drivers/staging/android/TODO
> @@ -6,8 +6,6 @@ TODO:
>  
>  
>  ion/
> - - Add dt-bindings for remaining heaps (chunk and carveout heaps). This would
> -   involve putting appropriate bindings in a memory node for Ion to find.
>   - Split /dev/ion up into multiple nodes (e.g. /dev/ion/heap0)
>   - Better test framework (integration with VGEM was suggested)
>  

This is already done?  Do you have a pointer to the git commit id(s)
that did it?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
