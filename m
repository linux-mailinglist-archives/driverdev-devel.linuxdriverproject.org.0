Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1C811919B
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 21:13:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8881586B19;
	Tue, 10 Dec 2019 20:13:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kIhnHyIewRhS; Tue, 10 Dec 2019 20:13:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D34B86BE5;
	Tue, 10 Dec 2019 20:13:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 283781BF2B7
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 20:13:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2528A86762
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 20:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IoAYZ5Szk7DJ for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 20:13:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DE92A86A4D
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 20:13:21 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E9C12073D;
 Tue, 10 Dec 2019 20:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576008801;
 bh=d4m8RyRaIFUsp+FGIuHS5xArnuXnFWtjuRqLlW6epXw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ST5a1CQfF4T91g4YqgT4Ml6JvNveb21sGDz3FR5d14k/48JJD2aaB7EtAn+llseFs
 OmKmK1gVUedf/IKGPiNgjppSGz5p8RakeFLUGskgfMDXkdX3Ax7n968tHPsbS75Iut
 cV8YEVwq8mIWsobGt3NbGMqb8kjyltyIYOc/efig=
Date: Tue, 10 Dec 2019 21:13:18 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] staging: hp100: add back CONFIG_NET dependency
Message-ID: <20191210201318.GA4070187@kroah.com>
References: <20191210200110.994059-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210200110.994059-1-arnd@arndb.de>
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
Cc: devel@driverdev.osuosl.org, Joe Perches <joe@perches.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
 Jaroslav Kysela <perex@perex.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 10, 2019 at 09:00:52PM +0100, Arnd Bergmann wrote:
> The move to staging lost an important dependency:
> 
> ERROR: "eth_validate_addr" [drivers/staging/hp/hp100.ko] undefined!
> ERROR: "eth_mac_addr" [drivers/staging/hp/hp100.ko] undefined!
> ERROR: "alloc_etherdev_mqs" [drivers/staging/hp/hp100.ko] undefined!
> ERROR: "register_netdev" [drivers/staging/hp/hp100.ko] undefined!
> ERROR: "__skb_pad" [drivers/staging/hp/hp100.ko] undefined!
> ERROR: "consume_skb" [drivers/staging/hp/hp100.ko] undefined!
> ERROR: "dev_trans_start" [drivers/staging/hp/hp100.ko] undefined!
> ERROR: "__dev_kfree_skb_any" [drivers/staging/hp/hp100.ko] undefined!
> ERROR: "netif_rx" [drivers/staging/hp/hp100.ko] undefined!
> ERROR: "eth_type_trans" [drivers/staging/hp/hp100.ko] undefined!
> ERROR: "skb_trim" [drivers/staging/hp/hp100.ko] undefined!
> ERROR: "skb_put" [drivers/staging/hp/hp100.ko] undefined!
> ERROR: "__netdev_alloc_skb" [drivers/staging/hp/hp100.ko] undefined!
> ERROR: "free_netdev" [drivers/staging/hp/hp100.ko] undefined!
> ERROR: "unregister_netdev" [drivers/staging/hp/hp100.ko] undefined!
> 
> Add it back explicitly.
> 
> Fixes: 52340b82cf1a ("hp100: Move 100BaseVG AnyLAN driver to staging")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/staging/hp/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/hp/Kconfig b/drivers/staging/hp/Kconfig
> index fb395cfe6b92..9566d4ab5ce5 100644
> --- a/drivers/staging/hp/Kconfig
> +++ b/drivers/staging/hp/Kconfig
> @@ -6,6 +6,7 @@
>  config NET_VENDOR_HP
>  	bool "HP devices"
>  	default y
> +	depends on NET
>  	depends on ISA || EISA || PCI
>  	---help---
>  	  If you have a network (Ethernet) card belonging to this class, say Y.

Heh, I just queued up this same patch a few hours ago :)

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
