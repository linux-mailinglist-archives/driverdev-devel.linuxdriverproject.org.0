Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D93302604
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Jan 2021 15:08:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CF8C027E5E;
	Mon, 25 Jan 2021 14:08:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xHpysbDKz5H8; Mon, 25 Jan 2021 14:08:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 21EDB203EF;
	Mon, 25 Jan 2021 14:08:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 60CDF1BF3AF
 for <devel@linuxdriverproject.org>; Mon, 25 Jan 2021 14:08:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5D4E287398
 for <devel@linuxdriverproject.org>; Mon, 25 Jan 2021 14:08:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QliTVCqeOzVP for <devel@linuxdriverproject.org>;
 Mon, 25 Jan 2021 14:08:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EC689869DA
 for <devel@linuxdriverproject.org>; Mon, 25 Jan 2021 14:08:20 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 03ED12145D;
 Mon, 25 Jan 2021 14:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611583700;
 bh=OvS6YJLr/vKp0c5P4TYdr+9ctcl9Nkqj0yOfYVirDXY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uQlKE63x5yFRjC4SfMJEjHb32OLQAA9iUdxuqjY7zZGRj8GE5YvbayQlXTOTWyLSY
 oQRYRCOMUSCtETKWHl5x6F+94wBQbmRhJ2rP6UV6UyS/OsPoh0pfEzcSbKBjEV6Jn3
 5uIKjtckfZB8928sUdlBfJkxD2+bn6cgMYyH4LIQ=
Date: Mon, 25 Jan 2021 15:08:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Jonathan Cameron <jic23@kernel.org>
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.11-rc5
Message-ID: <YA7Q0XZMIdudb6x9@kroah.com>
References: <YA1u24kUPB+B7gKY@kroah.com>
 <CAHk-=whe0kHRKsNegF+JxCooS_Z0otcEX_Ggz=iN2v3D1Rssxg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whe0kHRKsNegF+JxCooS_Z0otcEX_Ggz=iN2v3D1Rssxg@mail.gmail.com>
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jan 24, 2021 at 11:31:59AM -0800, Linus Torvalds wrote:
> On Sun, Jan 24, 2021 at 4:58 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > David Lechner (1):
> >       counter:ti-eqep: remove floor
> 
> I'm not sure why that ti-eqep counter driver seems to be in your
> "iio/staging" pile rather than "char/misc", but whatever..

Jonathan said why that was needed, I think it was due to fixes in the
counter core code, but he can verify this better than I can...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
