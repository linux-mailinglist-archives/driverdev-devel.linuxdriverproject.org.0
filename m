Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 340DE2E82AB
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Jan 2021 00:52:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDA5E8714B;
	Thu, 31 Dec 2020 23:51:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x-Da4wht+1il; Thu, 31 Dec 2020 23:51:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F4AA87143;
	Thu, 31 Dec 2020 23:51:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38AA31BF2E3
 for <devel@linuxdriverproject.org>; Thu, 31 Dec 2020 23:51:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 312A286C11
 for <devel@linuxdriverproject.org>; Thu, 31 Dec 2020 23:51:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UEy2t-LAirIP for <devel@linuxdriverproject.org>;
 Thu, 31 Dec 2020 23:51:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EAAF086C06
 for <devel@driverdev.osuosl.org>; Thu, 31 Dec 2020 23:51:53 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id a109so19126830otc.1
 for <devel@driverdev.osuosl.org>; Thu, 31 Dec 2020 15:51:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CgirU3jbgRz3+G138o2SGfe8IWwZXTAb4h9Spq6+8ec=;
 b=OMQvxrXMGT0/zqM6fVnT7WGWlbNXJm1/hjcWGgy3IGMAbhDo0cJuYXhfvEMl7hsKlr
 dhqrrGhgjOcBizufq67Fi6SI3xdBfVXrI8VFoVktO3FH70s/LO7fb7D0D39CZ2QyA51T
 2/blES+xfRox+hLqwTG3SiYTcTgDgvrjsfsD0pz3rcsXfONbTnWu3dyOkgsSaDBsfWKe
 /vsMNE3I4W52xxeP/hVpzrOf3JW2Yg92pi+0EYrHPTBqPA0bnH3AVyE9Aq7bSGzT9zu+
 4e2pZFaq5mc9XK3HGcLtQ1YaLG9fEBl8lgkkuyS/xrD8lOqviF6CdfZZIIYeIh6AaKdl
 LLRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CgirU3jbgRz3+G138o2SGfe8IWwZXTAb4h9Spq6+8ec=;
 b=Oh1+QHaFHZ8r0VJIzRDnU/IfFSyppyE9MydmOcLvF9mPVbGDxn2nmRn69bdgsiSQ+/
 FfYV7f4rWdJuf91+dmHvH8C8R7NoBHnqgoXcu5SWegW75o5kbRTgTnz1XcpP2Z58iVxB
 sRUdfapakOiM6yU5RHKKMxhI7wXQ9O91AhnexJuRvjjlpFOVd/nnaQuaIr6iaVpwcPpN
 QZERdLPMJ4cR/oyT3yx5utPxjc01IWzodHb81zVkScjd/QYUjLmXslKJz/99tce+wZcP
 /ARummdXoS6AjtBeQsr62e1z2ISr4vZ557YQ60wFwBTbxctZE912ohqxLGHnIwMkYkIO
 Nxgg==
X-Gm-Message-State: AOAM532uRp1r2Wdkh/2a3Fno2ikBRsHe/v7fd2bVKqhcTtGZbZ+5/ukN
 7bI4x43PcVwQAYqK7MlBPHlkQ8ElQYoK9sciCAA=
X-Google-Smtp-Source: ABdhPJyZrynHxYpOS+k4Vszc+yi6fPH73x5z0pmjUonPpnGHf38Ml/NpTQ/Uk5bDvUGsnyHCGduSS1VWP7ucRx9xMz0=
X-Received: by 2002:a9d:2248:: with SMTP id o66mr28322045ota.236.1609458713146; 
 Thu, 31 Dec 2020 15:51:53 -0800 (PST)
MIME-Version: 1.0
References: <20201220093724.4906-1-sergio.paracuellos@gmail.com>
 <20201220093724.4906-3-sergio.paracuellos@gmail.com>
 <20201231223843.GA2494920@robh.at.kernel.org>
In-Reply-To: <20201231223843.GA2494920@robh.at.kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 1 Jan 2021 00:51:42 +0100
Message-ID: <CAMhs-H879dSo3CouwA7OPo-W=BO3-mMSx225+q2G1wR3E-DHdA@mail.gmail.com>
Subject: Re: [PATCH v5 2/6] dt: bindings: add mt7621-clk device tree binding
 documentation
To: Rob Herring <robh@kernel.org>
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
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Rob,

Thanks for the review.

On Thu, Dec 31, 2020 at 11:38 PM Rob Herring <robh@kernel.org> wrote:
>
> On Sun, Dec 20, 2020 at 10:37:20AM +0100, Sergio Paracuellos wrote:
> > Adds device tree binding documentation for clocks in the
> > MT7621 SOC.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> >  .../bindings/clock/mediatek,mt7621-clk.yaml   | 52 +++++++++++++++++++
> >  1 file changed, 52 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> > new file mode 100644
> > index 000000000000..f58d01bdc82c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> > @@ -0,0 +1,52 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/mediatek,mt7621-clk.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: MT7621 Clock Device Tree Bindings
> > +
> > +maintainers:
> > +  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > +
> > +description: |
> > +  The MT7621 has a PLL controller from where the cpu clock is provided
> > +  as well as derived clocks for the bus and the peripherals. It also
> > +  can gate SoC device clocks.
> > +
> > +  Each clock is assigned an identifier and client nodes use this identifier
> > +  to specify the clock which they consume.
> > +
> > +  All these identifiers could be found in:
> > +  [1]: <include/dt-bindings/clock/mt7621-clk.h>.
> > +
> > +properties:
> > +  compatible:
> > +    const: mediatek,mt7621-clk
> > +
> > +  "#clock-cells":
> > +    description:
> > +      The first cell indicates the clock number, see [1] for available
> > +      clocks.
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    maxItems: 8
> > +
> > +required:
> > +  - compatible
> > +  - '#clock-cells'
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/mt7621-clk.h>
> > +
> > +    pll {
> > +      compatible = "mediatek,mt7621-clk";
> > +      #clock-cells = <1>;
> > +      clock-output-names = "xtal", "cpu", "bus",
> > +                           "50m", "125m", "150m",
> > +                           "250m", "270m";
>
> How do you access this h/w. There's nothing defined like 'reg' or
> a parent node or...

Through read write operations defined in
"asm/mach-ralink/ralink_regs.h. Please, see my explanation below.

>
> The suggestion on v4 was to get rid of the child node by merging it with
> the parent like this:
>
> +    sysc: sysc@0 {
> +      compatible = "mediatek,mt7621-sysc", "syscon";
> +      reg = <0x0 0x100>;
> +      #clock-cells = <1>;
> +      clock-output-names = "xtal", "cpu", "bus",
> +                             "50m", "125m", "150m",
> +                             "250m", "270m";
> +    };
>
> Whether you need child nodes or not really depends on what all is in the
> 'mt7621-sysc' h/w block.

All the drivers in this platform make use of arch operations defined
in "asm/mach-ralink/ralink_regs.h". This mediatek,mt7621-sysc is
directly mapped by the architecture
in arch/mips/ralink/mt7621.c in function void __init
ralink_of_remap(void). This is the first address in the virtual space
and from here "rt_sysc_membase" and "rt_memc_membase" are used to
access the hardware control registers through read and write
operations. So "mediatek,mt7621-sysc" cannot be remapped from clock
driver. The benefits I found at first of using the syscon as child
node was to avoid the use of architecture dependant operations but at
the end I realized that we need to access another register which is
not in the syscon block and it is not also well documented so the use
of arch operations is mandatory to make things work. That's why I end
up in just follow the architecture driver style and use this in the
same way, trying to maintain as clean as possible. Is it ok then to
declare it as it is in this way?

>
> Rob

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
