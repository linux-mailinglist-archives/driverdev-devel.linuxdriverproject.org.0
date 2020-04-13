Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C25961A6834
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 16:33:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 84D4684995;
	Mon, 13 Apr 2020 14:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DtLgBuzOHfzh; Mon, 13 Apr 2020 14:33:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 436D481FF4;
	Mon, 13 Apr 2020 14:33:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 213C81BF3A0
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 14:33:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1DACA203FC
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 14:33:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mi1cR7CmPNWj for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 14:33:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 6774F203AB
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 14:33:00 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD30A2072C;
 Mon, 13 Apr 2020 14:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586788380;
 bh=UgsFITWUZlPhGRKvUFEzShkg0Dx45Ysmuw2lAc+SDaM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cPUYRHSRHlx2GAXRo9nMBHjuEpgHckiq3M2LmlISBBRoqZH/M+444UvfX7V5w+lem
 12kt52rKzHQvF8XkB9Ipm1InslQuuJvYlHydBBV5htlnSH2LJ9I4j3Ld5cQI5GOKbN
 YtPX5TEJFVDVOOU5ObxpHQvBduqAQLhbnLZAPXlU=
Date: Mon, 13 Apr 2020 16:32:58 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH v2 1/2] staging: vt6656: Refactor the assignment of the
 phy->signal variable
Message-ID: <20200413143258.GA3551837@kroah.com>
References: <20200411122610.7901-1-oscar.carter@gmx.com>
 <20200411122610.7901-2-oscar.carter@gmx.com>
 <20200413125616.GA3127208@kroah.com> <20200413142517.GB3101@ubuntu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413142517.GB3101@ubuntu>
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Forest Bond <forest@alittletooquiet.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 13, 2020 at 04:25:17PM +0200, Oscar Carter wrote:
> On Mon, Apr 13, 2020 at 02:56:16PM +0200, Greg Kroah-Hartman wrote:
> > On Sat, Apr 11, 2020 at 02:26:09PM +0200, Oscar Carter wrote:
> > > Create a constant array with the values of the "phy->signal" for every
> > > rate. Remove all "phy->signal" assignments inside the switch statement
> > > and replace these with a single reading from the new vnt_phy_signal
> > > array.
> > >
> > > The constant array can be of one dimension because the OR mask with
> > > BIT(3) or BIT(4) allow obtain a second value according to the rate,
> > > the preamble_type and the pkt_type.
> > >
> > > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > > ---
> > >  drivers/staging/vt6656/baseband.c | 105 ++++++++----------------------
> > >  1 file changed, 26 insertions(+), 79 deletions(-)
> >
> > This series did not apply to my tree, please rebase and resend.
> 
> Rebase the patchs is a normal process in the development or am I doing something
> wrong ?

It's normal when multiple people are working on the same area with lots
of patches flying around.  Not a problem, it doesn't bother me at all :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
