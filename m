Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC4F307EEA
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Jan 2021 20:46:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B902586DD0;
	Thu, 28 Jan 2021 19:46:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NuZMSipKkwbU; Thu, 28 Jan 2021 19:46:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D080A86C2B;
	Thu, 28 Jan 2021 19:46:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9084C1BF3E3
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 19:45:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8B67E2038A
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 19:45:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zYdWeq0d-e-o for <devel@linuxdriverproject.org>;
 Thu, 28 Jan 2021 19:45:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0AF262033D
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 19:45:57 +0000 (UTC)
Received: from archlinux (cpc108967-cmbg20-2-0-cust86.5-4.cable.virginm.net
 [81.101.6.87])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB15864E34;
 Thu, 28 Jan 2021 19:45:55 +0000 (UTC)
Date: Thu, 28 Jan 2021 19:45:51 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.11-rc5
Message-ID: <20210128194551.76c76cfe@archlinux>
In-Reply-To: <YA7Q0XZMIdudb6x9@kroah.com>
References: <YA1u24kUPB+B7gKY@kroah.com>
 <CAHk-=whe0kHRKsNegF+JxCooS_Z0otcEX_Ggz=iN2v3D1Rssxg@mail.gmail.com>
 <YA7Q0XZMIdudb6x9@kroah.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 William Breathitt Gray <vilhelm.gray@gmail.com>, devel@linuxdriverproject.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 25 Jan 2021 15:08:17 +0100
Greg KH <gregkh@linuxfoundation.org> wrote:

> On Sun, Jan 24, 2021 at 11:31:59AM -0800, Linus Torvalds wrote:
> > On Sun, Jan 24, 2021 at 4:58 AM Greg KH <gregkh@linuxfoundation.org> wrote:  
> > >
> > > David Lechner (1):
> > >       counter:ti-eqep: remove floor  
> > 
> > I'm not sure why that ti-eqep counter driver seems to be in your
> > "iio/staging" pile rather than "char/misc", but whatever..  
> 
> Jonathan said why that was needed, I think it was due to fixes in the
> counter core code, but he can verify this better than I can...

Hi Linus / Greg,

Bit of history involved here...

The counter drivers started out as just another sensor type
under IIO, but ended up pushing the boundaries of the ABI a lot -
ultimately making it clear that they really didn't fit in IIO.
William came up with a better abstraction / framework that
became drivers/counter/, but currently the patch flow for
drivers/counter/ is sufficiently low that I handle their
patches along side IIO rather than via a separate tree.

There is also a cross dependency because of legacy IIO ABI
though we are aiming to drop that either this cycle or next.

Hope that clears it up.  If either of you would prefer
it a different way in future let me know.

This particular fix was local to the driver - it was pretending
it supported something that hardware couldn't actually do.

Thanks,

Jonathan

> 
> thanks,
> 
> greg k-h

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
