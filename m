Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B034C4E8FA
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 15:24:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9336887FE3;
	Fri, 21 Jun 2019 13:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UBJ1VcLfFPTq; Fri, 21 Jun 2019 13:24:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 282B387F38;
	Fri, 21 Jun 2019 13:24:05 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6973F1BF359
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 13:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 664BA860C2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 13:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g5kvcbwczDnp
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 13:24:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9273A860BE
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 13:24:02 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id e189so4606310oib.11
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RnN3tzKCODk4EnLJdJxip53DvvV4zuBsuSI+0ilGVS0=;
 b=gAE00thCTK3RcadnK9x97i5yXCehj0IPlK0mVl4V7zWcB3zXXlFU0THkmrLw7sfVjT
 O0MaZQ8g1xWD8DR4AeAbzGDVwN2TjZ4wAT0PPnMAIrAAJyr0Yzwp6OiowNcIswb2+RU7
 1iAS9I3Y9uQjSpuDL34xDTzTpfGxJGqCWv036wcOF6LuSNjVHCG5cm0SR3PdnfPRIaII
 p1i/sB0+91uxEieqvMfDdq8C8MgT1tiWlXqIeUKCpaXc66QFQLQzqqv7Uuu6sMAwb7Lj
 UZny7m2HC0DMw3viCFIt2cRigipBlAlPS+2/sIINp+zUund03tv75RwIXzjAB2qc1nuv
 VssQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RnN3tzKCODk4EnLJdJxip53DvvV4zuBsuSI+0ilGVS0=;
 b=HsRw/JX/OK+suPfNZLaRCfCL47rkbtINqGeNIaTnl7H98ylKfFh3C1sv9ujK4kCGAO
 6D2lrSd8K++CtY+mPNvOdlwN44aQbf20SNHoHvDWajRLZ574Uyk29bSoTJWm/3jCpCAX
 HyeliH4D1b+VW6gNTDnpszsOikAEfHhXdPK/aXsDnc2Hr3jwcerc4EvKS04k31Y2KIKj
 4iFZG6eM+6/zRS/7nQYsZaRpYgIesRvfc+N6js/fqJ3gxR6s3bK/DXwmryoMex6QrXCh
 u4tWhJBK2GB00jV+l1MDvA+CRvZqF8WWW4g+rFJ900SSgiigCYttUmipZdJCXgKM+aOH
 oJxw==
X-Gm-Message-State: APjAAAUb6hNQuKRB36ajhX/bt5kpGMdUxGI2HXBU83Ik6gzSZjN9l87J
 gU6u1U3N+M2ZTfV+cNICPuSmXrB8USW5bKyeJmE=
X-Google-Smtp-Source: APXvYqy9NNT/emhdiNaFQq6Wz4HAMaQG0QgHwm6Igxcxu+PeekYpB1ZvWVAqvTj5uQAals+319jwNMisDY1k9rDvY88=
X-Received: by 2002:aca:f03:: with SMTP id 3mr2734339oip.166.1561123441763;
 Fri, 21 Jun 2019 06:24:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190621061517.24089-1-sergio.paracuellos@gmail.com>
 <a512ac38-e30f-5011-0764-3029d320f10c@kernel.org>
In-Reply-To: <a512ac38-e30f-5011-0764-3029d320f10c@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 21 Jun 2019 15:23:50 +0200
Message-ID: <CAMhs-H-sbpMpAm4UfH05fadE9g-01XJaJfXdNPyyX0dxU8Om-w@mail.gmail.com>
Subject: Re: [PATCH 0/4] staging: mt7621-pci: Handle minor issues
To: Greg Ungerer <gerg@kernel.org>
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
Cc: NeilBrown <neil@brown.name>, Greg KH <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On Fri, Jun 21, 2019 at 2:35 PM Greg Ungerer <gerg@kernel.org> wrote:
>
> Hi Sergio,
>
> On 21/6/19 4:15 pm, Sergio Paracuellos wrote:
> > This patch series properly handle minor issues in this driver. These are:
> > * Disable pcie port clock on pci dirver instead of doing it in the phy
> >    driver. The pci driver is the correct place to do this.
> > * Add a missing call to phy_exit function to properly handle the function
> >    'mt7621_pcie_init_port' error path.
> > * Move driver to init in a later stage using 'module_init' instead of using
> >    'arch_initcall'.
> >
> > Patches are only compile-tested. It would be awasome to be tested before applied
> > them (mainly the change to 'module_init' stuff).
>
> Quick test - not though or extensive.
> On 3 boots it successfully booted for me twice with:
>
> rt2880-pinmux pinctrl: pcie is already enabled
> mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> mt7621-pci 1e140000.pcie: Port 0 N_FTS = 1b102800
> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> mt7621-pci 1e140000.pcie: Port 1 N_FTS = 1b102800
> mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> mt7621-pci 1e140000.pcie: Port 2 N_FTS = 1b102800
> mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> mt7621-pci 1e140000.pcie: PCIE0 enabled
> mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
> mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
> pci_bus 0000:00: root bus resource [io  0xffffffff]
> pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
> pci_bus 0000:00: root bus resource [bus 00-ff]
> pci 0000:00:00.0: [0e8d:0801] type 01 class 0x060400
> pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x7fffffff]
> pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x0000ffff]
> pci 0000:00:00.0: supports D1
> pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
> pci 0000:01:00.0: [168c:003c] type 00 class 0x028000
> pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x001fffff 64bit]
> pci 0000:01:00.0: reg 0x30: [mem 0x00000000-0x0000ffff pref]
> pci 0000:01:00.0: supports D1 D2
> pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> pci 0000:00:00.0:   bridge window [io  0x0000-0x0fff]
> pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff]
> pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff pref]
> pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 01
> pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000000]
> pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x80000000]
> pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x601fffff]
> pci 0000:00:00.0: BAR 9: assigned [mem 0x60200000-0x602fffff pref]
> pci 0000:00:00.0: BAR 1: assigned [mem 0x60300000-0x6030ffff]
> pci 0000:00:00.0: BAR 7: no space for [io  size 0x1000]
> pci 0000:00:00.0: BAR 7: failed to assign [io  size 0x1000]
> pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-0x601fffff 64bit]
> pci 0000:01:00.0: BAR 6: assigned [mem 0x60200000-0x6020ffff pref]
> pci 0000:00:00.0: PCI bridge to [bus 01]
> pci 0000:00:00.0:   bridge window [mem 0x60000000-0x601fffff]
> pci 0000:00:00.0:   bridge window [mem 0x60200000-0x602fffff pref]
> pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
> pcieport 0000:00:00.0: enabling device (0004 -> 0006)
>
> PCI devices worked ok on the 2 good boots.

Perfect, thanks for testing this.

>
> Regards
> Greg

Best regards,
    Sergio Paracuellos
>
>
>
> > Hope this helps.
> >
> > Best regards,
> >      Sergio Paracuellos
> >
> > Sergio Paracuellos (4):
> >    staging: mt7621-pci: disable pcie port clock if there is no pcie link
> >    staging: mt7621-pci: add phy exit call if phy_power_on call fails
> >    staging: mt7621-pci-phy: remove disable clock from the phy exit
> >      function
> >    staging: mt7621-pci: use 'module_init' instead of 'arch_initcall'
> >
> >   drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c |  8 --------
> >   drivers/staging/mt7621-pci/pci-mt7621.c         | 10 +++++++++-
> >   2 files changed, 9 insertions(+), 9 deletions(-)
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
