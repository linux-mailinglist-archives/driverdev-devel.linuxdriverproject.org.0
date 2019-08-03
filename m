Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E0A803CA
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 03:40:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 55ED283617;
	Sat,  3 Aug 2019 01:39:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dCfInuqkDjtF; Sat,  3 Aug 2019 01:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D19883754;
	Sat,  3 Aug 2019 01:39:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A7C191BF360
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 01:39:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A453D882BB
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 01:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Pw0Aoc8o9XD for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 01:39:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2C621882B2
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 01:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JJ18jXKRYL+LjHZJQGyVORqTBwR9XEPkY/Ue29F9y00=; b=e9fFQ/W4Cn9iL2CW1JTYk1P3H
 6EebSbSHNCQoTIbNQALP34w4xqvVGLDd3LNrSYiD9QVl6XC1/qBo4NdjXpJb5F1qP4UusDbIrJ8in
 vTlp7viQ4e//Q5tCr4oboQAkuPVc7dfu5OgkQm8byGfJTEZ/YiAo7WQjcU62T3itACScsTo/tVIWi
 WtCWXzvSr8Oi0nyQ4b03IDDkEi3NhCtXgxLwueeIN/SQU9QXwyStQjQpU3my2HBF3AXcvk2gPExXm
 dsXAxOjb8UsTff0/yg/UqVm45e3I4XB36ra44SaAcN0LJaDuQi4TTcmnpJXcvFz7Wgya87VIQ4dcN
 UN7/A22CA==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1htj1V-00079c-0O; Sat, 03 Aug 2019 01:39:53 +0000
Date: Fri, 2 Aug 2019 18:39:52 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] net: mdio-octeon: Fix build error and Kconfig warning
Message-ID: <20190803013952.GF5597@bombadil.infradead.org>
References: <20190731.094150.851749535529247096.davem@davemloft.net>
 <20190731185023.20954-1-natechancellor@gmail.com>
 <20190802.181132.1425585873361511856.davem@davemloft.net>
 <20190803013031.GA76252@archlinux-threadripper>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803013031.GA76252@archlinux-threadripper>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 kernel-build-reports@lists.linaro.org, gregkh@linuxfoundation.org,
 broonie@kernel.org, linux-next@vger.kernel.org, netdev@vger.kernel.org,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 02, 2019 at 06:30:31PM -0700, Nathan Chancellor wrote:
> On Fri, Aug 02, 2019 at 06:11:32PM -0700, David Miller wrote:
> > The proper way to fix this is to include either
> > 
> > 	linux/io-64-nonatomic-hi-lo.h
> > 
> > or
> > 
> > 	linux/io-64-nonatomic-lo-hi.h
> > 
> > whichever is appropriate.
> 
> Hmmmm, is that not what I did?
> 
> Although I did not know about io-64-nonatomic-hi-lo.h. What is the
> difference and which one is needed here?

Whether you write the high or low 32 bits first.  For this, it doesn't
matter, since the compiled driver will never be run on real hardware.

> There is apparently another failure when OF_MDIO is not set, I guess I
> can try to look into that as well and respin into a series if
> necessary.

Thanks for taking care of that!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
