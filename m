Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2642250E2
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 11:26:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6393087BD4;
	Sun, 19 Jul 2020 09:26:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q8OyDD-geV0t; Sun, 19 Jul 2020 09:26:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C35518792F;
	Sun, 19 Jul 2020 09:26:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B2301BF484
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 09:26:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9514787933
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 09:26:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eb1ONUTZaqhF for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 09:26:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EBD6D8792F
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 09:26:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4250C20734;
 Sun, 19 Jul 2020 09:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595150799;
 bh=ljG4z8NQkx6r+tRv9xzPgjIxxQyH5H2eGUpv+e4PoUo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FlyBSpXbBM3PAHhf+jsjtFA6+6DKvsw5kLZCKzdoKWl9OUvLDebwtQdZuAHx06Hg0
 Mev5VuqbW566XyoHmE4CKA3hglj2WG7zVDGIVvkiZ+LmbCpJ/SIcaYt6UtJI1SOfC2
 PyNiuWsqMkQH3HWD75sGMiEQwnA//qhaYYW4n2mw=
Date: Sun, 19 Jul 2020 11:26:52 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH 2/4] staging: rtl8188eu: include: fixed multiple
 parentheses coding style issues
Message-ID: <20200719092652.GA257887@kroah.com>
References: <20200718091626.uflhdcgkmhqij5b7@pesu-pes-edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200718091626.uflhdcgkmhqij5b7@pesu-pes-edu>
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
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 18, 2020 at 05:16:26AM -0400, B K Karthik wrote:
> fixed multiple parentheses coding style issues reported by checkpatch.
> 
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> ---
>  drivers/staging/rtl8188eu/include/ieee80211.h |  4 +--
>  .../staging/rtl8188eu/include/osdep_service.h |  4 +--
>  drivers/staging/rtl8188eu/include/wifi.h      | 34 +++++++++----------
>  3 files changed, 21 insertions(+), 21 deletions(-)

You can never add warnings to the build, like this patch did.  Always
test-build your patches at the very least...

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
