Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 249A51B0C41
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 15:07:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C940285D8D;
	Mon, 20 Apr 2020 13:07:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lJQqT4dzpnS7; Mon, 20 Apr 2020 13:07:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 47E2B8452D;
	Mon, 20 Apr 2020 13:07:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C60231BF3AF
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 13:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C2B8386B0B
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 13:07:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S33HlTu9xmhA for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 13:07:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DA5BB86A10
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 13:07:17 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C77E2072B;
 Mon, 20 Apr 2020 13:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587388037;
 bh=V75EOkXxVvNKIKgafA+kN9m13NmYbnNqGbRSfqMMzxI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m6VCfRs0mzgqJbFAus3P7cNMyRgXyNL66AXmcualloYQ1c2SumxOvsirbPz9NS9DQ
 0bRBVBHOjM+3ulRnV701hxX7zlWgy0RIZtHk9+OVAnG0gzwN7t3mGIz7ZOE73E2f33
 6ik8JoGMO4/6KsyzM9SGnuYXNvZ7oislsAvr8z9k=
Date: Mon, 20 Apr 2020 15:07:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH v2] staging: mt7621-pinctrl: Use correct pointer type
 argument for sizeof
Message-ID: <20200420130715.GA4040736@kroah.com>
References: <20200420124151.4356-1-yanaijie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420124151.4356-1-yanaijie@huawei.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, nishkadg.linux@gmail.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 20, 2020 at 08:41:51PM +0800, Jason Yan wrote:
> Fix the following coccicheck warning:
> 
> drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c:223:14-36: WARNING: Use
> correct pointer type argument for sizeof
> 
> Signed-off-by: Jason Yan <yanaijie@huawei.com>
> ---
>  drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

What changed from v1?  Always put that below the --- line.

Please fix up and send a v3.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
