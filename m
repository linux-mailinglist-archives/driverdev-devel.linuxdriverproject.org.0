Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 998981F96AC
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jun 2020 14:36:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C673424F51;
	Mon, 15 Jun 2020 12:36:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 62MKvKJsIqYO; Mon, 15 Jun 2020 12:36:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D6A062314A;
	Mon, 15 Jun 2020 12:36:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DFA91BF420
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 12:36:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2AB5987FDA
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 12:36:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 57V3biiJu2cR for <devel@linuxdriverproject.org>;
 Mon, 15 Jun 2020 12:36:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A15C487FC8
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 12:36:52 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E323B206D7;
 Mon, 15 Jun 2020 12:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592224612;
 bh=MLaz9Lh1fa6o0lqJXRQNSErh5KCNk+V5uBZbIEvmyBA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f5wM4r/qTZh2Gd/MrVZAAxieeBAcKNrUg01uSmxjMC3u5RYWnyavygGbZTl2XKqaA
 e1/gA37Wvyg0cZw1jS5WU7VPSXJaVsvVe65KEHAyGQSs9Xk1CNBM5PBNL6wO/fcT2Y
 XP5kUxvdiMdB0Iqkmm5M5/BRDNTGHrz5i2N4kJwo=
Date: Mon, 15 Jun 2020 14:36:39 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ricardo Ferreira <rikajff@gmail.com>
Subject: Re: [PATCH v2] Staging: rtl8712: Addressed checkpatch.pl issues
 related to macro parameter wrapping in parentheses.
Message-ID: <20200615123639.GC943330@kroah.com>
References: <20200614173146.28292-1-rikajff@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200614173146.28292-1-rikajff@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 linux-kernel@vger.kernel.org, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jun 14, 2020 at 06:31:46PM +0100, Ricardo Ferreira wrote:
> Attempting to wet my feet in kernel patch submission by submitting a checkstyle
> fix for the rtl8712 driver.
> 
> Signed-off-by: Ricardo Ferreira <rikajff@gmail.com>
> ---

What changed from v1?

Always put that below the --- line, so please fix this up and do a v3.

Also, your changelog text is very odd, do you see other commits in the
kernel for these files that say things that way?  Please try to follow
how others do things.  Also read the documentation for how to make a
good changelog text, that will help out a lot.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
