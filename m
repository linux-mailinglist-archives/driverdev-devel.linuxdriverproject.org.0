Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 773B72AFBEA
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 02:26:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E29586C89;
	Thu, 12 Nov 2020 01:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sh4KJ8a4GCbY; Thu, 12 Nov 2020 01:26:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F97086C7C;
	Thu, 12 Nov 2020 01:26:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C56B01BF377
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 01:26:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B8AA4203BF
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 01:26:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hLPSpA0aeHh5 for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 01:26:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by silver.osuosl.org (Postfix) with ESMTPS id C4BD52038B
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 01:26:27 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id m13so4317403ioq.9
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 17:26:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B2V5fHWjJfDHC37py9TGraaIOkIixettJgS/vXtY+j0=;
 b=RGZU23sr+qdewHuId2wFMbvHWIo7Fy3Q3G2Yf3z57kMcmDjy0YYHeI+qlHGbwkzZWw
 KY3X0VPrclzrZ0Zhiu1eQcnFnEJxP5/r1z3FBQYHG7deQpqHo/sXB2LS+z+DZq4U23pg
 75eoyEC7bjvKVj51LOVloXwynreqp9WmtenMN3aMfprxkxzH0PoeXXsWU7wCNJpY4oHZ
 O0hKt63VAiAKqEP9lwBJxb4JyUkDFyjb+oe3R113UQqXW9/EPfCH7sfOhMBwl075fJY1
 b08jBtBUT/eicBNBu247UTKPMs1NKlmuFZo/6KwRi2GKbVM0WUjAXRp92CyC5UonuAB1
 s21Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B2V5fHWjJfDHC37py9TGraaIOkIixettJgS/vXtY+j0=;
 b=KvWPcfigkV3wdd1KfIrIb+vhs76Nk+THy3ask8GbczuJhnADw57f1/0iJqdgBrWWuw
 2hp7ZZIcSHC9gIPcmX0UR/lOloi5rN8HpwTTlb7lc8/vpp1xgyhpZwNwPGS8kanClxCQ
 oRILjet1jLR8mpXIPgcyRC+H3ed5OjxnfUKxLeELIDs7H7BYmC2JOt+81Kx8YIt6FO8c
 kgG8eCjmMEV2m7Tw0bkHDswJg/7inw5TgcgWB2xPAVmorVE8S3tnr9RzNbxLVYCKoxqN
 x/Wef1WBNL6eeikV2B6Nrz2vKhHBe2Ydp25NavsZzjb9Csf8vN+/JXbwYJS2JALNMNvn
 JKRw==
X-Gm-Message-State: AOAM530rMdQzn+AZMXo5D5qJm7j2fUy7TBsXkCHZf359Kca30mZGH9GL
 WQ9+8OPOSaLnCCOyzAaeqiWaR9NiI+6vKa1UyGQ=
X-Google-Smtp-Source: ABdhPJz7OCFU0+VXE96aOUHbHUldtuiC7nVBYOu9ztRPUGxPd9I5Dw2Z/C7Hsz4+DI4dvkFqetu7HQmv4fK5XsDZLwU=
X-Received: by 2002:a02:c995:: with SMTP id b21mr22906607jap.65.1605144385662; 
 Wed, 11 Nov 2020 17:26:25 -0800 (PST)
MIME-Version: 1.0
References: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
In-Reply-To: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Thu, 12 Nov 2020 09:26:14 +0800
Message-ID: <CAJsYDVJtPqd-aPjJZFC76R2fbv1i=tVzRR7S1VFAMzp1QcPbiQ@mail.gmail.com>
Subject: Re: [PATCH 0/7] MIPS: ralink: add CPU clock detection and clock gate
 driver for MT7621
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
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
Cc: Weijie Gao <hackpascal@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, jiaxun.yang@flygoat.com,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi!

On Thu, Nov 12, 2020 at 12:30 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> This patchset ports CPU clock detection for MT7621 from OpenWrt
> and adds a complete clock plan for the mt7621 SOC.
>
> The documentation for this SOC only talks about two registers
> regarding to the clocks:
> * SYSC_REG_CPLL_CLKCFG0 - provides some information about boostrapped
> refclock. PLL and dividers used for CPU and some sort of BUS (AHB?).
> * SYSC_REG_CPLL_CLKCFG1 - a banch of gates to enable/disable clocks for
> all or some ip cores.
>
> No documentation about a probably existant set of dividers for each ip
> core is included in the datasheets. So we cannot make anything better,
> AFAICT.
>
> Looking into driver code, there is another frequency which is used in
> some drivers (uart, sd...) which for any reason is always hardcoded to
> 50 MHz. Taking this into account this patchset provides three main fixed
> clocks to the SOC in 'mt7621-pll' which are:
>   - "cpu": with detected frequency (900 MHz in my board).
>   - "ahb": cpu / 4 = 225 Mhz.
>   - "apb": 50 Mhz.
>
> PLL controller cannot be manipulatedbecause there is no info about
> how to do it. Because of this, there is nothing related with registers
> in the included binding.
>
> It also provides a clock gate driver 'mt7621-clk' as a platform driver
> to allow to enable and disable some clocks in the different ip cores.
> The parent clocks for this clock gates have also set taking into account
> existant device tree and driver code resulting in the followings:
>   - "hsdma": "ahb"
>   - "fe": "ahb"
>   - "sp_divtx": "ahb"
>   - "timer": "cpu"
>   - "int": "cpu"
>   - "mc": "ahb"
>   - "pcm": "ahb"
>   - "pio": "ahb"
>   - "gdma": "ahb"
>   - "nand": "ahb"
>   - "i2c": "ahb"
>   - "i2s": "ahb"
>   - "spi": "ahb"
>   - "uart1": "apb"
>   - "uart2": "apb"
>   - "uart3": "apb"
>   - "eth": "ahb"
>   - "pcie0": "ahb"
>   - "pcie1": "ahb"
>   - "pcie2": "ahb"
>   - "crypto": "ahb"
>   - "shxc": "ahb"
>
> There was a previous attempt of doing this here[0] but the author
> did not wanted to make assumptions of a clock plan for the platform.

I've already said in previous threads that clock assignment in
current linux kernel is not trustworthy.
I've got the clock plan for mt7621 now. (Can't share it, sorry.)
Most of your clock assumptions above are incorrect.
I've made a clock driver with gate support a few months ago.[0]
but I don't have much time to really finish it.
Maybe you could rework your clock gate driver based on it.

[0] https://github.com/981213/linux/commit/2eca1f045e4c3db18c941135464c0d7422ad8133
-- 
Regards,
Chuanhong Guo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
