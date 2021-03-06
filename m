Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A58532F792
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Mar 2021 02:53:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AAE2845F9;
	Sat,  6 Mar 2021 01:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KlLgJtNqPjlK; Sat,  6 Mar 2021 01:53:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5314C845F0;
	Sat,  6 Mar 2021 01:53:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B03361BF82D
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 01:53:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F4AB845EC
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 01:53:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qTpDGjCIDc-U for <devel@linuxdriverproject.org>;
 Sat,  6 Mar 2021 01:53:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com
 [IPv6:2607:f8b0:4864:20::d34])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF037845EB
 for <devel@driverdev.osuosl.org>; Sat,  6 Mar 2021 01:53:00 +0000 (UTC)
Received: by mail-io1-xd34.google.com with SMTP id o11so4058681iob.1
 for <devel@driverdev.osuosl.org>; Fri, 05 Mar 2021 17:53:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DKCLycYpc3HKoJmuKPBdeHcQJ9gEh+09JrAX4tJjuOo=;
 b=cHA5c3x+i5YpdF7NuMdeZOez2mxXfShWziiUFDPqrxH2zSdnXomtkyZWz5cthIvO22
 s7s9mWe44nPB0jvEnJPAMuDjQENwQJocVHeHIL44ea35Kr/6KChALv9HMbGZrHYVJM3P
 tJh4N6yQziZs+KFrQYAn7UUJNQoXCcgQu2qXKsiLHnepo6ZdkoAKdkPe0mlHLx9NE0o7
 Ls2jWUArF/X1tsGCL23QKaDXAtbRQUGrpFKAmKVARI3vf+1/vPYM64F3nhVsAIqWybFv
 s26KUHJmv4gG9/Khhgb+cOiMCO4F7GUEp5VgCYRthGKo4AdfJJ7aECMzveFsBwC5A8GE
 XTew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DKCLycYpc3HKoJmuKPBdeHcQJ9gEh+09JrAX4tJjuOo=;
 b=fwPpzADizS+iy8FOzKiIJ14+UdQXS9dgrorV3OPYfhZRm10w+hwT7P0zwE45r8dDkp
 N7M0jYTGHyytxMW5cFAVN6SCjCP8uUIMj8thvhkkn/onso5C39U4+Cna2HbG+hdZ1O3T
 6TfuF4iLU0/iMOitlott98zPCxWJKiUtr6PAgt3GCL8oe5mmdJsU86XhDjVB2a2UXN7z
 VnBqTThVj546koiF2dQ4/XZ4fxtI1WZCuoeW9myFTsP9oJVhcvoKy4CO44XD11GQlyfM
 ng4I5VKffDuLwR9LwvNerzMQK4kVFJ3Pnvp7ewvTLzS2s/CZ5Mirxen6OuwUIHH8+spr
 +/+g==
X-Gm-Message-State: AOAM533B3aPWJoGfMcvHmC1djnX27i8XBuKEjG+mSe50+kfNQ8WRMMmk
 omYESDBNWbin9+fubr92AmqWNkKJVfhiDTlUvRY=
X-Google-Smtp-Source: ABdhPJz1LKvjkKpi0mhhWNpQ/jhaYsdcSFGnQIHJxnvPcCnrRZkUL3VDIXLbOq9IltszwFxvj536k9ZaQDcbQggHQWs=
X-Received: by 2002:a5d:97c9:: with SMTP id k9mr10521371ios.45.1614995580001; 
 Fri, 05 Mar 2021 17:53:00 -0800 (PST)
MIME-Version: 1.0
References: <20210218070709.11932-1-sergio.paracuellos@gmail.com>
 <20210218070709.11932-3-sergio.paracuellos@gmail.com>
 <20210305224756.GA777984@robh.at.kernel.org>
In-Reply-To: <20210305224756.GA777984@robh.at.kernel.org>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sat, 6 Mar 2021 09:52:48 +0800
Message-ID: <CAJsYDVLJy_F6HYbQUjFzB+YKnaNujBH_Fqo0rinvTfs-0o8xfA@mail.gmail.com>
Subject: Re: [PATCH v9 2/6] dt: bindings: add mt7621-clk device tree binding
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Rob!

On Sat, Mar 6, 2021 at 6:48 AM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Feb 18, 2021 at 08:07:05AM +0100, Sergio Paracuellos wrote:
> > Adds device tree binding documentation for clocks in the
> > MT7621 SOC.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> >  .../bindings/clock/mediatek,mt7621-clk.yaml   | 66 +++++++++++++++++++
> >  1 file changed, 66 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> > new file mode 100644
> > index 000000000000..842a0f2c9d40
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> > @@ -0,0 +1,66 @@
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
> > +  ralink,sysctl:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      phandle of syscon used to control system registers
> > +
> > +  ralink,memctl:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      phandle of syscon used to control memory registers
>
> I assume one of these phandles are the main registers for the clocks?
> Make this a child node and drop that phandle.

On MT7621, CPU clock can be chosen from 3 sources: crystal clock,
a fixed 500MHz clock or a clock created by the memory controller.
sysctl contains a bootstrap register to determine crystal clock, a
clock mux for choosing between the 3 sources for CPU clock, and
a clock gate register for various peripherals. The ralink,memctl
phandle here is to read the cpu clock frequency from the memory
controller.
The original implementation hides this hardware detail to avoid
splitting the driver into three just for the CPU clock.
Is this approach okay and we can put it under sysctl node,
or this driver needs to be further splitted?

-- 
Regards,
Chuanhong Guo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
