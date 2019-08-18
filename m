Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B839159F
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 10:44:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4EE1A824B0;
	Sun, 18 Aug 2019 08:44:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fE8d1cUg9L8X; Sun, 18 Aug 2019 08:44:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0ECA885B6F;
	Sun, 18 Aug 2019 08:44:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 99EC61BF484
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 08:44:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9695E834A7
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 08:44:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ylqyOBFieHvo for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 08:44:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D789583456
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 08:44:48 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id q10so4195029oij.0
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 01:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9QdGesgMDK3FdcMMIoIwknk9WaLcRvYY+rvqXeny+bc=;
 b=je1I3UrgrBpvyds9g5EVI7f3FJ10MKi2rZwd8Do6X6jxhjI7mqI5lLZTeCvqr6fiw6
 V3fhjBfvBxIk+WcEBxGx10CRDtcLLRErXIgLGiLXOz+nLQ2XPjuM/Qac2wpHr8oKLoSX
 j7YA3V37mdv2b1ZpgWsKQY56EbNlIS4jBLEDPDf6pEkEUf6WPHcNEoWy+EP5v6sEzPTT
 AI12ixi5R7QLRn5mvqI4ogQtoZ5SkCGqu0F9pnRVwQhfFDf6uA3m0D959hdHd5K6InSm
 UBscr2ygkF+lO/scceIa+YXtsrwlrsxsoH0bgbumeSIcryw8QkGy0X/ktuTKTY55KuX+
 Vspg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9QdGesgMDK3FdcMMIoIwknk9WaLcRvYY+rvqXeny+bc=;
 b=TxsCltMAKvrT5FoVFjYK3RFH82rXmDlh6Lzxknm4bdtJwe9rCAh0btcGrjCEV0xENR
 9R08CpKqbWzb8UE3/VnszcY8I6EAIHrDxHwRA5SktG18LfNAFE+oV4Ql8nBatFWEekRc
 9emiuMJL84IDX5t8CyWm3AazQKdQA+d73FMECDmu1FLLKXoojTrMpr7rwVAQLxKeSpS0
 hUXxKMkM9xJiah0lrwSSlQTHQkdOdxnjaq8HzdZyyhdnqX0PV530JHsTS4SON1ElBBQD
 Ia7B3q0ZCGA3bxp62VPmjWH2Jw9MVGjDRGp/ygv5BoCITIG3oJmAykFOFOvsgiphJqPx
 GucA==
X-Gm-Message-State: APjAAAV1ERJ6Ndr5MXmSO3uBEUt5w0hcA/Uy28Eb2x0ONFnCnXtP3Fg/
 bSxsloNsZuKohzri7pxMRRITWJ9Q020zbrUu9mw=
X-Google-Smtp-Source: APXvYqyRVxHma46j2OAvfKQwqyRWcRxz6zwKRky9d6l5ea1tExvRyR+/AN0aIHuOCKYnEzAKHNMfpmwmzkDrNvFF+RU=
X-Received: by 2002:aca:3fc2:: with SMTP id m185mr10466468oia.24.1566117887933; 
 Sun, 18 Aug 2019 01:44:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190724022310.28010-1-gch981213@gmail.com>
 <20190724022310.28010-5-gch981213@gmail.com>
 <20190813155143.GA19830@bogus>
 <CAJsYDVKnf4M8jyVOyotRxs=SsHqjex_q60AwkX=QAPK33ivw-Q@mail.gmail.com>
 <2d48f4a4-7d30-547b-21ee-6aadabe7d7c3@gmx.net>
 <CAJsYDVLq1-U_AngA4=YKHS_L=zurhLse9XwQ0Rzup9BdXfri-w@mail.gmail.com>
 <6b6ee744-61d3-8848-19e7-0a301fe4d1b3@rempel-privat.de>
 <CAJsYDVLLPa07wUg2EoeJww9XSJYgX_kBu-oGiv7n+zejUc877w@mail.gmail.com>
 <fb39803d-d303-f259-d78d-9f8b1fc7dde3@rempel-privat.de>
 <CAJsYDVK9Yj02WxNFo7iEP3aJn+j5MqzCtLrmgsz=4zWnfQ4VOw@mail.gmail.com>
 <6426d4d2-9961-83f2-d3bc-5834ff36b40d@rempel-privat.de>
 <CAJsYDVKW9-7ityUn83NXcQYmqJi_t-VSV8F0c+BA14_w+poPkA@mail.gmail.com>
In-Reply-To: <CAJsYDVKW9-7ityUn83NXcQYmqJi_t-VSV8F0c+BA14_w+poPkA@mail.gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sun, 18 Aug 2019 16:44:32 +0800
Message-ID: <CAJsYDVJnQyOXHKWztoE72KKnMinJL+1AZGy_CvTT6oOs5m5U2w@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] dt: bindings: add mt7621-pll dt binding
 documentation
To: Oleksij Rempel <linux@rempel-privat.de>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 James Hogan <jhogan@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, open list <linux-kernel@vger.kernel.org>,
 Paul Fertser <fercerpav@gmail.com>, Paul Burton <paul.burton@mips.com>,
 Weijie Gao <hackpascal@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Crispin <john@phrozen.org>, NeilBrown <neil@brown.name>,
 Mark Rutland <mark.rutland@arm.com>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 18, 2019 at 4:26 PM Chuanhong Guo <gch981213@gmail.com> wrote:
>
> Hi!
>
> On Sun, Aug 18, 2019 at 3:59 PM Oleksij Rempel <linux@rempel-privat.de> wrote:
> >
> > Am 18.08.19 um 09:19 schrieb Chuanhong Guo:
> > > Hi!
> > >
> > > On Sun, Aug 18, 2019 at 2:10 PM Oleksij Rempel <linux@rempel-privat.de> wrote:
> > >>
> > >>>> We have at least 2 know registers:
> > >>>> SYSC_REG_CPLL_CLKCFG0 - it provides some information about boostrapped
> > >>>> refclock. PLL and dividers used for CPU and some sort of BUS (AHB?).
> > >>>> SYSC_REG_CPLL_CLKCFG1 - a banch of gates to enable/disable clocks for
> > >>>> all or some ip cores.
> > >>>> What is probably missing is a set of dividers for
> > >>>> each ip core. From your words it is not document.
> > >>>
> > >>> The specific missing part I was referring to, is parent clocks for
> > >>> every gates. I'm not going to assume this with current openwrt device
> > >>> tree because some peripherals doesn't have a clock binding at all or
> > >>> have a dummy one there.
> > >>
> > >> Ok, then I do not understand what is the motivation to upstream
> > >> something what is not nearly ready for use.
> > >
> > > Why isn't it "ready for use" then?
> > > A complete mt7621-pll driver will contain two parts:
> > > 1. A clock provider which outputs several clocks
> > > 2. A clock gate with parent clocks properly configured
> > >
> > > Two clocks provided here are just two clocks that can't be controlled
> > > in kernel no matter where it goes (arch/mips/ralink or drivers/clk).
> > > Having a working CPU clock provider is better than defining a fixed
> > > clock in dts because CPU clock can be controlled by bootloader.
> > > (BTW description for CPU PLL register is also missing in datasheet.)
> > > Clock gate is an unrelated part and there is no information to
> > > properly implement it unless MTK decided to release a clock plan
> > > somehow.
> >
> > With other words, your complete system is running with unknown clock
> > rates.
>
> And without this patchset the complete system is running with unknown
> clock and, even worse, we make assumptions about what clock bootloader
> uses, hardcoded it in dts and hope it is the correct value.
>
> > The source clock in the clock three can be configured differently
> > by bootloader but you don't know how it is done how and it is not
> > documented.
>
> Actually, I don't know about this and I didn't wrote the original
> clock calculation code. I just ported it from downstream OpenWrt
> kernel. Here's a piece of code from Mediatek's SDK kernel:
>
> case 0:
>         reg = (*(volatile u32 *)(RALINK_SYSCTL_BASE + 0x44));
>         cpu_fdiv = ((reg >> 8) & 0x1F);
>         cpu_ffrac = (reg & 0x1F);
> mips_cpu_feq = (500 * cpu_ffrac / cpu_fdiv) * 1000 * 1000;
> break;
> case 1: //CPU PLL
>         reg = (*(volatile u32 *)(RALINK_MEMCTRL_BASE + 0x648));
>         fbdiv = ((reg >> 4) & 0x7F) + 1;
>         reg = (*(volatile u32 *)(RALINK_SYSCTL_BASE + 0x10));
>         reg = (reg >> 6) & 0x7;
>         if(reg >= 6) { //25Mhz Xtal
>             mips_cpu_feq = 25 * fbdiv * 1000 * 1000;
>         } else if(reg >=3) { //40Mhz Xtal
>             mips_cpu_feq = 20 * fbdiv * 1000 * 1000;
>         } else { // 20Mhz Xtal
>             /* TODO */
>         }
>         break;
>
>
>
> >
> > >> This code is currently on prototyping phase
> > >
> > > Code for clock calculation is done, not "prototyping".
> > >
> > >> It means, we cannot expect that this driver will be fixed any time soon.
> > >
> > > I think clock gating is a separated feature instead of a broken part
> > > that has to be fixed.
> >
> > Ok, i would agree with it. But from what you said, this feature will be
> > never implemented.
> >
> > So, I repeat my question. What is the point to upstream code for a
> > system, which has not enough information to get proper clock rate even
> > for uart? or is uart running with cpu or bus clock rate?
>
> uart runs of a fixed 50MHz clock according to another piece of code
> from MTK SDK:
> (a pastebin version here for better readability. This specific
> question has nothing to do with patch reviewing and doesn't need to be
> preserved in mail forever.)
> https://paste.ubuntu.com/p/fYmtDFW9nh/
>
> I could ask the same question:
> What is the point of upstreaming an incomplete MT7621 support in the
> first place? Current MT7621 support in upstream kernel works only for
> mt7621a not mt7621s and it runs of unknown clocks. These kind of code
> should stay in downstream projects like OpenWrt forever isn't it?

And in fact you've upstreamed a broken ag71xx driver anyway.

This debate goes nowhere. I've clarified the situation and made my
point. Of course I can't read through the ancient and heavily hacked
vendor kernel to figure out a clock plan myself.

Regards,
Chuanhong Guo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
