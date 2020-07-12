Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BAD21C7C8
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Jul 2020 08:49:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3287F87B21;
	Sun, 12 Jul 2020 06:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X4OAj6VQ9DoI; Sun, 12 Jul 2020 06:49:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B2F6875AC;
	Sun, 12 Jul 2020 06:49:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CEB91BF5A1
 for <devel@linuxdriverproject.org>; Sun, 12 Jul 2020 06:49:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 09836875EF
 for <devel@linuxdriverproject.org>; Sun, 12 Jul 2020 06:49:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7SCrbCtrGWmq for <devel@linuxdriverproject.org>;
 Sun, 12 Jul 2020 06:49:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 94DCF875AC
 for <devel@driverdev.osuosl.org>; Sun, 12 Jul 2020 06:49:07 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E0F902070B;
 Sun, 12 Jul 2020 06:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594536547;
 bh=5hFYggtmbXm1gzSEr54Yj77nGkufnmMGvt4v1b7+Ipw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aIGs5Cp0OxptNj1SWHeexH94IqDvPPv9ejS7Vw2/TuxPR8u3vdnSFsDxkn+sSUqad
 Y4WzgEHqz2npBxJu549T6szFh9R6YQbpqr0GqVwtln1B6Ic0MoD72cWHXFmQbFMSzg
 oDEJ+gwoJbh5qA4RiiKSsg7o/fdOoFxRf/Z7Mr9I=
Date: Sun, 12 Jul 2020 08:49:09 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: staging: Specify IOMEM dependency for Xilinx
 Clocking Wizard driver
Message-ID: <20200712064909.GC2920853@kroah.com>
References: <20200630044518.1084468-1-davidgow@google.com>
 <159448501081.1987609.2376410636031633673@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159448501081.1987609.2376410636031633673@swboyd.mtv.corp.google.com>
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
Cc: devel@driverdev.osuosl.org, Michael Turquette <mturquette@baylibre.com>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 David Gow <davidgow@google.com>, linux-clk@vger.kernel.org,
 Soren Brinkmann <soren.brinkmann@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 11, 2020 at 09:30:10AM -0700, Stephen Boyd wrote:
> Quoting David Gow (2020-06-29 21:45:17)
> > The Xilinx Clocking Wizard driver uses the devm_ioremap_resource
> > function, but does not specify a dependency on IOMEM in Kconfig. This
> > causes a build failure on architectures without IOMEM, for example, UML
> > (notably with make allyesconfig).
> > 
> > Fix this by making CONFIG_COMMON_CLK_XLNX_CLKWZRD depend on CONFIG_IOMEM.
> > 
> > Signed-off-by: David Gow <davidgow@google.com>
> > ---
> 
> This driver is in the process of being destaged to drivers/clk/
> 
> Greg, should I pick this one up?

Sure, if I haven't already.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
