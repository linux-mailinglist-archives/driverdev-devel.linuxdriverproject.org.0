Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C221D31F598
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 09:04:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37DDE606EE
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 08:04:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5t7s-u4bWkBm for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 08:03:59 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 525A2606D8; Fri, 19 Feb 2021 08:03:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 208E660678;
	Fri, 19 Feb 2021 08:03:42 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C3A6B1BF312
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 08:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C0F9060678
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 08:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lHO2hKWpb4qV
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 08:03:28 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 2A776606BD; Fri, 19 Feb 2021 08:03:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 06F5A60678
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 08:03:26 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B89FF64EB8;
 Fri, 19 Feb 2021 08:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613721806;
 bh=qD03Y22KUe5Fg+I+LU8+ICvt+jutrg5vqGGE8n6kYj8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g5BDkZUaLeXDYCErTfhE7k4FDMgTupTBLyS+Qka4djIIfUSkOBRHDId6Kd/ke62Qa
 uuc203RR7B7JzFd3yK+yUQOIQPPon0v1CzjimRh4Vi/Rg9J/8C1ezjJGsvS4wN8yGD
 naXJftoKlzHSoGuTAoMU6EMw2EUc/cLdmc2CnJ1c=
Date: Fri, 19 Feb 2021 09:03:23 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Shreesh Adiga <16567adigashreesh@gmail.com>
Subject: Re: [PATCH] staging: rtl8712: cleanup checkpatch.pl warnings
Message-ID: <YC9wyyuT+fpDaCjN@kroah.com>
References: <20210214102601.509326-1-16567adigashreesh@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210214102601.509326-1-16567adigashreesh@gmail.com>
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
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 14, 2021 at 03:56:01PM +0530, Shreesh Adiga wrote:
> Cleanup warnings displayed by checkpatch.pl for the
> file rtl8171x_mlme.c for the below warning:
> WARNING: Avoid multiple line dereference
> 
> Signed-off-by: Shreesh Adiga <16567adigashreesh@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_mlme.c | 112 +++++++++----------------
>  1 file changed, 39 insertions(+), 73 deletions(-)

Always run checkpatch on your patch submission, to ensure that you got
it correct.  If you note, your Subject line is not ok...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
