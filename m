Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3070574CA4
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 13:14:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2C5BF220D0;
	Thu, 25 Jul 2019 11:14:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R-hRpSlc-xi2; Thu, 25 Jul 2019 11:14:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B9523220DF;
	Thu, 25 Jul 2019 11:14:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C3551BF45A
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 11:14:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 856B1220D0
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 11:14:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ByGaRX5zTt-k for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 11:14:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 635A8220CA
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 11:14:17 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ABACE21901;
 Thu, 25 Jul 2019 11:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564053257;
 bh=waVczpwrh6pnIoFCpGlxFz7cDpHgzuXb/1ydQioMguo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RSoggm/2P6WTNJIke3rmcCIrRUszI+WPd2hVnjsG/6bamaGdunKS9ApcZ18291LuM
 z4n7cR04pDwpU0F9fmP1Mp1GBKZtteDW961BnQL3yENIvM+tE3+3lULQaJ5KyhdLIb
 HgV2/LXYbIVMpbrR9D05M111z/h33mJ4GlsiXmg4=
Date: Thu, 25 Jul 2019 13:14:14 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH] qlge: Fix build error without CONFIG_ETHERNET
Message-ID: <20190725111414.GB30958@kroah.com>
References: <20190724130126.53532-1-yuehaibing@huawei.com>
 <20190724.141202.10100086363454182.davem@davemloft.net>
 <20190724.141228.454330962921320879.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724.141228.454330962921320879.davem@davemloft.net>
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
Cc: bpoirier@suse.com, devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, netdev@vger.kernel.org, yuehaibing@huawei.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 24, 2019 at 02:12:28PM -0700, David Miller wrote:
> From: David Miller <davem@davemloft.net>
> Date: Wed, 24 Jul 2019 14:12:02 -0700 (PDT)
> 
> > From: YueHaibing <yuehaibing@huawei.com>
> > Date: Wed, 24 Jul 2019 21:01:26 +0800
> > 
> >> Now if CONFIG_ETHERNET is not set, QLGE driver
> >> building fails:
> >> 
> >> drivers/staging/qlge/qlge_main.o: In function `qlge_remove':
> >> drivers/staging/qlge/qlge_main.c:4831: undefined reference to `unregister_netdev'
> >> 
> >> Reported-by: Hulk Robot <hulkci@huawei.com>
> >> Fixes: 955315b0dc8c ("qlge: Move drivers/net/ethernet/qlogic/qlge/ to drivers/staging/qlge/")
> >> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> > 
> > I'll let Greg take this.
> 
> Actually, I take that back.
> 
> Since the move to staging happened in my tree I will take this ;-)

Thanks.  If you want to push that "move" to Linus soon, I can then take
any cleanup patches that show up for this driver, otherwise feel free to
ignore them until 5.4-rc1.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
