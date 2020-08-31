Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E922257FFA
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Aug 2020 19:56:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5952B85F32;
	Mon, 31 Aug 2020 17:56:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Guvkg-4lh5N4; Mon, 31 Aug 2020 17:56:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 191A485EC2;
	Mon, 31 Aug 2020 17:56:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 726B11BF34E
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 17:56:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6CA7586760
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 17:56:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X9e2Gwv3Ns84 for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 17:56:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 528F58674A
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 17:56:52 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C8042064B;
 Mon, 31 Aug 2020 17:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598896612;
 bh=ERddwSmbW2NDx5hhDfjr7bYktdj7MbTDA/T+l3ouxuA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ed2/ahwDFtWyuYHg7VAwF7L4DHDXj3ep2TYL4IqTyA/werP9qDfP9UPDItciQdFSJ
 TZtQ+DXRAo5LNwOxxzS6GKp2uY6rO2En7+lzNV9UIB4g+OoUwcC1WZMIaxYOP20FLi
 kxHHt/EEok389WReTP+xDrG4KEb+Fa6CAjJj9DP4=
Date: Mon, 31 Aug 2020 19:56:59 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: antoniprzybylik <antoni.przybylik@wp.pl>
Subject: Re: [PATCH] staging: gdm724x: fixed two macros by adding brackets
Message-ID: <20200831175659.GA2556308@kroah.com>
References: <20200831160332.8507-1-antoni.przybylik@wp.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200831160332.8507-1-antoni.przybylik@wp.pl>
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

On Mon, Aug 31, 2020 at 06:03:32PM +0200, antoniprzybylik wrote:
> Added brackets to two macros.

That says _what_ you did, but not _why_ you did it.

Why did you do it?  What does this fix?

Does it make sense to do this?

And why these two macros?  Be specific please.

> 
> Signed-off-by: Antoni Przybylik <antoni.przybylik@wp.pl>
> ---
>  drivers/staging/gdm724x/gdm_tty.c   | 3 +--
>  drivers/staging/gdm724x/netlink_k.c | 2 +-
>  2 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
> index 6e813693a766..5cd94347bf78 100644
> --- a/drivers/staging/gdm724x/gdm_tty.c
> +++ b/drivers/staging/gdm724x/gdm_tty.c
> @@ -27,7 +27,7 @@
>  
>  #define MUX_TX_MAX_SIZE 2048
>  
> -#define GDM_TTY_READY(gdm) (gdm && gdm->tty_dev && gdm->port.count)
> +#define GDM_TTY_READY(gdm) ((gdm) && (gdm)->tty_dev && (gdm)->port.count)
>  
>  static struct tty_driver *gdm_driver[TTY_MAX_COUNT];
>  static struct gdm *gdm_table[TTY_MAX_COUNT][GDM_TTY_MINOR];
> @@ -323,4 +323,3 @@ void unregister_lte_tty_driver(void)
>  		}
>  	}
>  }
> -

You also deleted a line without saying so :(

> diff --git a/drivers/staging/gdm724x/netlink_k.c b/drivers/staging/gdm724x/netlink_k.c
> index 7902e52a699b..399b7b4b536f 100644
> --- a/drivers/staging/gdm724x/netlink_k.c
> +++ b/drivers/staging/gdm724x/netlink_k.c
> @@ -20,7 +20,7 @@ static DEFINE_MUTEX(netlink_mutex);
>  #define ND_NLMSG_DATA(nlh)	((void *)((char *)NLMSG_DATA(nlh) + \
>  						  ND_IFINDEX_LEN))
>  #define ND_NLMSG_S_LEN(len)	(len + ND_IFINDEX_LEN)
> -#define ND_NLMSG_R_LEN(nlh)	(nlh->nlmsg_len - ND_IFINDEX_LEN)
> +#define ND_NLMSG_R_LEN(nlh)	((nlh)->nlmsg_len - ND_IFINDEX_LEN)

Does that really make sense to change?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
