Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2041A4E00
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Apr 2020 06:32:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F3EDD85E9B;
	Sat, 11 Apr 2020 04:32:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YYDanaHY6XVk; Sat, 11 Apr 2020 04:32:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F14085DFD;
	Sat, 11 Apr 2020 04:32:44 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ADDCF1BF276
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 04:32:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A45B5868F6
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 04:32:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yeYCU9YBnZ0U
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 04:32:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 67DB3860DB
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 04:32:29 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id b7so502545oic.2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 21:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9Ey8z082D/UjJ5sBJG3+kOmmboi6ZzqPZSWX42TdCRM=;
 b=SJLajJ+lv/d1tOlkHO5qban5Rr+OjdFLVL3S/sjRhKeH4AfdX/Zoy8UWX1+Dg7n9O1
 BWbc9M0XN7hcst9pVYr8C3NgQ8zvIaqNUTgt02o79wIAd8ha5v5NaFVmklY8CFf/O7RZ
 NP7+cGyQRERegCYYlqMc+q5smLfVhoLR3lnH3u/yqxh03C3Y8oSXjX4eBMtmsQkoawfL
 BK8O+MJUOyfgTxs4jJKzRtBCxurrcxoq6auibCpfT9QQjLQxwNHo606jka7VYwde5gTf
 GJ2cb8CF2aUtmdxMSkUmv3x0STAJ4uzhdWWP3RMtYGgeTWpjaXGETtvoIHyPEoxs/+dC
 ON3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9Ey8z082D/UjJ5sBJG3+kOmmboi6ZzqPZSWX42TdCRM=;
 b=ImoXOQ4UHPhf4uKW4OhSI848VLZnUCfTeiTCjR0mPpXut47eu/klXBeriIuKsW4xRJ
 uU8QSbUWA1HbKKIECyo/Zb0cm6HHBgPzEGKJpNmBuU1F8UCbI6D3wEVx7/4lXNs8kuZN
 qRClktAmcWGsGuioVMKp4IkSderARAPSN8vWgvMpwiEroBvYvMWrhpGf69iV5GfouIiD
 JMQbx4KBz+9+gc0YRZrr/q7dVrDBVyn2YNyawtNJWMkmA3k2cmvWvhCSwg4tRVlEzhZr
 IJpfKoAMsXmnH3MmJeJ1pYMsXaK3LeXVbCzeivGkE/BQY4Zu+Vycz7inwMtKv02F+W42
 BuHA==
X-Gm-Message-State: AGi0PuZwWpLntIDUC1lJyr4h2P68XJ46YxpJk88Aq3HyFK1yVz2LpnDu
 p8zK91WJsGcgzjPpn2iV3RHedprFYtIC/ZVBeI0=
X-Google-Smtp-Source: APiQypLCxTRxMFC13lMjMY/8NCot381Whg6yWp1l4tIJ2YUFgwCwEJyNFlwUuMCncyUrbrpWCvyB7JxXNtejDJpbCjE=
X-Received: by 2002:a05:6808:288:: with SMTP id
 z8mr5341162oic.149.1586579548542; 
 Fri, 10 Apr 2020 21:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200308091928.17177-1-sergio.paracuellos@gmail.com>
 <878sj2vh2k.fsf@notabene.neil.brown.name>
In-Reply-To: <878sj2vh2k.fsf@notabene.neil.brown.name>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 11 Apr 2020 06:32:17 +0200
Message-ID: <CAMhs-H_0EOU9e_SazPeiS3rCBhRm2v-6_KwAFg0cwtivvHF2AQ@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-pci: simplify
 'mt7621_pcie_init_virtual_bridges' function
To: NeilBrown <neil@brown.name>
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Neil,

On Sat, Apr 11, 2020 at 5:26 AM NeilBrown <neil@brown.name> wrote:
>
> On Sun, Mar 08 2020, Sergio Paracuellos wrote:
>
> > Function 'mt7621_pcie_init_virtual_bridges' is a bit mess and can be
> > refactorized properly in a cleaner way. Introduce new 'pcie_rmw' inline
> > function helper to do clear and set the correct bits this function needs
> > to work.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> > Changes are only compile tested.
> >  drivers/staging/mt7621-pci/pci-mt7621.c | 85 ++++++++++---------------
> >  1 file changed, 33 insertions(+), 52 deletions(-)
> >
> > diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
> > index 3633c924848e..1f860c5ef588 100644
> > --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> > +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> > @@ -57,13 +57,13 @@
> >  #define RALINK_PCI_IOBASE            0x002C
> >
> >  /* PCICFG virtual bridges */
> > -#define MT7621_BR0_MASK                      GENMASK(19, 16)
> > -#define MT7621_BR1_MASK                      GENMASK(23, 20)
> > -#define MT7621_BR2_MASK                      GENMASK(27, 24)
> > -#define MT7621_BR_ALL_MASK           GENMASK(27, 16)
> > -#define MT7621_BR0_SHIFT             16
> > -#define MT7621_BR1_SHIFT             20
> > -#define MT7621_BR2_SHIFT             24
> > +#define PCIE_P2P_MAX                 3
>
> This is one of my bug-bears.  The number "3" here is not a MAXimum.
> It is a count or a number.  It is how many masks there are.
> The masks are numbered 0, 1, 2 so the maximum is 2.
> I would rename this  PCI_P2P_CNT.

Yes, you are right. 'PCI_P2P_CNT' is more accurate here. I will change
this. BTW, I really like the 'bug-bears' expression :)))

>
>
> > +#define PCIE_P2P_BR_DEVNUM_SHIFT(p)  (16 + (p) * 4)
> > +#define PCIE_P2P_BR_DEVNUM0_SHIFT    PCIE_P2P_BR_DEVNUM_SHIFT(0)
> > +#define PCIE_P2P_BR_DEVNUM1_SHIFT    PCIE_P2P_BR_DEVNUM_SHIFT(1)
> > +#define PCIE_P2P_BR_DEVNUM2_SHIFT    PCIE_P2P_BR_DEVNUM_SHIFT(2)
> > +#define PCIE_P2P_BR_DEVNUM_MASK              0xf
> > +#define PCIE_P2P_BR_DEVNUM_MASK_FULL (0xfff << PCIE_P2P_BR_DEVNUM0_SHIFT)
> >
> >  /* PCIe RC control registers */
> >  #define MT7621_PCIE_OFFSET           0x2000
> > @@ -154,6 +154,15 @@ static inline void pcie_write(struct mt7621_pcie *pcie, u32 val, u32 reg)
> >       writel(val, pcie->base + reg);
> >  }
> >
> > +static inline void pcie_rmw(struct mt7621_pcie *pcie, u32 reg, u32 clr, u32 set)
> > +{
> > +     u32 val = readl(pcie->base + reg);
> > +
> > +     val &= ~clr;
> > +     val |= set;
> > +     writel(val, pcie->base + reg);
> > +}
> > +
> >  static inline u32 pcie_port_read(struct mt7621_pcie_port *port, u32 reg)
> >  {
> >       return readl(port->base + reg);
> > @@ -554,7 +563,9 @@ static void mt7621_pcie_enable_ports(struct mt7621_pcie *pcie)
> >  static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
> >  {
> >       u32 pcie_link_status = 0;
> > -     u32 val = 0;
> > +     u32 n;
> > +     int i;
> > +     u32 p2p_br_devnum[PCIE_P2P_MAX];
> >       struct mt7621_pcie_port *port;
> >
> >       list_for_each_entry(port, &pcie->ports, list) {
> > @@ -567,50 +578,20 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
> >       if (pcie_link_status == 0)
> >               return -1;
> >
> > -     /*
> > -      * pcie(2/1/0) link status      pcie2_num       pcie1_num       pcie0_num
> > -      * 3'b000                       x               x               x
> > -      * 3'b001                       x               x               0
> > -      * 3'b010                       x               0               x
> > -      * 3'b011                       x               1               0
> > -      * 3'b100                       0               x               x
> > -      * 3'b101                       1               x               0
> > -      * 3'b110                       1               0               x
> > -      * 3'b111                       2               1               0
> > -      */
> > -     switch (pcie_link_status) {
> > -     case 2:
> > -             val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
> > -             val &= ~(MT7621_BR0_MASK | MT7621_BR1_MASK);
> > -             val |= 0x1 << MT7621_BR0_SHIFT;
> > -             val |= 0x0 << MT7621_BR1_SHIFT;
> > -             pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
> > -             break;
> > -     case 4:
> > -             val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
> > -             val &= ~MT7621_BR_ALL_MASK;
> > -             val |= 0x1 << MT7621_BR0_SHIFT;
> > -             val |= 0x2 << MT7621_BR1_SHIFT;
> > -             val |= 0x0 << MT7621_BR2_SHIFT;
> > -             pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
> > -             break;
> > -     case 5:
> > -             val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
> > -             val &= ~MT7621_BR_ALL_MASK;
> > -             val |= 0x0 << MT7621_BR0_SHIFT;
> > -             val |= 0x2 << MT7621_BR1_SHIFT;
> > -             val |= 0x1 << MT7621_BR2_SHIFT;
> > -             pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
> > -             break;
> > -     case 6:
> > -             val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
> > -             val &= ~MT7621_BR_ALL_MASK;
> > -             val |= 0x2 << MT7621_BR0_SHIFT;
> > -             val |= 0x0 << MT7621_BR1_SHIFT;
> > -             val |= 0x1 << MT7621_BR2_SHIFT;
> > -             pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
> > -             break;
> > -     }
> > +     n = 0;
> > +     for (i = 0; i < PCIE_P2P_MAX; i++)
>
> Here, for example, 'i' never reaches the MAX value.  Surely that is wrong.

Sure, totally agreed.

>
> > +             if (pcie_link_status & BIT(i))
> > +                     p2p_br_devnum[i] = n++;
> > +
> > +     for (i = 0; i < PCIE_P2P_MAX; i++)
> > +             if ((pcie_link_status & BIT(i)) == 0)
> > +                     p2p_br_devnum[i] = n++;
>
> This second for loop seems like a change in functionality to what we had
> before.  Is that correct?  I seems to make sense but as you didn't flag
> the change in the commit message I thought I would ask.

So we are just assigning device numbers starting at zero for the
enabled ports in the first loop and the remaining ones to not enabled
ports in the second loop... Which made sense for me even is not
totally necessary.

>
> Also I feel it would help to have a comment explaining what was going
> on.  There was a big comment here before.  It wasn't particularly
> helpful, but it was a little better than nothing.
> Maybe:
>
>  /* Assign device numbers from zero to the enabled ports, then assigning
>   * remaining device numbers to any disabled ports
>   */

Oh, yes. That is what is exactly happening here and I have just
explain. I will add the comment.

>
> Thanks,
> NeilBrown
>

Thanks for your feedback, Neil.

Best regards,
    Sergio Paracuellos
>
> > +
> > +     pcie_rmw(pcie, RALINK_PCI_CONFIG_ADDR,
> > +              PCIE_P2P_BR_DEVNUM_MASK_FULL,
> > +              (p2p_br_devnum[0] << PCIE_P2P_BR_DEVNUM0_SHIFT) |
> > +              (p2p_br_devnum[1] << PCIE_P2P_BR_DEVNUM1_SHIFT) |
> > +              (p2p_br_devnum[2] << PCIE_P2P_BR_DEVNUM2_SHIFT));
> >
> >       return 0;
> >  }
> > --
> > 2.19.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
