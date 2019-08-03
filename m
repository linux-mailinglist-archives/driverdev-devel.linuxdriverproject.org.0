Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 742A9804AE
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 08:32:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D468C86943;
	Sat,  3 Aug 2019 06:32:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5LBkKWN7Top4; Sat,  3 Aug 2019 06:32:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 990ED86004;
	Sat,  3 Aug 2019 06:32:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBBFD1BF401
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 06:32:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B956520390
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 06:32:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lcV9brk1r-Pp for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 06:32:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 1365D20109
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 06:32:49 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 664302087C;
 Sat,  3 Aug 2019 06:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564813968;
 bh=5uFzZfIoEwQBrWrcs4j9f2dtR+4Xisp4P+uNFPPnC6Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lh1FEk9/Jhz2/FN/OK8/GklDYDO8dc7O27K+G/TM8SPQnlKeRzAsGlwtG6uVw+qtN
 3tICWpwn5LR5OKXCOUHPFxPOnmUYdg0imvF3gHaOrzXYryouxEkoLrhMfwau/m7b2p
 x7AmU1cHO6IqPw1+USVh/Dzh7aeHb5sEG5N9pInk=
Date: Sat, 3 Aug 2019 08:32:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
Subject: Re: [PATCH] isdn: hysdn: Fix error spaces around '*'
Message-ID: <20190803063246.GA10186@kroah.com>
References: <20190802195602.28414-1-joseespiriki@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802195602.28414-1-joseespiriki@gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org, isdn@linux-pingi.de,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 02, 2019 at 07:56:02PM +0000, Jose Carlos Cazarin Filho wrote:
> Fix checkpath error:
> CHECK: spaces preferred around that '*' (ctx:WxV)
> +extern hysdn_card *card_root;        /* pointer to first card */
> 
> Signed-off-by: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
> ---
>  Hello all!
>  This is my first commit to the Linux Kernel, I'm doing this to learn and be able
>  to contribute more in the future
>  Peace all! 
> 
>  drivers/staging/isdn/hysdn/hysdn_defs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/isdn/hysdn/hysdn_defs.h b/drivers/staging/isdn/hysdn/hysdn_defs.h
> index cdac46a21..f20150d62 100644
> --- a/drivers/staging/isdn/hysdn/hysdn_defs.h
> +++ b/drivers/staging/isdn/hysdn/hysdn_defs.h
> @@ -220,7 +220,7 @@ typedef struct hycapictrl_info hycapictrl_info;
>  /*****************/
>  /* exported vars */
>  /*****************/
> -extern hysdn_card *card_root;	/* pointer to first card */
> +extern hysdn_card * card_root;	/* pointer to first card */

The original code here is correct, checkpatch must be reporting this
incorrectly.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
