Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAE1334264
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 17:04:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B33074EC72;
	Wed, 10 Mar 2021 16:04:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KKFN2wwaGFUP; Wed, 10 Mar 2021 16:04:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9EF88454B4;
	Wed, 10 Mar 2021 16:04:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D7C8F1BF873
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 16:04:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C7E9C431C4
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 16:04:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O47NnmwuRlSb for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 16:04:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 419D8431BE
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 16:04:21 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9311964EFC;
 Wed, 10 Mar 2021 16:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615392260;
 bh=R3nAU4oVFrRwftJI5JeDSFqVV4m8k4B7Lvbt1v2OarE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dOEVCC5QgsCOXP3AnAXgwYzvpFav7dN7o4G9iuNgYWNG4CteV01kAdYe8b1xNW6Gb
 LR2W/31F29lkIQFxPatQy3Kq/BahHPGxtsS3HYuNI0aLkpEXbHZhadJsF6lmJfuauy
 O+Up51d83JDGOKt56vFQ/PPnutq9/UwUj12pjYq4=
Date: Wed, 10 Mar 2021 17:04:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mahak Gupta <gmahak1@gmail.com>
Subject: Re: [PATCH] Match alignment with open parenthesis
Message-ID: <YEjuAbShCtldatvT@kroah.com>
References: <20210221234409.11627-1-gmahak1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210221234409.11627-1-gmahak1@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 22, 2021 at 05:14:09AM +0530, Mahak Gupta wrote:
> This patches fixes the checks- 'Alignment should match open parenthesis'
> of 'checkpatch.pl'.
> 
> Signed-off-by: Mahak Gupta <gmahak1@gmail.com>
> ---
>  drivers/staging/octeon-usb/octeon-hcd.c | 32 +++++++++++++------------
>  1 file changed, 17 insertions(+), 15 deletions(-)

This got lost as you didn't put the subsystem on the subject line :(

Please resend with "staging: " as a prefix on the subject line so our
tools can pick this up properly.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
