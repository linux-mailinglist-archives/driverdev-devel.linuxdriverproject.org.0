Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2C81D4FD5
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 16:02:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BDE8A87DD5;
	Fri, 15 May 2020 14:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sZb1xAx8hk72; Fri, 15 May 2020 14:01:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A27687D51;
	Fri, 15 May 2020 14:01:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB3791BF2A1
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 14:01:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B3B4A2E4F6
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 14:01:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wwAugriXsgPd for <devel@linuxdriverproject.org>;
 Fri, 15 May 2020 14:01:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E1E6D2D12C
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 14:01:46 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BAA720671;
 Fri, 15 May 2020 14:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589551306;
 bh=yb8R+GOwH48wvwdqIqTwFW7+aoOd4AT8rCjotJZTQ5Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wnJ15YHkDuxgPEDcXu0Asv5Ce+o7iO7Wr9Vqz3062cKJXLxMjiTp6zCv53ly7VTwn
 zTRdyxO4zrNhGnifGAZdjAqGGZcU57JnmTJUQSRpklPeVbcKozjUUmR8jOQUwCw9vU
 sD9NW5ewrlCGr5FkboTSR5IsFKMhMqwkayD1myzg=
Date: Fri, 15 May 2020 16:01:28 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 05/19] staging: wfx: fix coherency of hif_scan() prototype
Message-ID: <20200515140128.GA2182376@kroah.com>
References: <20200515083325.378539-1-Jerome.Pouiller@silabs.com>
 <20200515083325.378539-6-Jerome.Pouiller@silabs.com>
 <20200515135359.GA2162457@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515135359.GA2162457@kroah.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 15, 2020 at 03:53:59PM +0200, Greg Kroah-Hartman wrote:
> On Fri, May 15, 2020 at 10:33:11AM +0200, Jerome Pouiller wrote:
> > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > =

> > The function hif_scan() return the timeout for the completion of the
> > scan request. It is the only function from hif_tx.c that return another
> > thing than just an error code. This behavior is not coherent with the
> > rest of file. Worse, if value returned is positive, the caller can't
> > make say if it is a timeout or the value returned by the hardware.
> > =

> > Uniformize API with other HIF functions, only return the error code and
> > pass timeout with parameters.
> > =

> > Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > ---
> >  drivers/staging/wfx/hif_tx.c | 6 ++++--
> >  drivers/staging/wfx/hif_tx.h | 2 +-
> >  drivers/staging/wfx/scan.c   | 6 +++---
> >  3 files changed, 8 insertions(+), 6 deletions(-)
> =

> This patch fails to apply to my branch, so I've stopped here in the
> patch series.
> =

> Can you rebase and resend the remaining ones?

Ok, all others worked, just this one failed, so I've applied them.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
