Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7102DCF00
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 11:01:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E2CB8756A;
	Thu, 17 Dec 2020 10:01:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AMmYVZ8Gc5xc; Thu, 17 Dec 2020 10:01:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 18E4587211;
	Thu, 17 Dec 2020 10:01:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA4E41BF41F
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 10:01:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E6D7A877F4
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 10:01:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4yWJHqjO23-6 for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 10:01:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
 [209.85.167.174])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B5081877E7
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:01:51 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id 9so24421238oiq.3
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 02:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E6B0n/kL/wMGsadSYxdkD92oI9sz7hCd/5Y5iCkTsO0=;
 b=JIDnTZ+dkTGkuqQbTjs277atgzSf45QR7PxZJm15m+B1hdcZZu6tvepplmoliRbc71
 6kz7HtKoUOVBC9zWWgtCeXxkkGIOyCTHiTJL23ZY8qrO3xAkUHa5RKyYvD36mrvSvWuX
 FTXHbHN88khTl8J4frq6c+aKhZUm65pJD9R0wQY6Gkmb3Wk/MixSm0aQaJBf3U2PnQyA
 cIlaxxdf1UKFHu9AKQ3RA5Li9gUwNRLEaX4CTxyMc1hgBz3PIcbQ7bxyuy+2lGObqd59
 3SUd99Wg2bIWKiKtqCcOE0c8EGRYluuPwP0CXNXklKT8U3FHmjQ5qiFyg8+ejETPWJGt
 2wmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E6B0n/kL/wMGsadSYxdkD92oI9sz7hCd/5Y5iCkTsO0=;
 b=AgDKt3Z76BAPcEl24L9wRFsVJhG8Qe2yp+FD+SLotUNp30BKkfAa1B2rrjP87guqVa
 prkuzCaHWKuvl4Y9NJRC9TmrxjA3+n9GnCjXSricNt57NJoOrtU/L4iNkJuElrDPa4Xf
 uvsLIrHf+PmGeDW3jvQfUefEMJDBkG4RsSNu9k6IjonKfjso+YGQW4R+EmxD9s/A66Bq
 tjq4Ste++xj0xh6mH1N6JLt84v800HB8BdZtF9IKeHGMKPsXLYhqhhBAOGLgtJEXrnQc
 qNwyict5CGT4lbhNPr2PKFtXms/1mfCCWnwi0gwoy3WWpKhQdbg5hLgDC4uAA82vhgG/
 R24w==
X-Gm-Message-State: AOAM5328Fx1MywyoGuUazOSGklEk+M+/Lva9ZBPbuRyBw2VlAWu5/OWq
 CHHzMsFQBaAAelTQKm+5sliCPytORfpTHsE+GCY=
X-Google-Smtp-Source: ABdhPJyVAjAAhsdi/w80gubLXEKaWwlqeaqjo708M94kRNOPy7Ea3S0UCvh/YvNROEA7LxcBlQSdCVRMwUv+qWWBWiw=
X-Received: by 2002:aca:3ed5:: with SMTP id l204mr4328699oia.149.1608199311015; 
 Thu, 17 Dec 2020 02:01:51 -0800 (PST)
MIME-Version: 1.0
References: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
 <20201122095556.21597-3-sergio.paracuellos@gmail.com>
 <160819550615.1580929.14234996916739809712@swboyd.mtv.corp.google.com>
In-Reply-To: <160819550615.1580929.14234996916739809712@swboyd.mtv.corp.google.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 17 Dec 2020 11:01:39 +0100
Message-ID: <CAMhs-H_EiDot_V4Qj1Q8noAf5RNi9BOyy0WmawE+70wY7=FxDg@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] dt: bindings: add mt7621-clk device tree binding
 documentation
To: Stephen Boyd <sboyd@kernel.org>
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
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Stephen,

Thanks for the review!

On Thu, Dec 17, 2020 at 9:58 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Sergio Paracuellos (2020-11-22 01:55:52)
> > Adds device tree binding documentation for clocks in the
> > MT7621 SOC.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> >  .../bindings/clock/mediatek,mt7621-clk.yaml   | 67 +++++++++++++++++++
> >  1 file changed, 67 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> >
>
> Rob?
>
> > diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> > new file mode 100644
> > index 000000000000..6aca4c1a4a46
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> > @@ -0,0 +1,67 @@
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
> > +  The mt7621 clock node should be the child of a syscon node with the
> > +  required property:
> > +
> > +  - compatible: Should be one of the following:
> > +                "mediatek,mt7621-sysc", "syscon"
> > +
> > +  Refer to the bindings described in
> > +  Documentation/devicetree/bindings/mfd/syscon.yaml
> > +
> > +properties:
> > +  compatible:
> > +    const: mediatek,mt7621-clk
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
> > +  - '#clock-cells'
> > +  - clock-output-names
>
> Why is clock-output-names required? Hopefully it is not required.

Not really, can be removed from here.

>
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/mt7621-clk.h>
> > +
> > +    sysc: sysc@0 {
>
> syscon@0? I don't think sysc is a standard node name.

Ok, I will change this into syscon@0 in both bindings and device tree file.

>
> > +      compatible = "mediatek,mt7621-sysc", "syscon";
> > +      reg = <0x0 0x100>;
> > +
> > +      pll {
>
> clock-controller? Why can't the parent device be the clk provider and
> have #clock-cells?
>

I don't get your point, sorry. Can you please explain this a bit more
or point to me to an example to understand the real meaning of this?


> > +        compatible = "mediatek,mt7621-clk";
> > +        #clock-cells = <1>;
> > +        clock-output-names = "xtal", "cpu", "bus",
> > +                             "50m", "125m", "150m",
> > +                             "250m", "270m";
> > +      };
> > +    };

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
