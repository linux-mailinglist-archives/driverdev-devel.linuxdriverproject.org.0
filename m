Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B06E308A07
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 16:45:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E68F85F4E;
	Fri, 29 Jan 2021 15:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S6pcsCmsoGY2; Fri, 29 Jan 2021 15:45:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2D8785F44;
	Fri, 29 Jan 2021 15:45:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 645881BF2B5
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:45:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6097C204EF
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:45:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LmrKnxo3kC3j for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 15:45:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id BBFE2204E6
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 15:45:14 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DB06961477;
 Fri, 29 Jan 2021 15:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611935114;
 bh=/xH4/vV6h1hAchk4ftntsT88gDfhYCu/TbbHHjmAr1o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aNVrQA15PNgY3cFevshxRKQINrzdwV1wyiQ4sqhZf1ryMx58fsT4I7eVM09opYFMN
 8jkr07QAjPVhLDCKLG9u6HhMUXaaZsMusuOEZr7NHmSMSMFyrhuJ5LXX5y8nR/r/Ml
 EE/nTYYQJlHcXKDUIJLvxVYdWbYRnTkpPfj0iQd0=
Date: Fri, 29 Jan 2021 16:45:11 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v7 01/14] staging: hikey9xx: spmi driver: convert to regmap
Message-ID: <YBQth03ENuTIp1Rb@kroah.com>
References: <cover.1611932194.git.mchehab+huawei@kernel.org>
 <8148fe6afb24f91efba22f66472b227aab2ace70.1611932194.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8148fe6afb24f91efba22f66472b227aab2ace70.1611932194.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Lee Jones <lee.jones@linaro.org>,
 linux-kernel@vger.kernel.org, Mayulong <mayulong1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jan 29, 2021 at 04:03:36PM +0100, Mauro Carvalho Chehab wrote:
> Instead of doing its own SPMI I/O implementation, use the
> already-existing regmap one.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/staging/hikey9xx/hi6421-spmi-pmic.c   | 115 ++++++------------
>  .../staging/hikey9xx/hi6421v600-regulator.c   |  26 ++--
>  include/linux/mfd/hi6421-spmi-pmic.h          |   7 +-
>  3 files changed, 52 insertions(+), 96 deletions(-)

After applying this, I get a build failure:

ERROR: modpost: "__devm_regmap_init_spmi_ext" [drivers/staging/hikey9xx/hi6421-spmi-pmic.ko] undefined!

So you need some sort of build dependancy here :(

Also, when I apply the first 9 patches and stop, I get a build error
that you should see as well, so I can't take any of these right now,
sorry.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
