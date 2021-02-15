Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C09031BB65
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Feb 2021 15:51:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ECDEA86B05;
	Mon, 15 Feb 2021 14:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aexCopR4PkDs; Mon, 15 Feb 2021 14:51:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B051386A7B;
	Mon, 15 Feb 2021 14:51:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECFC21BF3BB
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 14:51:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E9B2885B0D
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 14:51:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7h55MVSjkbud for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 14:51:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E594E85ABB
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 14:51:47 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E57BD64DF4;
 Mon, 15 Feb 2021 14:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613400707;
 bh=cmvN9HzH4BR1Cs5d66pNovNDeUIP8+tTBh8GRES+jhk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i9jf/TrU7ovhWBnvTeiwLXtib7zknqE0raAQtIl0SBdpqqWjNu/0OYYvTbEFlSDmw
 h2sR48B+LzEaskYnS+r8aUmfc17mMmwa5oZcj+CESQY95cn2Lma+nbm7RjWn7tDG+P
 rXkuDjmFz+hTb3NRv2y/XhsAtnpsrndvCPVJN1MY=
Date: Mon, 15 Feb 2021 15:51:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alaa Emad <alaaemadhossney.ae@gmail.com>
Subject: Re: [PATCH resend] staging: hikey9xx: hi6421-spmi-pmic: fixing
Message-ID: <YCqKgM4RD8nGCS7E@kroah.com>
References: <20210215143652.14122-1-alaaemadhossney.ae@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210215143652.14122-1-alaaemadhossney.ae@gmail.com>
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
Cc: mchehab+huawei@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 15, 2021 at 04:36:52PM +0200, Alaa Emad wrote:
> This patch fix the following issues in hi6421-spmi-pmic.c file:
> 
> drivers/staging/hikey9xx/hi6421-spmi-pmic.c:51: WARNING: please, no space before tabs
> drivers/staging/hikey9xx/hi6421-spmi-pmic.c:52: WARNING: please, no space before tabs
> drivers/staging/hikey9xx/hi6421-spmi-pmic.c:53: WARNING: please, no space before tabs
> drivers/staging/hikey9xx/hi6421-spmi-pmic.c:69: WARNING: please, no space before tabs
> drivers/staging/hikey9xx/hi6421-spmi-pmic.c:180: CHECK: Alignment should match open parenthesis
> drivers/staging/hikey9xx/hi6421-spmi-pmic.c:238: CHECK: Alignment should match open parenthesis
> 
> 
> Signed-off-by: Alaa Emad <alaaemadhossney.ae@gmail.com>
> 
> ---
>  drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Why is this a "resend"?  What caused it to be needed to be resent?

And your subject line is really odd, how does it match up with other
commits for this file?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
