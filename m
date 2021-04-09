Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6725535A5EB
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Apr 2021 20:39:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 748086083A;
	Fri,  9 Apr 2021 18:39:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cDYnk_IXQlrX; Fri,  9 Apr 2021 18:39:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF7ED6073D;
	Fri,  9 Apr 2021 18:39:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 069051BF371
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 18:38:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6C1A6073D
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 18:38:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7uSkhXYVZqoz for <devel@linuxdriverproject.org>;
 Fri,  9 Apr 2021 18:38:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E0C0F6059B
 for <devel@driverdev.osuosl.org>; Fri,  9 Apr 2021 18:38:51 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BE84261056;
 Fri,  9 Apr 2021 18:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617993529;
 bh=BsxIQc7rAyLg0sPjYdPqH/Wj7m4yMCv0wZrN5ynnyRk=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=LeCzQ4swMUpn5n5Oel6U1g1yMJ+JD8zSCaOvIG0tYAZt89Ha6y+dDi7MvT+zGjCIZ
 T2JiDWtLUUrQusUAKFcodFoSuRHWPV07LE7gOvm9rK9NdMdixaTy+A4OXrYOj+nS9e
 r/YONgxRDlLOn6HXucwXJ9dEOsGOPFrNotRpiqKauhEZfxZ5xazzh3hiCXoF4SMKxE
 2gQqumwLK18yziWUttRXJWtxz3Cy7Hqyl5MRqs/Ha9qPG+0GaAtS44h+egB0pQrg2F
 nTH0/1jy35qgicYrUdofQpAjvOaidFS+wfWjPaL/q0RprsnnXm+5xHAXBd5XuRsSsD
 UJGa3f895jOLQ==
MIME-Version: 1.0
In-Reply-To: <CAMhs-H-geRq4vOAfZKCtEwt20GVRFkZBDEhfVxLRyvYZfOkUMg@mail.gmail.com>
References: <20210309052226.29531-1-sergio.paracuellos@gmail.com>
 <20210309052226.29531-4-sergio.paracuellos@gmail.com>
 <161799206350.3790633.14908755786674195715@swboyd.mtv.corp.google.com>
 <CAMhs-H-geRq4vOAfZKCtEwt20GVRFkZBDEhfVxLRyvYZfOkUMg@mail.gmail.com>
Subject: Re: [PATCH v11 3/6] clk: ralink: add clock driver for mt7621 SoC
From: Stephen Boyd <sboyd@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 09 Apr 2021 11:38:48 -0700
Message-ID: <161799352843.2893778.3932024331601162816@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
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
Cc: STAGING SUBSYSTEM <devel@driverdev.osuosl.org>,
 OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
 <devicetree@vger.kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Greg KH <gregkh@linuxfoundation.org>, MIPS <linux-mips@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 John Crispin <john@phrozen.org>, NeilBrown <neil@brown.name>,
 COMMON CLK FRAMEWORK <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Sergio Paracuellos (2021-04-09 11:34:35)
> On Fri, Apr 9, 2021 at 8:14 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Sergio Paracuellos (2021-03-08 21:22:23)
> > > diff --git a/drivers/clk/ralink/Makefile b/drivers/clk/ralink/Makefile
> > > new file mode 100644
> > > index 000000000000..cf6f9216379d
> > > --- /dev/null
> > > +++ b/drivers/clk/ralink/Makefile
> > > @@ -0,0 +1,2 @@
[...]
> >
> > > +
> > > +               clk_hw_unregister(&sclk->hw);
> > > +       }
> > > +       return ret;
> > > +}
> > > +
> > > +static int mt7621_prepare_enable_clocks(struct clk_hw_onecell_data *clk_data)
> > > +{
> > > +       int ret, i;
> > > +
> > > +       for (i = 0; i < MT7621_CLK_MAX; i++) {
> > > +               ret = clk_prepare_enable(clk_data->hws[i]->clk);
> >
> > Are these critical clks? Why not use the CLK_IS_CRITICAL flag?
> 
> Well, Not calling clk_prepare_enable here makes the kernel to disable
> all of the stuff is not being requested. Since until now no clock
> driver existed, some SoC drivers  were not prepared for the clock. So,
> if you prefer to avoid disabling stuff using this flag I think I can
> just remove this enable_clocks function and set the flags for all the
> clocks when registering them.
> 

Ok. If they're critical clks please set the flag and add a comment
indicating why they need to be enabled all the time.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
