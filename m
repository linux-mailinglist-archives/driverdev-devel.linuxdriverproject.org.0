Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA295249F4
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 10:14:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB918873DE;
	Tue, 21 May 2019 08:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y-po3+nCe5a5; Tue, 21 May 2019 08:14:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5259787410;
	Tue, 21 May 2019 08:14:55 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7EDDF1BF2C5
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:14:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 78292817FB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:14:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aZJlpvyD1Es8
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:14:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 297E086235
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:14:52 +0000 (UTC)
Received: by mail-oi1-f175.google.com with SMTP id 203so12076418oid.13
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 01:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P7vVIoqkoTD9rkQjrJ2sCdKra4EP+RO+3dgeAsd+JrM=;
 b=EpWtcxyA8lzu2lfI8LDsnnFgmD/fMG54P1MQ3b5s/fQfCrMkbW/P+B+QkTi6zdNtM1
 TXWtzR0HvahjKD0Vn/PR+kTPJB5L4Ke937Eh64NSmWqfmgE6pxX9DydoqyZOVyRaf8OY
 NbvTC532LAwfF1o16Ql27x5svrQ3SFMtsUEjc2wQDXBlXqxQfZgdX7WugG5v0NnqHVRg
 kqKWUi1HdaUqnvFceDItvVULDk5LM8Td/mRZqAU/tLN3gEbITeZp1W71kzuedKOn4dNV
 xcxTE+rzaRrQ89WNl6ysujakn1uBa+4Yg08vgvCxHooz65zt1OBlbouK1ZUBlCw0Ydao
 eKNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P7vVIoqkoTD9rkQjrJ2sCdKra4EP+RO+3dgeAsd+JrM=;
 b=PZ5fP8y1XI++R0F6uyjEoLCSmPfE54WYE6yJpnHf6sL5zHmk8Rfr8HNCBVCzGiTdx0
 z8OF3584sfY0Y3qb05ibXSuOuymWwjU6J6HijwZ8xn5En906cPqCD8xCj1jz55e6zBJ1
 A30GVVp4y5+NDwTYYSMX6tBE+Wmn2vTnRwSVkHNjVI++eevHqdeXKbJvp96DoRd1ykHl
 1fTA633KmGS68vQrCrASFF/A+LPYkYVtpCYWwMFjCNlzdpkKoErZAwQSC5rPYce2CJ0W
 HIDWuLjVK9Ukf7f7OOiB3K1gSazpRQrYovdiMKuUzBVK2+gB1vdNCcjroMjsj1LMQugA
 GJYQ==
X-Gm-Message-State: APjAAAVxUfvvlWU0B4A+t0fqOxWF5f+o+HXBcQ2edwRfprzVVX2aVIz5
 9fU18sAZaTOAJpBbumodA3YNyg0TJhS+0a/IQf0=
X-Google-Smtp-Source: APXvYqxSBIhm7PanXKTsrok+sLXCG+fSe2xuQfqYQny4VeALmXYMRMupCILXzZ+1SVUJHHO/FmvMTE2/BGEsZEJidaQ=
X-Received: by 2002:aca:ac43:: with SMTP id v64mr2594998oie.40.1558426491360; 
 Tue, 21 May 2019 01:14:51 -0700 (PDT)
MIME-Version: 1.0
References: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
In-Reply-To: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Tue, 21 May 2019 10:14:40 +0200
Message-ID: <CAMhs-H-Js2wiF5yH3pB5bFq9SE1X17OovsXtYuNH+obe0owknw@mail.gmail.com>
Subject: Re: staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
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
Cc: NeilBrown <neil@brown.name>, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On Tue, May 21, 2019 at 8:44 AM Greg Ungerer <gerg@kernel.org> wrote:
>
>
> Hi Sergio,
>
> I am working on a couple of different MedaiTek MT7621 based platforms
> and am having problems with the PCI bus on those.
>
> Big picture is that the PCI bus on my boards worked in linux-4.20
> (with the obvious compilation breakage fixed), and it does not work
> in linux-5.0 or linux-5.1.
>
> On linux-4.20 the PCI bus probe at kernel boot looks like this:
>
> ***** Xtal 40MHz *****
> PCIE1 no card, disable it(RST&CLK)
> PCIE2 no card, disable it(RST&CLK)
> PCIE0 enabled
> PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
> mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
> pci_bus 0000:00: root bus resource [io  0xffffffff]
> pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
> pci_bus 0000:00: root bus resource [bus 00-ff]
> pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
> pci 0000:00:00.0: PCI bridge to [bus 01-ff]
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
>
> The PCI bus works, and devices on it are found and work as expected.
>
> On linux-5.1 the PCI initialization and probe fails, with the kernel
> locking up:
>
> ...
> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
> mt7621-pci 1e140000.pcie: Initiating port 0 failed
> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> mt7621-pci 1e140000.pcie: Initiating port 1 failed
> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
> mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
>
> The lockup is in mt7621_pci_phy_power_off(), at the phy_read() call.
> If I modify that code and return immediately in that mt7621_pci_phy_power_off()
> the systemboots - but obviously from the above you can see that the PCI bus
> and no devices were detected.

There are two changes with this two commits:

commit 36d657b011ef49b549aae44d0fe49ce845beb975
Author: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Wed Apr 17 13:58:38 2019 +0200

    staging: mt7621-pci-phy: convert driver to use kernel regmap API's

    Instead of using writel and readl use regmap API which makes
    the driver maintainability easier.

    Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

commit 9445ccb3714c78c26a3a25fafed4d9d965080431
Author: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Wed Apr 17 13:58:37 2019 +0200

    staging: mt7621-pci-phy: add quirks for 'E2' revision using
'soc_device_attribute'

    Depending on revision of the chip, 'mt7621_bypass_pipe_rst' function
    must be executed. Add better support for this using 'soc_device_match'
    in driver probe function.

    Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

So, I added a quirk for E2 revision of the board as I was suggested to
do by the phy
tree maintainer, and this is the only place I can think the problem could be.

I think all te changes before this was properly tested by Neil and
results in a working
PCI.

>
> Copying in the working linux-4.20 pci-mt7621.c into place on
> linux-5.1 results in a working PCI bus also. I have 2 very different
> MT7621 based boards, and they both exhibit this same problem.
>
> I tried bisecting that back to find the problem commit.
> It was not at all easy with quite a few of the mt7621 PCI related
> patches not building in isolation while bisecting. But ultimately
> I got to commit 745eeeac68d7 ("staging: mt7621-pci: factor out
> 'mt7621_pcie_enable_port' function").

Sorry for your time in this and for the problems with isolation patches. I'll
do my best from now to this don't happen again. The problem commit
you are pointing out here had problems at first because depending on the
revision of the chip the reset lines are inverted but this was properly fixed in
this other commit:

commit e51844bf825169024e0c743a92cf264e27f2366f
Author: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Sat Nov 24 18:54:54 2018 +0100

    staging: mt7621-pci: fix reset lines for each pcie port

    Depending of chip revision reset lines are inverted. It is also
    necessary to read PCIE_FTS_NUM register before enabling the phy.
    Hence update the code to achieve this.

    Fixes: 745eeeac68d7 ("staging: mt7621-pci: factor out
'mt7621_pcie_enable_port' function")
    Reported-by: NeilBrown <neil@brown.name>
    Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
    Tested-by: NeilBrown <neil@brown.name>
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

>
> Any idea what might be going wrong here?

So I do believe that the problem could be with last phy changes I am
pointed out first with quirks
for your revision don't be executing function 'mt7621_bypass_pipe_rst'
inside 'mt7621_pci_phy_init'.
You should take care of quirks if revision of the board is 'E2'.

Hope this helps.

> Regards
> Greg

Best regards,
     Sergio Paracuellos
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
