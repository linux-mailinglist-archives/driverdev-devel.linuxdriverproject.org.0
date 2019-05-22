Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A03BE25E07
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 08:28:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7CB21861D7;
	Wed, 22 May 2019 06:28:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ly3ojHjiUU_R; Wed, 22 May 2019 06:28:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 69BCA86079;
	Wed, 22 May 2019 06:28:00 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 981BB1BF471
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 06:27:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8FE0C85FC9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 06:27:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wBTF34Rf9kcy
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 06:27:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
 [209.85.167.174])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5903985FA8
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 06:27:56 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id f4so748030oib.4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 23:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t+rWqS68Q2Oq5vZowyKfcMgdMHYWi5TizxMIPGO6GMg=;
 b=X9+wkuzcAvM+it3HgY1EiNmirhYo2ZZbN35q+fD5oigwKK/GiI5L8lk+wBXhJKvDFs
 gfvH7GoUHfHs6YNvIc6zFsMkSQKjzI4dN5WCsf4vrBsMDPLTa6Vg1yaoq++Cb67YF4iQ
 kd7+Ifgd5afQ+jwd7MrNZxL8Zjw5r5K8OGQEGfQB4AmzPJrYTbgmOtPa6AVBEFEe4ULL
 2fBXdRa1cvzJ5W3xLebMmjXUpvfmQlOATBUoXAMTM1m91OW97ThRYESyL9PdsUaUeLAX
 RShL0xIIAn+v+oIwgFqNuks3IBwv9Q1oLygynBM6GeRfDa3ZLqBxCoi9p2CdpcIAfsOJ
 OKKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t+rWqS68Q2Oq5vZowyKfcMgdMHYWi5TizxMIPGO6GMg=;
 b=TBkg2Gk3ykCPLblZ+NrQp5tIlP45adISrlcd1THBvo9G0lS1yzsm7Z5cenVNZkbBjR
 zp305ScUyazW9ufFiRZAjdXHfkoJSjOu051AyMS7U020klCDoFLwn8ddbIm7CYyrfM4/
 eK2Qdv8pziv1FqPHASMvPIPqRn0Vcgw7WYaoKPH2WywaFjov9q5G7m8g8W5huUzLn0xW
 Q0FLcdaK8uYHwXvLjdDIc0glI6VScPXah3+acAX4QGSy2l4D+XEDx76jTk5K04YC+Ace
 Ts3VQnCs7yIgR7EUAqu4ZyjVYbxJDmJGRqb3a0MB2YPG5lXf/P0sVWFLG1+JnO9xAZFa
 SPqA==
X-Gm-Message-State: APjAAAWgdlsngOS2xogMHL4tPOE9HLFMR8CDcbDK26XCCBX2IwlxOKfS
 7Txt9/fvhWGqie7OFQ1CMTW2CPv45R4ljYE/GMM=
X-Google-Smtp-Source: APXvYqwTubsTlTkVgMjy0xF2IkaGUgss2n3FWbO1UUAN8KunT6o1ugsM75sI8qiDktLlN8c8FmRs+k2XDuxSl+f+yrY=
X-Received: by 2002:aca:ac43:: with SMTP id v64mr6363463oie.40.1558506475523; 
 Tue, 21 May 2019 23:27:55 -0700 (PDT)
MIME-Version: 1.0
References: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
 <CAMhs-H-Js2wiF5yH3pB5bFq9SE1X17OovsXtYuNH+obe0owknw@mail.gmail.com>
 <5a7dc59b-f9ef-beab-7221-231f64716d5a@kernel.org>
In-Reply-To: <5a7dc59b-f9ef-beab-7221-231f64716d5a@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Wed, 22 May 2019 08:27:43 +0200
Message-ID: <CAMhs-H-8EQPPy0vMFCG-PKu3RLz4_d0ucO6bCgMCfMuD7ZYRSg@mail.gmail.com>
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

On Wed, May 22, 2019 at 2:20 AM Greg Ungerer <gerg@kernel.org> wrote:
>
> Hi Sergio,
>
> Thanks for the quick response.
>
> On 21/5/19 6:14 pm, Sergio Paracuellos wrote:
> > On Tue, May 21, 2019 at 8:44 AM Greg Ungerer <gerg@kernel.org> wrote:
> >> I am working on a couple of different MedaiTek MT7621 based platforms
> >> and am having problems with the PCI bus on those.
> >>
> >> Big picture is that the PCI bus on my boards worked in linux-4.20
> >> (with the obvious compilation breakage fixed), and it does not work
> >> in linux-5.0 or linux-5.1.
> >>
> >> On linux-4.20 the PCI bus probe at kernel boot looks like this:
> >>
> >> ***** Xtal 40MHz *****
> >> PCIE1 no card, disable it(RST&CLK)
> >> PCIE2 no card, disable it(RST&CLK)
> >> PCIE0 enabled
> >> PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
> >> mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
> >> pci_bus 0000:00: root bus resource [io  0xffffffff]
> >> pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
> >> pci_bus 0000:00: root bus resource [bus 00-ff]
> >> pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
> >> pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> >> pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000000]
> >> pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x80000000]
> >> pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x601fffff]
> >> pci 0000:00:00.0: BAR 9: assigned [mem 0x60200000-0x602fffff pref]
> >> pci 0000:00:00.0: BAR 1: assigned [mem 0x60300000-0x6030ffff]
> >> pci 0000:00:00.0: BAR 7: no space for [io  size 0x1000]
> >> pci 0000:00:00.0: BAR 7: failed to assign [io  size 0x1000]
> >> pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-0x601fffff 64bit]
> >> pci 0000:01:00.0: BAR 6: assigned [mem 0x60200000-0x6020ffff pref]
> >> pci 0000:00:00.0: PCI bridge to [bus 01]
> >> pci 0000:00:00.0:   bridge window [mem 0x60000000-0x601fffff]
> >> pci 0000:00:00.0:   bridge window [mem 0x60200000-0x602fffff pref]
> >>
> >> The PCI bus works, and devices on it are found and work as expected.
> >>
> >> On linux-5.1 the PCI initialization and probe fails, with the kernel
> >> locking up:
> >>
> >> ...
> >> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
> >> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >> mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
> >> mt7621-pci 1e140000.pcie: Initiating port 0 failed
> >> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
> >> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >> mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> >> mt7621-pci 1e140000.pcie: Initiating port 1 failed
> >> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
> >> mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> >> mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> >>
> >> The lockup is in mt7621_pci_phy_power_off(), at the phy_read() call.
> >> If I modify that code and return immediately in that mt7621_pci_phy_power_off()
> >> the systemboots - but obviously from the above you can see that the PCI bus
> >> and no devices were detected.
> >
> > There are two changes with this two commits:
> >
> > commit 36d657b011ef49b549aae44d0fe49ce845beb975
> > Author: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > Date:   Wed Apr 17 13:58:38 2019 +0200
> >
> >      staging: mt7621-pci-phy: convert driver to use kernel regmap API's
> >
> >      Instead of using writel and readl use regmap API which makes
> >      the driver maintainability easier.
> >
> >      Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> >      Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >
> > commit 9445ccb3714c78c26a3a25fafed4d9d965080431
> > Author: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > Date:   Wed Apr 17 13:58:37 2019 +0200
> >
> >      staging: mt7621-pci-phy: add quirks for 'E2' revision using
> > 'soc_device_attribute'
> >
> >      Depending on revision of the chip, 'mt7621_bypass_pipe_rst' function
> >      must be executed. Add better support for this using 'soc_device_match'
> >      in driver probe function.
> >
> >      Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> >      Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >
> > So, I added a quirk for E2 revision of the board as I was suggested to
> > do by the phy
> > tree maintainer, and this is the only place I can think the problem could be.
>
> I took the pci-mt7621.c and pci-mt7621-phy.c from a linux-5.2-rc1,
> which has both those commits. Same behavior, PCI probing locks up
> kernel in mt7621_pci_phy_power_off().
>

I see, thanks for testing these two also.

>
> > I think all te changes before this was properly tested by Neil and
> > results in a working
> > PCI.
>
> Not sure what board Neil is using.
> I am using a Digi/EX15 and I also tried a Digi/TX54 (very different
> boards, very different designs).

Neil's board Is a gnubee board.

>
>
> >> Copying in the working linux-4.20 pci-mt7621.c into place on
> >> linux-5.1 results in a working PCI bus also. I have 2 very different
> >> MT7621 based boards, and they both exhibit this same problem.
> >>
> >> I tried bisecting that back to find the problem commit.
> >> It was not at all easy with quite a few of the mt7621 PCI related
> >> patches not building in isolation while bisecting. But ultimately
> >> I got to commit 745eeeac68d7 ("staging: mt7621-pci: factor out
> >> 'mt7621_pcie_enable_port' function").
> >
> > Sorry for your time in this and for the problems with isolation patches. I'll
>
> FWIW, I do like your changes, they really clean up that code a lot.

Thanks, is cleaner now and should be ready to be upstreamed but it
seems has problems
on some boards yet :)). Let's make it working properly again in all
scenarios :-).

>
>
> > do my best from now to this don't happen again. The problem commit
> > you are pointing out here had problems at first because depending on the
> > revision of the chip the reset lines are inverted but this was properly fixed in
> > this other commit:
> >
> > commit e51844bf825169024e0c743a92cf264e27f2366f
> > Author: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > Date:   Sat Nov 24 18:54:54 2018 +0100
> >
> >      staging: mt7621-pci: fix reset lines for each pcie port
> >
> >      Depending of chip revision reset lines are inverted. It is also
> >      necessary to read PCIE_FTS_NUM register before enabling the phy.
> >      Hence update the code to achieve this.
> >
> >      Fixes: 745eeeac68d7 ("staging: mt7621-pci: factor out
> > 'mt7621_pcie_enable_port' function")
> >      Reported-by: NeilBrown <neil@brown.name>
> >      Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> >      Tested-by: NeilBrown <neil@brown.name>
> >      Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >
> >>
> >> Any idea what might be going wrong here?
> >
> > So I do believe that the problem could be with last phy changes I am
> > pointed out first with quirks
> > for your revision don't be executing function 'mt7621_bypass_pipe_rst'
> > inside 'mt7621_pci_phy_init'.
> > You should take care of quirks if revision of the board is 'E2'.
>
> I checked that revision register on my boards, my MT7621 parts report
> a revision ID of 0x00030103 - so that means they do not match the
> E2 ID. Tracing the code they do not go through mt7621_bypass_pipe_rst().
> And that is true even in the older linux-4.20 driver, it does not
> execute that bypass routine.
>
> Although the lock up is bad, the real issue is that the probe of
> PCI0 is not finding any cards - and it should.
>
> I tried restoring some of the probe code from linux-4.20 and had some
> inconsistent success. But I haven't been able to point to exactly what
> the problem is.

There are some big changes between 4.20 and 5.x. One is the use of PERST_N
instead of using gpio. This PERT_N stuff is used now on enable ports
assuming the
link of PCI is properly detected after enabling the phy. And it seems
it is not according to
your dmesg traces. The previous 4.20 code used gpio before this was done.

This code is the one I am referring:

/* Use GPIO control instead of PERST_N */
*(unsigned int *)(0xbe000620) |= BIT(19) | BIT(8) | BIT(7); // set DATA
mdelay(1000);

I assume reset lines on your device tree are properly set up which is
other of the big changes here: use
reset lines instead of that hardcoding stuff. Also, the
mt7621_reset_port routine is also using msleep(100)
but maybe you can try a bigger value and change it into a mdelay, to
see if that changes anything.

Other big change is to use the new phy driver but I think the problem
seems to be related with resets.

>
> Regards
> Greg

Please, don't hesitate to ask me whatever you need to.

Hope this helps.

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
