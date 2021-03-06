Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E9D32F8B3
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Mar 2021 08:13:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF0616066F;
	Sat,  6 Mar 2021 07:13:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BsL--OczbeOT; Sat,  6 Mar 2021 07:13:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25215605DF;
	Sat,  6 Mar 2021 07:13:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 53F9A1BF313
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 07:12:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 432CD605E0
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 07:12:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RkwZCP1JooJt for <devel@linuxdriverproject.org>;
 Sat,  6 Mar 2021 07:12:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com
 [IPv6:2607:f8b0:4864:20::22c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 60FDE605DF
 for <devel@driverdev.osuosl.org>; Sat,  6 Mar 2021 07:12:55 +0000 (UTC)
Received: by mail-oi1-x22c.google.com with SMTP id j1so5193641oiw.3
 for <devel@driverdev.osuosl.org>; Fri, 05 Mar 2021 23:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CTkltZ77nL3kaQcEgltQYwF2jxJLi5wxQebdJjXmF/k=;
 b=nYDeG1fly5e1DSLkyZ91GtQWjAeAyZggxB2youoPLZrI0GOi/kYvLhgjxp3do6jC8F
 nN+EnosdVjYb8V7/DDAlO8PKGtDMdEjL0CEPq25B4Tva+3LrR4tehxoYhDZ6jf8abEB2
 aYiRxkDaxSrdximMfsuCZvuKshsfp8dBpV5f3xhS0DC6Rk2U9UfwRDyWoOsuHPHo/Lsj
 td8Vgu3bI5AytpDwBHoPiJpgnMvpyclg1/LRiFTD2RW0KJoYUyrGxcrM5VKcd9j0tlmK
 t6+AuyOwCCdJPyIPghXe7u9QeNMbS0szafiVwxnh8VmsdT1QJDex4Y9tTKzZ28oVaWFp
 bN1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CTkltZ77nL3kaQcEgltQYwF2jxJLi5wxQebdJjXmF/k=;
 b=WU0kzKHYPxmw86Dt7CsHnlquxHibmrwwldbkrfHDDe8l7vrik6C87SPjxNUDwbwpIB
 j6DYc2H2pdOcaWTmLHXlBYBF4eTOY49KXxWXb60QY0RzNXc0V3lKn5Y6A9ItL974hLIV
 m6Y60p923vH4rIRkqzGZRDTy5hbu8iK18dyBvNTrnIs3+O6Yg/5wdTw3W9THngSOQyim
 en4Kha6ONoPm0GbeoBw8gD/2kTfiv1d6BeD9P4cwre4cncYmgSaysK56JwrUlf+aCMYi
 RTF3zVrM0tGtepTOS7owyzp3HWQDG+MKx8IbV7igIzYTbBYeKfxrWaBf2QKyUnA+T+m2
 +dlg==
X-Gm-Message-State: AOAM53002Q5xYa6dsII4WgG6oHOLzbhTVbFshhCY8iUbiJghm5/Q4HtF
 tK02HmrCWX8vJoKN52As7GrNKTDLS/d33u1aVfw=
X-Google-Smtp-Source: ABdhPJzMrIW4Fxvb5eM7Cg7PpNPo2Ldi/VTWDPinGxzlo+n7ORohSk6mdfbm9pIhz6Eq8/ChP/NrOXh/Bm9mLwQx/4c=
X-Received: by 2002:a05:6808:97:: with SMTP id
 s23mr10041419oic.23.1615014774477; 
 Fri, 05 Mar 2021 23:12:54 -0800 (PST)
MIME-Version: 1.0
References: <20210218070709.11932-1-sergio.paracuellos@gmail.com>
 <20210218070709.11932-3-sergio.paracuellos@gmail.com>
 <20210305224756.GA777984@robh.at.kernel.org>
In-Reply-To: <20210305224756.GA777984@robh.at.kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 6 Mar 2021 08:12:43 +0100
Message-ID: <CAMhs-H_RoA-JvT9Q1K+8tEA1vqS6HWuE-D4=kWVsoOWTwjTGbw@mail.gmail.com>
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

Hi Rob,

On Fri, Mar 5, 2021 at 11:47 PM Rob Herring <robh@kernel.org> wrote:
[snip]
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

The 'ralink,sysctl' phandle is to read bootstrap register to be able
to derive xtal and a clk gate register for the peripherals.
The 'ralink,memctl' phandle is to read the cpu clock frequency from
the memory controller.

So there is not "main registers". I already put this as a child node
in v4 and I was told to get rid of child nodes. I need this as a
regmap to other DT node registers (sysctl, and memctl) to be able to
use the driver without specific architecture operations and properly
enable for COMPILE_TEST without dirty Makefile arch flags. Both sysctl
and memctl has no other child nodes, and I think that's why I was told
to avoid child nodes at the end. I explained here [0] current sysctl
and memctl in the mt7621 device tree and my view of the need for this
two syscons:

[0]: https://lkml.org/lkml/2021/1/2/9

So to avoid to send again "a previous version" on this patch, please
guide me in the correct thing to do. Stephen, Rob, I will be really
happy with your help :)

Best regards,
    Sergio Paracuellos
>
> > +
> > +  clock-output-names:
> > +    maxItems: 8
> > +
> > +required:
> > +  - compatible
> > +  - '#clock-cells'
> > +  - ralink,sysctl
> > +  - ralink,memctl
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
> > +      ralink,sysctl = <&sysc>;
> > +      ralink,memctl = <&memc>;
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
