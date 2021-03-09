Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B22332941
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 15:55:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C7F9C430DD;
	Tue,  9 Mar 2021 14:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VA1omIr0dTI8; Tue,  9 Mar 2021 14:55:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A11840192;
	Tue,  9 Mar 2021 14:55:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C84A01BF288
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 14:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B47DC83D8A
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 14:54:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fiDqJpyd-T98 for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 14:54:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A170383CD5
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 14:54:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A476C65243;
 Tue,  9 Mar 2021 14:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615301691;
 bh=LX8COxWHcZN3mnZCsrWVPMO9Ej7yuJq5C2KwQ6bnL+Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=laH7oULGQuFnAHGFGHABK0yPU9CPBFsZ4TdKkJqjldRGjv6goyAacRWfPQuxO3FjJ
 iJ45kRUfy+iI5NYF30aOC9hBApIfWGMybRTElvaSDBwE2DmDl/T/UvnrjmZyfLC81C
 6hbZKMxx4BiFqHXAvc3kpobwekoqd4BFjQVO/V1E=
Date: Tue, 9 Mar 2021 15:54:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH] staging: wfx: remove unused included header files
Message-ID: <YEeMOILptrEY2WTV@kroah.com>
References: <20210211143637.GA177425@LEGION> <5120192.kWiexivLR2@pc-42>
 <YEdzHxR2VOwS8Fr/@kroah.com> <2505525.pDR9D5mlbe@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2505525.pDR9D5mlbe@pc-42>
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
 Muhammad Usama Anjum <musamaanjum@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 09, 2021 at 02:45:56PM +0100, J=E9r=F4me Pouiller wrote:
> On Tuesday 9 March 2021 14:07:43 CET Greg KH wrote:
> > On Thu, Mar 04, 2021 at 10:43:45AM +0100, J=E9r=F4me Pouiller wrote:
> > > Hello Greg,
> > >
> > > On Tuesday 2 March 2021 16:01:25 CET J=E9r=F4me Pouiller wrote:
> > > > Hello Muhammad,
> > > >
> > > > Sorry, I am a bit late for the review of this patch. Thank you for =

> your
> > > > contribution.
> > > >
> > > > On Thursday 11 February 2021 15:36:37 CET Muhammad Usama Anjum =

> wrote:
> > > > >
> > > > > Many header files have been included, but never used. Those =

> header
> > > > > files have been removed.
> > > > >
> > > > > Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
> > > > > ---
> > > > >  drivers/staging/wfx/bh.c              | 1 -
> > > > >  drivers/staging/wfx/bh.h              | 4 ----
> > > > >  drivers/staging/wfx/bus.h             | 3 ---
> > > > >  drivers/staging/wfx/bus_sdio.c        | 6 ------
> > > > >  drivers/staging/wfx/bus_spi.c         | 7 -------
> > > > >  drivers/staging/wfx/data_rx.c         | 5 -----
> > > > >  drivers/staging/wfx/data_tx.c         | 5 -----
> > > > >  drivers/staging/wfx/data_tx.h         | 3 ---
> > > > >  drivers/staging/wfx/debug.c           | 6 ------
> > > > >  drivers/staging/wfx/fwio.c            | 2 --
> > > > >  drivers/staging/wfx/hif_api_cmd.h     | 4 ----
> > > > >  drivers/staging/wfx/hif_api_general.h | 9 ---------
> > > > >  drivers/staging/wfx/hif_tx.c          | 4 ----
> > > > >  drivers/staging/wfx/hif_tx_mib.c      | 5 -----
> > > > >  drivers/staging/wfx/hwio.c            | 3 ---
> > > > >  drivers/staging/wfx/hwio.h            | 2 --
> > > > >  drivers/staging/wfx/key.c             | 2 --
> > > > >  drivers/staging/wfx/key.h             | 2 --
> > > > >  drivers/staging/wfx/main.c            | 7 -------
> > > > >  drivers/staging/wfx/main.h            | 3 ---
> > > > >  drivers/staging/wfx/queue.c           | 4 ----
> > > > >  drivers/staging/wfx/queue.h           | 3 ---
> > > > >  drivers/staging/wfx/scan.h            | 2 --
> > > > >  drivers/staging/wfx/sta.c             | 6 ------
> > > > >  drivers/staging/wfx/sta.h             | 2 --
> > > > >  drivers/staging/wfx/traces.h          | 3 ---
> > > > >  drivers/staging/wfx/wfx.h             | 3 ---
> > > > >  27 files changed, 106 deletions(-)
> > > > >
> > > > > diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> > > > > index ed53d0b45592..cd6bcfdfbe9a 100644
> > > > > --- a/drivers/staging/wfx/bh.c
> > > > > +++ b/drivers/staging/wfx/bh.c
> > > > > @@ -5,7 +5,6 @@
> > > > >   * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
> > > > >   * Copyright (c) 2010, ST-Ericsson
> > > > >   */
> > > > > -#include <linux/gpio/consumer.h>
> > > > >  #include <net/mac80211.h>
> > > >
> > > > Though bh.c refers to gpiod_set_value_cansleep()
> > > >
> > > >
> > > > >  #include "bh.h"
> > > > > diff --git a/drivers/staging/wfx/bh.h b/drivers/staging/wfx/bh.h
> > > > > index 78c49329e22a..92ef3298d4ac 100644
> > > > > --- a/drivers/staging/wfx/bh.h
> > > > > +++ b/drivers/staging/wfx/bh.h
> > > > > @@ -8,10 +8,6 @@
> > > > >  #ifndef WFX_BH_H
> > > > >  #define WFX_BH_H
> > > > >
> > > > > -#include <linux/atomic.h>
> > > > > -#include <linux/wait.h>
> > > > > -#include <linux/workqueue.h>
> > > > > -
> > > > >  struct wfx_dev;
> > > > >
> > > > >  struct wfx_hif {
> > > >
> > > > Ditto, bh.h refers to atomic_t, struct work_struct and struct
> > > > completion. If you try to compile bh.h alone (with something like
> > > > gcc -xc .../bh.h) it won't work.
> > > >
> > > > Maybe it works now because we are lucky in the order the headers =

> are
> > > > included, but I think it is not sufficient.
> > > >
> > > > [... same problem repeats multiple times in the following ...]
> > > >
> > >
> > > Greg, if nobody has any opinion on that, I think that this patch =

> should
> > > be reverted.
> > =

> > Nothing is breaking, why should it be reverted?
> =

> Because it is less maintainable?
>  =

> > You never build a .h file alone :)
> =

> hmmm... notwithstanding, I thing that the code should not depend on the =

> order the headers are included. You don't?
>  =

> > Anyway, sure, I'll revert it, what is the commit id?
> =

> commit 314fd52f01ea "staging: wfx: remove unused included header files"

Now reverted, thanks.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
