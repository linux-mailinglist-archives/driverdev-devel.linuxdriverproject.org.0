Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B40C1914DA
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Mar 2020 16:42:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 09BE7869DE;
	Tue, 24 Mar 2020 15:42:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id POMiW0RiMuxF; Tue, 24 Mar 2020 15:42:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ECC2885F85;
	Tue, 24 Mar 2020 15:42:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EDDF21BF3C4
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 15:42:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DEF4E88C8E
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 15:42:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J5x+XDa9JLKn for <devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 15:42:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5A6EB88C8A
 for <devel@driverdev.osuosl.org>; Tue, 24 Mar 2020 15:42:22 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE5A820714;
 Tue, 24 Mar 2020 15:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585064542;
 bh=iY0iQy8M8M9PlPZnJFM5YPoDv72kOb7VIAOeqRPiEr4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IlLuGC74jPz7CHp6TqNiqQThNKA/sJDDbmlEjIAvKxA6pA5tOSsRUyZ+zAOsV06HO
 TRVl1xNKlH6/YSc6lMm7YGYmF+IR4zkyXm3zSS4QLK8YAR9aKJ4O+fMbYQQIUglCtk
 HymrUB7OUvyj7O9y/47EZr41SeYXXRGs3mYuK1+0=
Date: Tue, 24 Mar 2020 16:42:19 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bastien Nocera <hadess@hadess.net>
Subject: Re: [PATCH resend 3] staging: rtl8188eu: Add rtw_led_enable module
 parameter
Message-ID: <20200324154219.GB2513347@kroah.com>
References: <97d2ef68a6bcb7d1ece978eef6315e95732ca39d.camel@hadess.net>
 <20200324152040.GA2511658@kroah.com>
 <73723ab7d2c64c7d5ce7e2ae05b857c965824168.camel@hadess.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73723ab7d2c64c7d5ce7e2ae05b857c965824168.camel@hadess.net>
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
Cc: devel@driverdev.osuosl.org, linux-wireless@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 24, 2020 at 04:21:47PM +0100, Bastien Nocera wrote:
> On Tue, 2020-03-24 at 16:20 +0100, Greg Kroah-Hartman wrote:
> > On Tue, Mar 24, 2020 at 11:36:00AM +0100, Bastien Nocera wrote:
> > > Make it possible to disable the LED, as it can be pretty annoying
> > > depending on where it's located.
> > > 
> > > See also https://github.com/lwfinger/rtl8188eu/pull/304 for the
> > > out-of-tree version.
> > > 
> > > Signed-off-by: Bastien Nocera <hadess@hadess.net>
> > > ---
> > >  drivers/staging/rtl8188eu/core/rtw_led.c      | 6 ++++++
> > >  drivers/staging/rtl8188eu/include/drv_types.h | 2 ++
> > >  drivers/staging/rtl8188eu/os_dep/os_intfs.c   | 5 +++++
> > >  3 files changed, 13 insertions(+)
> > 
> > Why was this resent?  Didn't I just reject this?
> 
> It wasn't resent, it's the same mail you already answered.

Ah, slow mailing lists, sorry :)

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
