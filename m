Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E033D0D2D
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Jul 2021 13:12:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20EE4404D6;
	Wed, 21 Jul 2021 11:12:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 85lyfTTbATpq; Wed, 21 Jul 2021 11:12:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65A1D4012F;
	Wed, 21 Jul 2021 11:12:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 48FB41BF4E5
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 11:11:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 352444012F
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 11:11:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3SSsC-NcR3kS for <devel@linuxdriverproject.org>;
 Wed, 21 Jul 2021 11:11:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A9487400C3
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 11:11:56 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B45C560FED;
 Wed, 21 Jul 2021 11:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1626865916;
 bh=tPotY5G4TA0M+ZnRt5CkRiCgT2jBRW0Q91z5Xu7hEbk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ojOCBO0HZa+4CbR7NHl71mXilQxPxGy8B3HAtSZjAB0uF3sMgInVn2krTRnplPapx
 vYGsnhfO8Ih9I8LiOYQsMU09BtrKlmlS3UX1BChKXW0chOFLikyVphdVL5NDdmKf3j
 mSXs9T8KSbt2tI9RI6P2/ILxWFDzfunZEba6FQj0=
Date: Wed, 21 Jul 2021 13:11:53 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Benjamin Philip <benjamin.philip495@gmail.com>
Subject: Re: [PATCH] staging: rtl8188eu: remove unnecessary blank lines in
 core/rtw_ap.c
Message-ID: <YPgA+QB82Pjm/76B@kroah.com>
References: <20210721105808.63735-1-benjamin.philip495@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210721105808.63735-1-benjamin.philip495@gmail.com>
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
Cc: devel mailing list <devel@linuxdriverproject.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 21, 2021 at 04:28:09PM +0530, Benjamin Philip wrote:
> This commit fixes some checkpatch checks for blank lines before
> and after braces in drivers/staging/rtl8188eu/core/rtw_ap.c
> 
> Signed-off-by: Benjamin Philip <benjamin.philip495@gmail.com>
> ---
> 
> This patch fixes some checkpatch.pl CHECKs for blank lines.
> 
> Note: Since all I have done is remove some empty blank lines, I didn't
> compile and test the driver.

Always test-build your changes, do not force me to do that for you.

Please do that and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
