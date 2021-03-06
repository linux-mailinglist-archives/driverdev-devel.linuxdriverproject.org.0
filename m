Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B389632F934
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Mar 2021 10:54:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B3D3844F7;
	Sat,  6 Mar 2021 09:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m-SojQnZ0-c9; Sat,  6 Mar 2021 09:54:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1381B840E9;
	Sat,  6 Mar 2021 09:54:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D24681BF400
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 09:54:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CE543414FA
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 09:54:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 95Quur38zLNh for <devel@linuxdriverproject.org>;
 Sat,  6 Mar 2021 09:54:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com
 [IPv6:2607:f8b0:4864:20::334])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BD8D5414F6
 for <devel@driverdev.osuosl.org>; Sat,  6 Mar 2021 09:54:23 +0000 (UTC)
Received: by mail-ot1-x334.google.com with SMTP id h22so4299100otr.6
 for <devel@driverdev.osuosl.org>; Sat, 06 Mar 2021 01:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o3VJe+ZuS7Fy+8jhh+o3TzrnaFKjAbnnuNEMdGEuQ4E=;
 b=QuJn9ttAkQRO7rHC8UcuVjfI3su2spVFllMTP309N67RH4n1ImxdQ9iveaaMtGX5qd
 02bdzY929BsWffTrw8VuFhuY7uGMZZHubF4rBGfaiU+18Mdc7LGC+n2AQ91M2UqHw/4a
 YWudRWPV9tVmocf6M8vJr9G3dNP4QuGJtJU4y7JFoc0fN4d8qQfXVYPXwBDlIiu2vfuy
 KgDt55Ze+3Twr87NRaFinoFXHBwZL/PBKNDYcrgf3BvjhSSceF1PQCbai4f/DDeqzxWI
 +HobtGisW7Kizuk5oJqoe6QPJLAaJrtBC0yMnMKsK8ibezGst8Gn5KfUlZsSvX+NhzFq
 b2xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o3VJe+ZuS7Fy+8jhh+o3TzrnaFKjAbnnuNEMdGEuQ4E=;
 b=oRFLevrTiOH6ZQNAofSaVhvUcZiTAJDk440SshIZmXtM+6H4ljE921aalVYk0uJUWi
 Fdm/Dr/hrTze9lA4usuvPT0Nm7xbTfgsoe61yZsGyB2x7dv1Mb20qF3n6YWLiyL/VUBi
 2nPTk0bkiXYSmK6q8dGCRbYxu/v9MOoWA/0x0IDKXm1SE148/ZzJTgl6/jmQCKam9iJF
 MF/qkp6ypAtr4c+h7BmEproDfe2DPeMSP76A3sj9cvqzJPFwAkBhShnIooUeoqXTJqe9
 e+n/oeyae79riIjC8fB6vQsRguZrydo/+uMPNKbfk9oLW3qiYcidbLUR+y81JoyyPoCq
 YAQQ==
X-Gm-Message-State: AOAM532+axPyJUYsPMJ4sNVyqOglZxCs5706n9t2FHxyW1WkaTUrZBAO
 E+ioZl6xLSeOVXLH3T85B6Q6FmiGN5Jbnz+P3mc=
X-Google-Smtp-Source: ABdhPJybzMi6Zw1D5o/q36FweHJTgQsEC4CUoErnRfmyhvEIJiB7hgtCgLLtx8z+JX/kKaXVdimIgJXII5x018M6qXQ=
X-Received: by 2002:a9d:6e01:: with SMTP id e1mr11415112otr.74.1615024462779; 
 Sat, 06 Mar 2021 01:54:22 -0800 (PST)
MIME-Version: 1.0
References: <20210218070709.11932-1-sergio.paracuellos@gmail.com>
 <20210218070709.11932-3-sergio.paracuellos@gmail.com>
 <20210305224756.GA777984@robh.at.kernel.org>
 <CAMhs-H_RoA-JvT9Q1K+8tEA1vqS6HWuE-D4=kWVsoOWTwjTGbw@mail.gmail.com>
In-Reply-To: <CAMhs-H_RoA-JvT9Q1K+8tEA1vqS6HWuE-D4=kWVsoOWTwjTGbw@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 6 Mar 2021 10:54:11 +0100
Message-ID: <CAMhs-H9noK84G_PgLdL1kTS9YuEa=bKojrOojYTBtOeKy+L7RA@mail.gmail.com>
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
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi again,

On Sat, Mar 6, 2021 at 8:12 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> Hi Rob,
>
> On Fri, Mar 5, 2021 at 11:47 PM Rob Herring <robh@kernel.org> wrote:
> [snip]
> > > +
> > > +  ralink,sysctl:
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > +    description:
> > > +      phandle of syscon used to control system registers
> > > +
> > > +  ralink,memctl:
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > +    description:
> > > +      phandle of syscon used to control memory registers
> >
> > I assume one of these phandles are the main registers for the clocks?
> > Make this a child node and drop that phandle.
>
> The 'ralink,sysctl' phandle is to read bootstrap register to be able
> to derive xtal and a clk gate register for the peripherals.
> The 'ralink,memctl' phandle is to read the cpu clock frequency from
> the memory controller.
>
> So there is not "main registers". I already put this as a child node
> in v4 and I was told to get rid of child nodes. I need this as a
> regmap to other DT node registers (sysctl, and memctl) to be able to
> use the driver without specific architecture operations and properly
> enable for COMPILE_TEST without dirty Makefile arch flags. Both sysctl
> and memctl has no other child nodes, and I think that's why I was told
> to avoid child nodes at the end. I explained here [0] current sysctl
> and memctl in the mt7621 device tree and my view of the need for this
> two syscons:
>
> [0]: https://lkml.org/lkml/2021/1/2/9
>
> So to avoid to send again "a previous version" on this patch, please
> guide me in the correct thing to do. Stephen, Rob, I will be really
> happy with your help :)

Since there are no other child nodes for this sysc, should merge clock
properties
with this node in the following way a valid approach:

 sysc: sysc@0 {
     compatible = "mediatek,mt7621-sysc", "syscon";
     reg = <0x0 0x100>;
     #clock-cells = <1>;
     ralink,memctl = <&memc>;
     clock-output-names = "xtal", "cpu", "bus",
                                        "50m", "125m", "150m",
                                        "250m", "270m";
};

Consumer clock:

node: node@0 {
  ...
  clocks = <&sysc MT7621_CLK_WHATEVER>;
 ...
};

If that is the case... and since 'sysc' is used as system control
registers for all the rest of the world, where should be the yaml file
with bindings placed?

Thanks in advance again for your help.

Best regards,
    Sergio Paracuellos

>
> Best regards,
>     Sergio Paracuellos
> >
> > > +
> > > +  clock-output-names:
> > > +    maxItems: 8
> > > +
> > > +required:
> > > +  - compatible
> > > +  - '#clock-cells'
> > > +  - ralink,sysctl
> > > +  - ralink,memctl
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/clock/mt7621-clk.h>
> > > +
> > > +    pll {
> > > +      compatible = "mediatek,mt7621-clk";
> > > +      #clock-cells = <1>;
> > > +      ralink,sysctl = <&sysc>;
> > > +      ralink,memctl = <&memc>;
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
