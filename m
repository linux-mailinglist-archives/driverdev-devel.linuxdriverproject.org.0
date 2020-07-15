Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 540642210C9
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 17:24:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B65438AFFA;
	Wed, 15 Jul 2020 15:24:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 04NbubTddGwD; Wed, 15 Jul 2020 15:24:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 348388AFED;
	Wed, 15 Jul 2020 15:24:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7DE5D1BF983
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 15:24:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7A736896F1
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 15:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J0YjqwpE4Mz5 for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 15:24:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F2FFE896ED
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 15:24:23 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 454B02065E;
 Wed, 15 Jul 2020 15:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594826663;
 bh=Zg2rsnakyWUd1tUcfsHqVlLsINCebZ+cnfEZe1dPnyw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UjWt89mWYRAOFc5aZxrigdFKbYJwSTW+d/sOrMpL7lOONrQ/KndCbp+/9LXFOyXWK
 oRxrY9jbv2Vo/MZfbIBJDgO+xKiZn/BrD/qoqonvG4zpTNaUnphJ5K4XqfNSV2TMiQ
 pPv7FEh97ZVV32ertwjbIP0wOjSXjZqdwTFFCeZE=
Date: Wed, 15 Jul 2020 17:24:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Arpitha Raghunandan <98.arpi@gmail.com>
Subject: Re: [PATCH v2] staging: rtl8188eu: core: fix coding style issues
Message-ID: <20200715152419.GA722895@kroah.com>
References: <20200715142710.76205-1-98.arpi@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200715142710.76205-1-98.arpi@gmail.com>
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
 yepeilin.cs@gmail.com, puranjay12@gmail.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 15, 2020 at 07:57:10PM +0530, Arpitha Raghunandan wrote:
> Fixing WARNING: Prefer using '"%s...", __func__' to using 'function_name'
> in a string in rtw_ioctl_set.c
> 
> Signed-off-by: Arpitha Raghunandan <98.arpi@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ioctl_set.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

What changed from v1?

Always put that information below the --- line in the patch like the
documentation asks.

Can you fix this up and send v3?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
