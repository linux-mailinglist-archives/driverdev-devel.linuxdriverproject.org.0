Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F582BC083
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Nov 2020 17:23:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C643386D4C;
	Sat, 21 Nov 2020 16:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wd2-97zGMKRo; Sat, 21 Nov 2020 16:23:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2DBC386D0F;
	Sat, 21 Nov 2020 16:23:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7B4151BF3C1
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 16:23:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 77F3E86CF9
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 16:23:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ubPTzDPLFZ+e for <devel@linuxdriverproject.org>;
 Sat, 21 Nov 2020 16:23:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7800986CED
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 16:23:10 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id n11so11814637ota.2
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 08:23:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vtqi5ij/e5CH5+ZSs3AhBza3/9+Xfa/5fcKnLK+RPrA=;
 b=kIH+iFQ3BUUlg+tlGd6B2l+hKxKVyuNrTGmH7ZplX/4YI3bLDPBG+pPEzpS1JmX5ra
 kWucpgdF77cerMO2nidi832uxf5heJTbjCINUKtV2KwgIgPV/JTfBO5cC8XdDxICzOOe
 oY8Za9uwR+hf2YiMarDaacIQ05CIMs4U+H73saGY6crN20QArp60mJmhVCpJp5fuvcST
 eyN1qO8TyraFDOdelomYyLkAohbWu/hooAqGtnwvSP2U+45r8L5vbZxHMVGlfcUSAtQ3
 uHr+GdAclrYIpLBUONIZ7CXOqvweqhr01AZbmj1NGhhH0PPLgaWMO8t4ZOptUREd/+F2
 FRNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vtqi5ij/e5CH5+ZSs3AhBza3/9+Xfa/5fcKnLK+RPrA=;
 b=e7Fhrx8XTmEs09LQsgu84lvz+z/kMD17p4dtJuQp4OijZi74e4i1IYsHEpgeSw7925
 T5o7kX356Q5drLBa9vxAql1qM1jX2oGShWK7szOXHLkGvgNb8p6kFLQf8VSPGHgCovOP
 Jsf2mp0P6EhKlhyfeaQTOorOn4zR8uDj8zRy7zt2WfNvHFvaqQP0FndvTSDpP+MII5Gn
 AImgXMJgloJGvnLUCaZmeFakGIf1JR6vN1csGiQIwrj3FlwmJGqnFAfkIoWdo2RSYWm+
 SY8V5rq1G4bhai0/QaUj/Teew6FcdaYavKhe6B3HuKXBa0aPZTkB/88P44B9eoRTw0aH
 prrw==
X-Gm-Message-State: AOAM531FIA7kIJvNX9Kd1D0fXCzr0TF2q3NU8kBBMgHqOEn161mCWFQ/
 o9lPzwOs6Vvhiao60+8/PAu2vbdiAqePdMdH/aM=
X-Google-Smtp-Source: ABdhPJy8urnKhAW4YsIazNFzsark40KJjqxtfB85kGu9EHtyM8tHCU7JMU3OzFlZfGtRgtq6e2t1fXXP0fPdR2VsiL4=
X-Received: by 2002:a05:6830:160d:: with SMTP id
 g13mr6763788otr.74.1605975789695; 
 Sat, 21 Nov 2020 08:23:09 -0800 (PST)
MIME-Version: 1.0
References: <20201113154632.24973-1-sergio.paracuellos@gmail.com>
 <20201113154632.24973-3-sergio.paracuellos@gmail.com>
 <20201121133432.GA2130098@robh.at.kernel.org>
 <CAMhs-H9JORHgPmq0-n=hx=yRo0SCT33mP_quxZoRtKYkiVDy_Q@mail.gmail.com>
In-Reply-To: <CAMhs-H9JORHgPmq0-n=hx=yRo0SCT33mP_quxZoRtKYkiVDy_Q@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 21 Nov 2020 17:22:58 +0100
Message-ID: <CAMhs-H8j+OYmBuj-ZzTUr7jFYokS0H4+DSa-QCa4R=Fm00aagw@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] dt: bindings: add mt7621-clk device tree binding
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
 Michael Turquette <mturquette@baylibre.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, jiaxun.yang@flygoat.com,
 "open list:MIPS" <linux-mips@vger.kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Nov 21, 2020 at 3:50 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> Hi Rob,
>
> Thanks for the review.
>
> On Sat, Nov 21, 2020 at 2:34 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Fri, Nov 13, 2020 at 04:46:29PM +0100, Sergio Paracuellos wrote:
> > > Adds device tree binding documentation for clocks in the
> > > MT7621 SOC.
> > >
> > > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > > ---
> > >  .../bindings/clock/mediatek,mt7621-clk.yaml   | 61 +++++++++++++++++++
> > >  1 file changed, 61 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> > > new file mode 100644
> > > index 000000000000..363bd9880e29
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> > > @@ -0,0 +1,61 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/clock/mediatek,mt7621-clk.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: MT7621 Clock Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > > +
> > > +description: |
> > > +  The MT7621 has a PLL controller from where the cpu clock is provided
> > > +  as well as derived clocks for the bus and the peripherals. It also
> > > +  can gate SoC device clocks.
> > > +
> > > +  Each clock is assigned an identifier and client nodes use this identifier
> > > +  to specify the clock which they consume.
> > > +
> > > +  All these identifiers could be found in:
> > > +  [1]: <include/dt-bindings/clock/mt7621-clk.h>.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: mediatek,mt7621-clk
> > > +
> > > +  ralink,sysctl:
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > +    description:
> > > +      phandle to the syscon which is in the same address area with syscon
> > > +      device.
> > > +
> > > +  "#clock-cells":
> > > +    description:
> > > +      The first cell indicates the clock gate number, see [1] for available
> > > +      clocks.
> > > +    const: 1
> > > +
> > > +  clock-output-names:
> > > +    maxItems: 8
> > > +
> > > +required:
> > > +  - compatible
> > > +  - ralink,sysctl
> > > +  - '#clock-cells'
> > > +  - clock-output-names
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/clock/mt7621-clk.h>
> > > +
> > > +    pll {
> > > +      compatible = "mediatek,mt7621-clk";
> > > +      ralink,sysctl = <&sysc>;
> >
> > If this is the only control interface, then make this a child of 'sysc'.
> > And use 'reg' if there's a dedicated range of registers.
>
> This is the only one now in the device tree which is still in staging
> but there are several places where this sys control registers are
> accessed from. In the case of the clocks we need:
>
> #define SYSC_REG_SYSTEM_CONFIG0         0x10
> #define SYSC_REG_SYSTEM_CONFIG1         0x14
> #define SYSC_REG_CLKCFG0                0x2c
> #define SYSC_REG_CLKCFG1                0x30
> #define SYSC_REG_CUR_CLK_STS            0x44
>
> where there is not a range as it is but several different registers
> from where we need to read or write things. I wrote the driver using
> syscon and regmap because I thought in that way it might be more
> maintainable but this architecture also has operations to read and
> write registers from sysc and not using regmap at all. This operations
> are defined in arch/mips/include/asm/mach-ralink/ralink_regs.h. But
> because this sysc is currently mapped I cannot request its registers
> using reg in the device tree. If you prefer me to avoid the use of
> this syscon and regmap and use operations defined in ralink_regs.h,
> this will become in a node without "regs" or  "ralink,sysctl"
> property:
>
> pll {
>     compatible = "mediatek,mt7621-clk";
>     #clock-cells = <1>;
>     clock-output-names = "xtal", "cpu", "bus",
>                       "50m", "125m", "150m",
>                        "250m", "270m";
> };
>
> What should I do then?

Ok, I think I understand now what you are saying. You meant just move
this as a child if 'sysc' and
avoid the phandle:

    sysc: sysc@0 {
            compatible = "mtk,mt7621-sysc", "syscon";
            reg = <0x0 0x100>;

            pll: pll {
                compatible = "mediatek,mt7621-clk";
                #clock-cells = <1>;
                clock-output-names = "xtal", "cpu", "bus",
                                  "50m", "125m", "150m",
                                 "250m", "270m";
            };
        };

And because there is not a range of registers 'reg' property is not
needed, right?

And in the driver side make use of 'syscon_node_to_regmap(node->parent)' instead
of 'syscon_regmap_lookup_by_phandle(node, "ralink,sysctl")'.

Ok, thanks for the clarification. Will change when v4 is sent.

Best regards,
    Sergio Paracuellos
>
> Best regards,
>     Sergio Paracuellos
>
> >
> > > +      #clock-cells = <1>;
> > > +      clock-output-names = "xtal", "cpu", "bus",
> > > +                           "50m", "125m", "150m",
> > > +                           "250m", "270m";
> > > +    };
> > > --
> > > 2.25.1
> > >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
