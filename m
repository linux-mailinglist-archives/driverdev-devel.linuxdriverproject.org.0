Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B477818DE7B
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 08:18:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B5ECC89442;
	Sat, 21 Mar 2020 07:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5GfOCao-IRHs; Sat, 21 Mar 2020 07:18:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A4CA989430;
	Sat, 21 Mar 2020 07:18:41 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 241F91BF842
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 06:47:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 200CB88393
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 06:47:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TdUwXGF07Vy2
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 06:47:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ECDF28836E
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 06:47:36 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id r2so8310018otn.6
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 23:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b/BYU0wMRBMUzyh78j2x7jqsL224awyiTzQ058e+3cs=;
 b=Ao+mIpFTZYezgpxkFt70zpc15L5GsSf1EmANu+dDIm2n8Ha7PCPLfKcSknDxbQfXn3
 kdh8Wnzb7mMksW3kkqukx4ubqPRVw4K9zLTiu7WYHg9WUS67pc6FAW7u4/0Id8kkrCh3
 i1o/6YuTm4cp+B0+GrBdrk/qKGe4fvkVjaY3XruAwhuQFaCRsFJv8B7/YNgy75RtomVn
 tutdmfDSYNSRlJ38iUI8pPSCS9jIwMkxAuACUv1it5KRQF4umMUIb9KFPj5kkVrAPnvS
 eXYs21fK9NJaeGSJdL5habesGeOBpSRGd9T3rMJrIjdalCyyIIVo+9GjILTLDbNG2Oc3
 Z5Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b/BYU0wMRBMUzyh78j2x7jqsL224awyiTzQ058e+3cs=;
 b=iuGmyR8BiOZMyP22Ss8KAmV991HFyXSLCIjNwdmAE2/qLyjZHVs0l1193flYjkOADr
 W0GBs2fHRMhycHijToOXpf/YXa2E1vBopBXs5RpS/DtvTNpYS+DvX8M65HOzFgVqoQ4c
 AS33TfI5R4X1R4LbF9wcNp8rkJ7EVfTJhSDnfGp3BQwlGjDf/c3bOwrPwspNK32oLR0h
 UIWL4XyA3FZ8yn249Z8s4Ij1FS9P3F4pVpASy75qdCQ/jdnfMt4olC4AE1ojaKcUC+qi
 kP8qaoOx8Ns0EFLShrEjDFrCSqu/Kp8k/0rL5l1q/HsiBFNtTB2s9giHaDqq8QzU1rvs
 EYdA==
X-Gm-Message-State: ANhLgQ0jv4kjILz7LtAMQdxhTOPQRcKbxb+vXeK7say0XZPOiUXT+wJS
 3DXg8w9FwFRghKMuTc8cS8LRtX2hyqJx6t/fhA0=
X-Google-Smtp-Source: ADFU+vvGFzqVnVlQPiQ/nKZnNvvKKq8a7SPKvOyPlN9VS37esfSl/ldO5g61fGDbaHaYkcXwm2NI7dQEWP7y1YaSWkw=
X-Received: by 2002:a05:6830:1498:: with SMTP id
 s24mr9617255otq.242.1584773256044; 
 Fri, 20 Mar 2020 23:47:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200319161416.19033-1-sergio.paracuellos@gmail.com>
 <76db8f45-2a78-fb40-0c0d-4ff17a224e1b@kernel.org>
 <CAMhs-H8c-cxBL9_PCe2QPCvq_2HTWW1hEC6A6AVHU=pd2NmT=g@mail.gmail.com>
 <42663980-a1e1-c19b-cc2d-1be3782e5cdc@kernel.org>
 <CAMhs-H8sNG3MtbQEhfRsV4cc_PMP6yjH8-ScMf6+h6U+C06ZWw@mail.gmail.com>
 <cb31d514-5b99-bc0d-84ac-3b24d71707ef@kernel.org>
In-Reply-To: <cb31d514-5b99-bc0d-84ac-3b24d71707ef@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 21 Mar 2020 07:47:24 +0100
Message-ID: <CAMhs-H_2P9Usda_Qhpo6RWPZg2zF4Lnb2pR56NUSFLFZD8K2Dw@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-pci: don't return if get gpio fails
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

On Sat, Mar 21, 2020 at 7:28 AM Greg Ungerer <gerg@kernel.org> wrote:
>
> Hi Sergio,
>
> On 21/3/20 1:25 am, Sergio Paracuellos wrote:
> > On Fri, Mar 20, 2020 at 4:08 PM Greg Ungerer <gerg@kernel.org> wrote:
> >> On 21/3/20 12:38 am, Sergio Paracuellos wrote:
> >>> On Fri, Mar 20, 2020 at 3:30 PM Greg Ungerer <gerg@kernel.org> wrote:
> >>>> On 20/3/20 2:14 am, Sergio Paracuellos wrote:
> >> [snip]
> >>>> rt2880-pinmux pinctrl: pcie is already enabled
> >>>> mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
> >>>> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >>>> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >>>> mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> >>>> mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
> >>>> mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> >>>> mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> >>>> mt7621-pci 1e140000.pcie: Nothing is connected in virtual bridges. Exiting..
> >>>> ...
> >>>>
> >>>> It is probably 50:50 on any boot whether it will probe pci successfully or
> >>>> fail to probe it.
> >>>>
> >>>> BTW, this is with the patch here applied:
> >>>> http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-March/142472.html
> >>>
> >>> Yes this is the behaviour I was talking about in this series:
> >>>
> >>> http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-March/142520.html
> >>>
> >>> These patches have been already added to staging-testing and should
> >>> work and found properly ports also for you.
> >>>
> >>> Let me know any issue you might find.
> >>
> >> Ok, I am testing now a fresh up-to-date staging-testing.
> >> I can see your most recent patches for the pci-phy at the top of the git log.
> >> No other patches applied (just my devicetree for my hardware).
> >>
> >> It dumps on every boot with:
> >>
> >> ...
> >> rt2880-pinmux pinctrl: pcie is already enabled
> >> mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
> >> mt7621-pci-phy 1e149000.pcie-phy: PHY for 0xbe149000 (dual port = 1)
> >> mt7621-pci-phy 1e14a000.pcie-phy: PHY for 0xbe14a000 (dual port = 0)
> >> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >> mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> >> mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> >> Unhandled kernel unaligned access[#1]:
> >> CPU: 3 PID: 111 Comm: kworker/3:2 Not tainted 5.6.0-rc3-00347-g825c6f470c62-dirty #9
> >> Workqueue: events deferred_probe_work_func
> >> $ 0   : 00000000 00000001 5f60d043 8fe1ba80
> >> $ 4   : 0000010d 01eb9000 00000000 00000000
> >> $ 8   : 294b4c00 80940000 00000008 000000ce
> >> $12   : 2e303030 00000000 00000000 65696370
> >> $16   : ffffffed 0000010d 8e373cd0 8214c1e0
> >> $20   : 00000000 82144c80 82144680 8214c250
> >> $24   : 00000018 803ef8f4
> >> $28   : 8e372000 8e373c60 8214c080 803940e8
> >> Hi    : 00000125
> >> Lo    : 122f2000
> >> epc   : 807b3328 mutex_lock+0x8/0x44
> >> ra    : 803940e8 phy_power_off+0x28/0xb0
> >> Status: 1100fc03        KERNEL EXL IE
> >> Cause : 00800010 (ExcCode 04)
> >> BadVA : 0000010d
> >> PrId  : 0001992f (MIPS 1004Kc)
> >> Modules linked in:
> >> Process kworker/3:2 (pid: 111, threadinfo=(ptrval), task=(ptrval), tls=00000000)
> >> Stack : 8e373cd0 803fe4f4 8e372000 8e373c90 8214c080 804fde1c 8e373c98 808d62f4
> >>           8e373c78 00000000 8214c254 804fe648 1e160000 804f27b8 00000001 808d62f4
> >>           00000000 00000001 8214c228 808d62f4 80930000 809a0000 8fd47e10 808d63d4
> >>           808d62d4 8fd47e10 808d0000 808d0000 8e373cd0 8e373cd0 809e2a74 809db510
> >>           809db510 00000006 00000001 00000000 00000000 00000000 01000000 1e1440ff
> >>           ...
> >> Call Trace:
> >> [<807b3328>] mutex_lock+0x8/0x44
> >> [<803940e8>] phy_power_off+0x28/0xb0
> >> [<804fe648>] mt7621_pci_probe+0xc20/0xd18
> >> [<80402ab8>] platform_drv_probe+0x40/0x94
> >> [<80400a74>] really_probe+0x104/0x364
> >> [<803feb74>] bus_for_each_drv+0x84/0xdc
> >> [<80400924>] __device_attach+0xdc/0x120
> >> [<803ffb5c>] bus_probe_device+0xa0/0xbc
> >> [<80400124>] deferred_probe_work_func+0x7c/0xbc
> >> [<800420e8>] process_one_work+0x230/0x450
> >> [<80042638>] worker_thread+0x330/0x5fc
> >> [<80048eb0>] kthread+0x12c/0x134
> >> [<80007438>] ret_from_kernel_thread+0x14/0x1c
> >> Code: 24050002  27bdfff8  8f830000 <c0850000> 14a00005  00000000  00600825  e0810000  1020fffa
> >>
> >
> > Ok, this seems to be the access for slot 1 which I default set to true
> > as enabled ports because of the phy is for dual_port,
> > so because you are using only one of the two ports the
> > phy_power_off(port->phy); for slot 1 should not be triggered because
> > it is done for slot 0 if neccessary.
> >
> > Can you try this small fix:
> >
> > diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c
> > b/drivers/staging/mt7621-pci/pci-mt7621.c
> > index 739504f7e4fc..23b51789f72e 100644
> > --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> > +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> > @@ -517,7 +517,8 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
> >                  if (!mt7621_pcie_port_is_linkup(port)) {
> >                          dev_err(dev, "pcie%d no card, disable it (RST & CLK)\n",
> >                                  slot);
> > -                       phy_power_off(port->phy);
> > +                       if (slot != 1)
> > +                               phy_power_off(port->phy);
> >                          mt7621_control_assert(port);
> >                          mt7621_pcie_port_clk_disable(port);
> >                          port->enabled = false;
> >
> >
> >> ---[ end trace 8e3fadee03559cba ]---
>
> Yep, that fixes it. No more dumps.
>
> In limited testing so far every boot up has probed the PCI bu successfully.

Good news :)

> I'll keep testing, and report any problems.
>
> Note that I am running with the modified mt7621.dtsi that has the reset
> lines for PCIe limited to only GPIO19. (GPIO7 and GPIO8 removed from reset).

Please, let me know any issue you can find.

>
> Regards
> Greg

Best regards,
    Sergio Paracuellos
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
