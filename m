Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A24C59860F
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 22:55:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3795288846;
	Wed, 21 Aug 2019 20:55:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pVjAPcXb8M4h; Wed, 21 Aug 2019 20:55:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B6AA6887F0;
	Wed, 21 Aug 2019 20:55:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC4501BF405
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 20:55:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C42BA887F8
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 20:55:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D4KfxOXqdG8C for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 20:55:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3A1E0887F0
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 20:55:32 +0000 (UTC)
Received: from localhost (wsip-184-188-36-2.sd.sd.cox.net [184.188.36.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBC4E22CF7;
 Wed, 21 Aug 2019 20:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566420932;
 bh=3N06S7d+IJH7fPcRuLFfhOA0WbN6iEVHSUEKzhUzAFw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Op0ZTlKcQ72uPdMScK1pmE2ol9RArOow9WNasYr/64DCACbauO36mqWDk3iXoHlAp
 o2KArwFsS+X1aoDsVU5Dh3+T0ztd+dbqfJOPuN6Q6wQ03QK4YTgyvNawohH8pDEe7I
 JNVuPjfYpIi+AKrbyigMwNEKXcxJQbjK3xpgb5Lc=
Date: Wed, 21 Aug 2019 13:55:31 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Colin Ian King <colin.king@canonical.com>
Subject: Re: Added Realtek rtl8192u driver to staging - static analysis report.
Message-ID: <20190821205531.GC17415@kroah.com>
References: <cb1222a8-4c67-8fac-f1d9-755e97699caa@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb1222a8-4c67-8fac-f1d9-755e97699caa@canonical.com>
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
Cc: devel@driverdev.osuosl.org, Jerry Chuang <jerry-chuang@realtek.com>,
 linux-kernel@vger.kernel.org, John Whitmore <johnfwhitmore@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 21, 2019 at 07:18:39PM +0100, Colin Ian King wrote:
> Hi,
> 
> Static analysis of linux-next picked up an issue with the following commit:
> 
> commit 8fc8598e61f6f384f3eaf1d9b09500c12af47b37
> Author: Jerry Chuang <jerry-chuang@realtek.com>
> Date:   Tue Nov 3 07:17:11 2009 -0200
> 
>     Staging: Added Realtek rtl8192u driver to staging
> 
> In drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c we have:
> 
> CID 48331 (#1 of 1): Unused value (UNUSED_VALUE) assigned_pointer
> 
> Assigning value from ieee->crypt[ieee->tx_keyidx] to crypt here, but
> that stored value is not used.
> 
> 746        crypt = ieee->crypt[ieee->tx_keyidx];
> 747        if (encrypt)
> 748                beacon_buf->capability |=
> cpu_to_le16(WLAN_CAPABILITY_PRIVACY);
> 
> Pointer crypt is being assigned but is never used afterwards.  Now
> either this is a redundant assignment and can be removed OR maybe crypt
> should be checked and there is a typo, e.g.:
> 
> 	crypt = ieee->crypt[ieee->tx_keyidx];
> 	if (crypt)
> 		...
> 
> Either way, it's not clear to me and I think the code needs cleaning up.
> Any ideas?

10+ year old code, yeah!!!

Just guess, who knows, no one seems to care :(

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
