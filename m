Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 184482BC010
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Nov 2020 15:50:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A290D86C31;
	Sat, 21 Nov 2020 14:50:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1MncUKdILlj4; Sat, 21 Nov 2020 14:50:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1F09B86A1D;
	Sat, 21 Nov 2020 14:50:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 920FA1BF82F
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 14:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7F77020420
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 14:50:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3AkHLi5iT--T for <devel@linuxdriverproject.org>;
 Sat, 21 Nov 2020 14:50:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 26CD620418
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 14:50:35 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id s18so13046742oih.1
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 06:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ette9kx7pLe3BTxF6SA7N6NBJN1cBdU9jOFxOgT8Dgs=;
 b=C98eNIJQ96ROHkZRL2BXaceiD1FesqjudfRDq0SpYUawYUbCsJMGSJnsiTUwp+ChlT
 m4kiJfomdNY6iWhv9UK81qwOFUCOseOB+YLSTDuzWlcTHD45LIH6deMhEFjpv8zwnRsZ
 F5PDDrjO3Jly6kUL5VABH4/9KRP5UwkMRT1mxrEAaZ9nCCNw9bbLebPJgNbvD/KcwcKG
 KRAt1AyVrrgnbZ8qjoNtbFrDp28z/eI4ki6K6oxtKYMZKmQwvNEHwnQVWDZFDBDTuzWq
 /7/0SuxWzzN2qPxvilP23Ega639E64hREY3F/w3y2+39Rlc8brtm/8PnKKhypzapyapf
 RFsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ette9kx7pLe3BTxF6SA7N6NBJN1cBdU9jOFxOgT8Dgs=;
 b=nTzSsPsT8257zQcjL2Fl7Gq1FgCRGuQEV3DPFmQPZyS374PK8xNofWP/e6VlDzdhiJ
 Q2+g1YEWlJS6K7F5CV5T/1mOypLQmLOSS2bVncd3V9+dU/GlAAtKs7bIAbR2ipxrGiQ0
 BQLPycnu9q+6h2sseZA4j/eh6tqYaixQ8tAsDtXPw8DCh5jJ5M1gO2QGOKp4HfDmnwRQ
 iR0crErhuIPP3TNBRgcs9Bl9W/2TQ3xnZaUNKUk2faa7pgcQNx6hAR9t4fZt4u1iE0oi
 9lHjS69ywwTbQHSqxe+Dk5qaQzul6tr+3kuUWdtd1J1TWInk53Es+UJTMYApGaGyX441
 ynsQ==
X-Gm-Message-State: AOAM532K/0SwSNBQZVyq2ylDi29FQNVq+QtsWe5rC4qherEun/nC7JNW
 jmpNL3LdTleTJakyPjB9B/iBI5IRxA3Pq48uJM4=
X-Google-Smtp-Source: ABdhPJySOdSRaChFfDTdyVQzHEvIojGBbrolLIz896Qw2h4xpte1Ro7K6uWBdEMow99a6PELRxBLWCEe9btAVMFc9CI=
X-Received: by 2002:aca:59c3:: with SMTP id n186mr9282300oib.149.1605970234325; 
 Sat, 21 Nov 2020 06:50:34 -0800 (PST)
MIME-Version: 1.0
References: <20201113154632.24973-1-sergio.paracuellos@gmail.com>
 <20201113154632.24973-3-sergio.paracuellos@gmail.com>
 <20201121133432.GA2130098@robh.at.kernel.org>
In-Reply-To: <20201121133432.GA2130098@robh.at.kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 21 Nov 2020 15:50:23 +0100
Message-ID: <CAMhs-H9JORHgPmq0-n=hx=yRo0SCT33mP_quxZoRtKYkiVDy_Q@mail.gmail.com>
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

Hi Rob,

Thanks for the review.

On Sat, Nov 21, 2020 at 2:34 PM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Nov 13, 2020 at 04:46:29PM +0100, Sergio Paracuellos wrote:
> > Adds device tree binding documentation for clocks in the
> > MT7621 SOC.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> >  .../bindings/clock/mediatek,mt7621-clk.yaml   | 61 +++++++++++++++++++
> >  1 file changed, 61 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> > new file mode 100644
> > index 000000000000..363bd9880e29
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> > @@ -0,0 +1,61 @@
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
> > +  ralink,sysctl:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      phandle to the syscon which is in the same address area with syscon
> > +      device.
> > +
> > +  "#clock-cells":
> > +    description:
> > +      The first cell indicates the clock gate number, see [1] for available
> > +      clocks.
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    maxItems: 8
> > +
> > +required:
> > +  - compatible
> > +  - ralink,sysctl
> > +  - '#clock-cells'
> > +  - clock-output-names
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/mt7621-clk.h>
> > +
> > +    pll {
> > +      compatible = "mediatek,mt7621-clk";
> > +      ralink,sysctl = <&sysc>;
>
> If this is the only control interface, then make this a child of 'sysc'.
> And use 'reg' if there's a dedicated range of registers.

This is the only one now in the device tree which is still in staging
but there are several places where this sys control registers are
accessed from. In the case of the clocks we need:

#define SYSC_REG_SYSTEM_CONFIG0         0x10
#define SYSC_REG_SYSTEM_CONFIG1         0x14
#define SYSC_REG_CLKCFG0                0x2c
#define SYSC_REG_CLKCFG1                0x30
#define SYSC_REG_CUR_CLK_STS            0x44

where there is not a range as it is but several different registers
from where we need to read or write things. I wrote the driver using
syscon and regmap because I thought in that way it might be more
maintainable but this architecture also has operations to read and
write registers from sysc and not using regmap at all. This operations
are defined in arch/mips/include/asm/mach-ralink/ralink_regs.h. But
because this sysc is currently mapped I cannot request its registers
using reg in the device tree. If you prefer me to avoid the use of
this syscon and regmap and use operations defined in ralink_regs.h,
this will become in a node without "regs" or  "ralink,sysctl"
property:

pll {
    compatible = "mediatek,mt7621-clk";
    #clock-cells = <1>;
    clock-output-names = "xtal", "cpu", "bus",
                      "50m", "125m", "150m",
                       "250m", "270m";
};

What should I do then?

Best regards,
    Sergio Paracuellos

>
> > +      #clock-cells = <1>;
> > +      clock-output-names = "xtal", "cpu", "bus",
> > +                           "50m", "125m", "150m",
> > +                           "250m", "270m";
> > +    };
> > --
> > 2.25.1
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
