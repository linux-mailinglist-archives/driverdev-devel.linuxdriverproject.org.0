Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5770F305DAC
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 14:58:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6A78484FC9;
	Wed, 27 Jan 2021 13:58:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D3IJCrSnnJb9; Wed, 27 Jan 2021 13:58:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F74F84542;
	Wed, 27 Jan 2021 13:58:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2DD4D1BF301
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 13:58:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2A61A84ABB
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 13:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dl3R-LAyA8iH for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 13:58:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A4A5584542
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 13:58:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7A4612075E;
 Wed, 27 Jan 2021 13:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611755898;
 bh=eLStmM4r9HyJLx0khV+lOxfuUkZ2pGzJpeJwZl2bIkU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LMvDN0GTiZ3vvNVEXmcu9FWEUZW6UYKzAVMOxT//8TT4+SqNgp1hvGdzJ1fBbBBbV
 X766lbQG1fXnV7jhctWW7ktJr6kAEAI1Wrr1isvjMcAX0UXYye0hz/GzBASr/Xo+fm
 zgZytxIZelXGnsmTgbrXmzjFLG3ReYHkjbnSlou4=
Date: Wed, 27 Jan 2021 14:58:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Johannes Czekay <johannes.czekay@fau.de>
Subject: Re: [PATCH 1/6] wlan-ng: clean up line ending
Message-ID: <YBFxd23HvY7ziOjB@kroah.com>
References: <20210118010955.48663-1-johannes.czekay@fau.de>
 <20210118010955.48663-2-johannes.czekay@fau.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210118010955.48663-2-johannes.czekay@fau.de>
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
Cc: devel@driverdev.osuosl.org, jbwyatt4@gmail.com, gustavo@embeddedor.com,
 linux-kernel@i4.cs.fau.de, linux-kernel@vger.kernel.org, rkovhaev@gmail.com,
 nicolai.fischer@fau.de, hqjagain@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 18, 2021 at 02:09:51AM +0100, Johannes Czekay wrote:
> This patch cleans up all the "Lines should not end with a '('" warnings.
> 
> Signed-off-by: Johannes Czekay <johannes.czekay@fau.de>
> Co-developed-by: Nicolai Fischer <nicolai.fischer@fau.de>
> Signed-off-by: Nicolai Fischer <nicolai.fischer@fau.de>
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

When you resend this series, please remember to add "staging: " to the
prefix of all of the commit so I know to pick it up.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
