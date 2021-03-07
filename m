Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D0E32FF3C
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Mar 2021 07:27:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94E6683D8C;
	Sun,  7 Mar 2021 06:27:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BntsGAFHorQv; Sun,  7 Mar 2021 06:27:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D7B683D41;
	Sun,  7 Mar 2021 06:27:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 001081BF5AE
 for <devel@linuxdriverproject.org>; Sun,  7 Mar 2021 06:27:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E2C3C4891C
 for <devel@linuxdriverproject.org>; Sun,  7 Mar 2021 06:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vkATYap4c60c for <devel@linuxdriverproject.org>;
 Sun,  7 Mar 2021 06:27:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com
 [IPv6:2607:f8b0:4864:20::32b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A950B487EA
 for <devel@driverdev.osuosl.org>; Sun,  7 Mar 2021 06:27:36 +0000 (UTC)
Received: by mail-ot1-x32b.google.com with SMTP id f33so6049695otf.11
 for <devel@driverdev.osuosl.org>; Sat, 06 Mar 2021 22:27:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GPRWwy3SL7jcLoSJyifJgoFoz/VF4yU3PDUSUbMzaaA=;
 b=iE1WxHNV/cAQQJFlugY+hOfG2m+juVr2ls7rZSssGr2po4ncWgx83fb8YwMUVv8szg
 mY55UPdH8fUrwKo8+tkSjRkI4z2ojQgSAeKf5RdxUn7FCFEv2atykcKPod/YZ0q1sHTZ
 1hafjxBp+mtY3iDmXrP0nHe47Cg/wfEECzhAoYp8z3ySrLFLIPaQB4B9P04N1bECSDC7
 1V5UoNgm23vNGgFRKC+gWem+QP+I6LIKeQEZMkdgA5Oa0iaQi/X8vDfQVOVlbyHWDEoT
 Z/6uwt9WMxe14JINfpwTRcyko9lb5FXKhydeabg4Ps7ra1pFZgkUwNbXx9Efpd2t9fUr
 a8nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GPRWwy3SL7jcLoSJyifJgoFoz/VF4yU3PDUSUbMzaaA=;
 b=Wu2ONwaIpqL9fCL7Q51h2HmYqFqU/JijsjxBL0BZ1VqNeU3lzgYwHCA3NXWA+NbP0l
 zsIUOdx4sVZO4oD2bh3ScHFQmC7Hb3rh9/g6fruRMK8fkGV8eGs+r6kyEXk9Z8LbXCss
 rAlrWDnhYB/6AtD6WOr1n6XJPhExqQLT7gr0xTKp4+XIWWv5HYhOtT3KDEMHpX3y5NLB
 kuS+zc4+LUzzyG5RHTSqkKGnOM4mKw5y85WY+0oDKQbaMGupHVGBqpcCdrCh6OApygps
 qD2T5PR7mCeMkK3Xjp7yNFpCa21zA4S8ycwoVKcCKma0BkGAgHUA9LBz4HKrbYstFmc/
 05dw==
X-Gm-Message-State: AOAM530KPb7qhQAQ+pGieCNbJ1PlJO0DGnW4HWOFiVohpaEGkijczlQC
 iWoU+NnL8DABZdMOjAviJDprQGbAQsM+N3yiq2g=
X-Google-Smtp-Source: ABdhPJznN+lTfux7Cc4YRNsPIKCO52lpic3NYapKNgcZC3QExZ+SX0v3mWaUsv7/zbK3TQIJuRa0ykn9H5hi3ijjJ5Q=
X-Received: by 2002:a9d:6013:: with SMTP id h19mr1366500otj.72.1615098455733; 
 Sat, 06 Mar 2021 22:27:35 -0800 (PST)
MIME-Version: 1.0
References: <20210218070709.11932-1-sergio.paracuellos@gmail.com>
 <20210218070709.11932-3-sergio.paracuellos@gmail.com>
 <20210305224756.GA777984@robh.at.kernel.org>
 <CAMhs-H_RoA-JvT9Q1K+8tEA1vqS6HWuE-D4=kWVsoOWTwjTGbw@mail.gmail.com>
 <CAMhs-H9noK84G_PgLdL1kTS9YuEa=bKojrOojYTBtOeKy+L7RA@mail.gmail.com>
In-Reply-To: <CAMhs-H9noK84G_PgLdL1kTS9YuEa=bKojrOojYTBtOeKy+L7RA@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sun, 7 Mar 2021 07:27:24 +0100
Message-ID: <CAMhs-H_AgFdTd7r6sSz+=mXxCf9n5AjpxrRhkjGX-RYjhyzWrw@mail.gmail.com>
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

Hi,
On Sat, Mar 6, 2021 at 10:54 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> Hi again,
>
> On Sat, Mar 6, 2021 at 8:12 AM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> >
> > Hi Rob,
> >
> > On Fri, Mar 5, 2021 at 11:47 PM Rob Herring <robh@kernel.org> wrote:
> > [snip]
> > > > +
> > > > +  ralink,sysctl:
> > > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > > +    description:
> > > > +      phandle of syscon used to control system registers
> > > > +
> > > > +  ralink,memctl:
> > > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > > +    description:
> > > > +      phandle of syscon used to control memory registers
> > >
> > > I assume one of these phandles are the main registers for the clocks?
> > > Make this a child node and drop that phandle.
> >
> > The 'ralink,sysctl' phandle is to read bootstrap register to be able
> > to derive xtal and a clk gate register for the peripherals.
> > The 'ralink,memctl' phandle is to read the cpu clock frequency from
> > the memory controller.
> >
> > So there is not "main registers". I already put this as a child node
> > in v4 and I was told to get rid of child nodes. I need this as a
> > regmap to other DT node registers (sysctl, and memctl) to be able to
> > use the driver without specific architecture operations and properly
> > enable for COMPILE_TEST without dirty Makefile arch flags. Both sysctl
> > and memctl has no other child nodes, and I think that's why I was told
> > to avoid child nodes at the end. I explained here [0] current sysctl
> > and memctl in the mt7621 device tree and my view of the need for this
> > two syscons:
> >
> > [0]: https://lkml.org/lkml/2021/1/2/9
> >
> > So to avoid to send again "a previous version" on this patch, please
> > guide me in the correct thing to do. Stephen, Rob, I will be really
> > happy with your help :)
>
> Since there are no other child nodes for this sysc, should merge clock
> properties
> with this node in the following way a valid approach:
>
>  sysc: sysc@0 {
>      compatible = "mediatek,mt7621-sysc", "syscon";
>      reg = <0x0 0x100>;
>      #clock-cells = <1>;
>      ralink,memctl = <&memc>;
>      clock-output-names = "xtal", "cpu", "bus",
>                                         "50m", "125m", "150m",
>                                         "250m", "270m";
> };
>
> Consumer clock:
>
> node: node@0 {
>   ...
>   clocks = <&sysc MT7621_CLK_WHATEVER>;
>  ...
> };

I have been reviewing bindings review comments along the time and I
was already suggested to do this I am saying here (see [0]) but my
mind seems that filtered it for any reason I don't really understand.
Maybe I should sleep a bit more :).

I will send v10 with these changes that hopefully will be the correct ones.

Thanks and sorry for bothering you with already suggested things.

Best regards,
    Sergio Paracuellos

[0]: https://lkml.org/lkml/2020/12/31/206

>
> If that is the case... and since 'sysc' is used as system control
> registers for all the rest of the world, where should be the yaml file
> with bindings placed?
>
> Thanks in advance again for your help.
>
> Best regards,
>     Sergio Paracuellos
>
> >
> > Best regards,
> >     Sergio Paracuellos
> > >
> > > > +
> > > > +  clock-output-names:
> > > > +    maxItems: 8
> > > > +
> > > > +required:
> > > > +  - compatible
> > > > +  - '#clock-cells'
> > > > +  - ralink,sysctl
> > > > +  - ralink,memctl
> > > > +
> > > > +additionalProperties: false
> > > > +
> > > > +examples:
> > > > +  - |
> > > > +    #include <dt-bindings/clock/mt7621-clk.h>
> > > > +
> > > > +    pll {
> > > > +      compatible = "mediatek,mt7621-clk";
> > > > +      #clock-cells = <1>;
> > > > +      ralink,sysctl = <&sysc>;
> > > > +      ralink,memctl = <&memc>;
> > > > +      clock-output-names = "xtal", "cpu", "bus",
> > > > +                           "50m", "125m", "150m",
> > > > +                           "250m", "270m";
> > > > +    };
> > > > --
> > > > 2.25.1
> > > >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
