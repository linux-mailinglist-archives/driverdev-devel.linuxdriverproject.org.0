Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9E7291463
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Oct 2020 22:49:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B08B86C02;
	Sat, 17 Oct 2020 20:49:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KCsspx0kDBYq; Sat, 17 Oct 2020 20:49:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35E5086BC2;
	Sat, 17 Oct 2020 20:49:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 17F3E1BF407
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 20:49:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 116F287508
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 20:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XSHfkuz0RwaO for <devel@linuxdriverproject.org>;
 Sat, 17 Oct 2020 20:49:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 18F56874EB
 for <devel@driverdev.osuosl.org>; Sat, 17 Oct 2020 20:49:02 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1kTt8N-002Bx8-On; Sat, 17 Oct 2020 22:48:59 +0200
Date: Sat, 17 Oct 2020 22:48:59 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Alexander A Sverdlin <alexander.sverdlin@nokia.com>
Subject: Re: [PATCH v2 net] staging: octeon: repair "fixed-link" support
Message-ID: <20201017204859.GT456889@lunn.ch>
References: <20201016101858.11374-1-alexander.sverdlin@nokia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201016101858.11374-1-alexander.sverdlin@nokia.com>
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
Cc: devel@driverdev.osuosl.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ralf Baechle <ralf@linux-mips.org>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -13,6 +13,7 @@
>  #include <linux/phy.h>
>  #include <linux/slab.h>
>  #include <linux/interrupt.h>
> +#include <linux/of_mdio.h>
>  #include <linux/of_net.h>
>  #include <linux/if_ether.h>
>  #include <linux/if_vlan.h>
> @@ -892,6 +893,14 @@ static int cvm_oct_probe(struct platform_device *pdev)
>  				break;
>  			}
>  
> +			if (priv->of_node && of_phy_is_fixed_link(priv->of_node)) {
> +				if (of_phy_register_fixed_link(priv->of_node)) {
> +					netdev_err(dev, "Failed to register fixed link for interface %d, port %d\n",
> +						   interface, priv->port);
> +					dev->netdev_ops = NULL;
> +				}
> +			}
> +
>  			if (!dev->netdev_ops) {
>  				free_netdev(dev);
>  			} else if (register_netdev(dev) < 0) {
> -- 
> 2.10.2

I would also expect a call to of_phy_deregister_fixed_link() somewhere
in the driver.

   Andrew
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
