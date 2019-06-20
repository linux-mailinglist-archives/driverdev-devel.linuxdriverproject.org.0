Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE29A4CDC3
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 14:31:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 40DBC21FF8;
	Thu, 20 Jun 2019 12:31:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sGPkOWsuWGTr; Thu, 20 Jun 2019 12:31:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7EE3420505;
	Thu, 20 Jun 2019 12:31:06 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 467861BF282
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 12:31:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4331320505
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 12:31:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sgNp9MJgQx7z
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 12:31:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 801DA20376
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 12:31:03 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B6E28206E0;
 Thu, 20 Jun 2019 12:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561033863;
 bh=jQHkZMV97+X+Tf7VJEr/M0rOzom7WcZvn4tETHW036g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YLnb7SBvy2Zhy00eT+UWr/cvXgfnbJPEKPu7L79fuxEt1yGehFiKFHrVvSG9xkGwi
 QEl07dPyOJII2b7QMZHNdZr1cT1+dBnMvQqQO8Fq2nXHySZc6ygj24WLmc1Tr94qB6
 rRKb7VaCycIWyxWsxFr+jPT+8otexrg5zTD6COPU=
Date: Thu, 20 Jun 2019 14:31:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH 0/4] staging: mt7621-pci: Use gpio perst instead builtin
 behaviour
Message-ID: <20190620123100.GA19733@kroah.com>
References: <20190619074458.31112-1-sergio.paracuellos@gmail.com>
 <0bedcd6b-4781-ffd2-b59c-76cd555912a7@kernel.org>
 <CAMhs-H-Qn2aBkCHCCuJhFEGG=CvUix6UHsRZRzm5QhNd8S9BMA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMhs-H-Qn2aBkCHCCuJhFEGG=CvUix6UHsRZRzm5QhNd8S9BMA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: NeilBrown <neil@brown.name>, driverdev-devel@linuxdriverproject.org,
 Greg Ungerer <gerg@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 20, 2019 at 07:20:52AM +0200, Sergio Paracuellos wrote:
> Hi Greg,
> 
> On Thu, Jun 20, 2019 at 2:40 AM Greg Ungerer <gerg@kernel.org> wrote:
> >
> > Hi Sergio,
> >
> > On 19/6/19 5:44 pm, Sergio Paracuellos wrote:
> > > Some boards seems to ignore builtin perst configuration and use gpio
> > > instead. This approach seems to be more common. Hence, update the driver
> > > to properly use gpio perst via gpio descriptor's API.
> > >
> > > For more information refer to [1].
> > >
> > > Even with this set of patches applied, there still seems to have some issues
> > > with a non stable pci link through the boot process. This will be resolved
> > > in nest patch series when the problem is find.
> > >
> > > Patches are only compile-tested. It would be good to test them before being
> > > applied.
> > >
> > > [1]: http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2019-June/134947.html
> > >
> > > Sergio Paracuellos (4):
> > >    staging: mt7621-pci: fix two messages in driver code
> > >    staging: mt7621-pci: use gpio perst instead of builtin behaviour
> > >    staging: mt7621-dts: add gpio perst to pcie bindings node
> > >    staging: mt7621-pci: dt-bindings: add perst-gpio to sample bindings
> > >
> > >   drivers/staging/mt7621-dts/mt7621.dtsi        |   2 +
> > >   .../mt7621-pci/mediatek,mt7621-pci.txt        |   2 +
> > >   drivers/staging/mt7621-pci/pci-mt7621.c       | 108 ++++++++++--------
> > >   3 files changed, 63 insertions(+), 49 deletions(-)
> >
> > Thanks for putting this together.
> >
> > I tried a quick test, applying this onto a linux-5.2.0-rc5 kernel and
> > saw this in the boot trace:
> >
> >    ...
> >    rt2880-pinmux pinctrl: pcie is already enabled
> >    mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
> >    ...
> >
> > The system went on to boot successfully, with PCI working.
> >
> > Testing across multiple boots, it sometimes hangs - but we know about that
> > and it is what we are still looking into.
> 
> Ok, thanks for testing this. Let's apply this patch series first.
> 
> GregKH, can we also apply this for linux-stable? kernel 5.1. Should I
> sent anything else for that?

Which specific patch(s) are needed for 5.1?  What about 5.2-final?

How about we just merge these into 5.3-rc1 and then you send
stable@vger.kernel.org the git commit ids that you want backported to
5.2?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
