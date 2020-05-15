Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2EB1D5350
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 17:09:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B6326203AF;
	Fri, 15 May 2020 15:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DtLlsLmtVtcN; Fri, 15 May 2020 15:09:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BE2512E61D;
	Fri, 15 May 2020 15:09:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E425F1BF277
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 15:09:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E100889A0F
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 15:09:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8DkwDxTzzAIG for <devel@linuxdriverproject.org>;
 Fri, 15 May 2020 15:09:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E83B989979
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 15:09:36 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 448D1207C3;
 Fri, 15 May 2020 15:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589555376;
 bh=ys1V8HWNqH20yXhWtg1p2L+pPQ1fwqd8rYNvrPx95UM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lS2YsSuumgPFlql65mzaXT7bI02mBOVqmqPUIPQyGjNbMP5CjS5Yhe8iytrsPHNBA
 tLSKzTBJMMCHJ6v2uY+1HJrYDJ2cXMayZvliNSfnz/+NIV5gi36XTpsgnxCH9qfbCy
 cFaTWRXjEkqX+lEvr958G7qHow4nV5GAWGgH7OoI=
Date: Fri, 15 May 2020 17:09:34 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH 05/19] staging: wfx: fix coherency of hif_scan() prototype
Message-ID: <20200515150934.GA2573363@kroah.com>
References: <20200515083325.378539-1-Jerome.Pouiller@silabs.com>
 <20200515083325.378539-6-Jerome.Pouiller@silabs.com>
 <20200515135359.GA2162457@kroah.com> <15113296.vvBLmrQuJQ@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15113296.vvBLmrQuJQ@pc-42>
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

On Fri, May 15, 2020 at 05:03:40PM +0200, J=E9r=F4me Pouiller wrote:
> On Friday 15 May 2020 15:53:59 CEST Greg Kroah-Hartman wrote:
> > On Fri, May 15, 2020 at 10:33:11AM +0200, Jerome Pouiller wrote:
> > > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > >
> > > The function hif_scan() return the timeout for the completion of the
> > > scan request. It is the only function from hif_tx.c that return anoth=
er
> > > thing than just an error code. This behavior is not coherent with the
> > > rest of file. Worse, if value returned is positive, the caller can't
> > > make say if it is a timeout or the value returned by the hardware.
> > >
> > > Uniformize API with other HIF functions, only return the error code a=
nd
> > > pass timeout with parameters.
> > >
> > > Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > > ---
> > >  drivers/staging/wfx/hif_tx.c | 6 ++++--
> > >  drivers/staging/wfx/hif_tx.h | 2 +-
> > >  drivers/staging/wfx/scan.c   | 6 +++---
> > >  3 files changed, 8 insertions(+), 6 deletions(-)
> > =

> > This patch fails to apply to my branch, so I've stopped here in the
> > patch series.
> =

> Hello Greg,
> =

> Did you applied the patch called "staging: wfx: unlock on error path" from
> Dan?

I have no idea :)

> (I wrote that information in the introduction letter, but maybe I would
> had include the Dan's patch in my PR?)

I think you should have, as my queue is empty now.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
