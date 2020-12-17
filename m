Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDC12DD3D5
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 16:12:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C2C78758A;
	Thu, 17 Dec 2020 15:12:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mn9_FG0nAMwK; Thu, 17 Dec 2020 15:12:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D3CB87447;
	Thu, 17 Dec 2020 15:12:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE7931BF30F
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 15:12:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D458027233
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 15:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ERJrIs6aZ3l for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 15:12:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 by silver.osuosl.org (Postfix) with ESMTPS id 7477B22B25
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 15:12:21 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id x13so23499217oic.5
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 07:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kzMBmlibq76f5yv+/Tsnh17vM8pmr6p5zVG9gRqZBy0=;
 b=NcUkDAOvq3/UwiR+n9/KcC2mcBfR9g+zCs2oA6uj4/1A5UiP2gwXiZYWRaUVrsyVlU
 ucAmqXUrkGN+8OQXS7Myo5XkpQdbP18ebObo5UE/srkCxHQrzaO8yYKaMdxsaI9fNaqf
 xHIveI/VFOQ0lXC9lEuxmchxsl5YhT+jotTZeoxlTmhOSjdLRblDjGGtDdaFSgYdUItW
 Tj4zWnuJ2IG/QrE3dwoe1V1G8QNjlZeF23yS4162Wsz/GrXWU8sqebWiu5pEHdidLMWu
 DPEvPKRYAdIRYvb9irUubCNywe6tYK1p+6zW1Qvi3s6JGN2owoA+vtdxKNxYNuDsRPkE
 wXqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kzMBmlibq76f5yv+/Tsnh17vM8pmr6p5zVG9gRqZBy0=;
 b=AvgeGbINoBc6EADkl+YKBdXMtzhwJhdRXW6aNbY16xcsH07FtfeCN5YPqaQEa3DIzq
 bx2I6h6fjhETLEi68yRA1dKBMgjgTfqSgJFdas+R/jwgwm0skULISe+gcUKeFu9xDn86
 nMk6oOBOqr/5xXjW/dTSjTpcMUH2SlIiHqArmbfE1WpeOXVry+t/U09/lYozlAVB5OC5
 /PNCI+n/YjGp7NeXul93fi9tgMy7hsUPuIMizdGQEVuNiGKo6Hvud01BPGPjrRaxymqd
 55NK72a8Jd5e53NDJuwx6r3273+wfzMCWMRBro84S/Rb6G0dzZ5r7EHa4FdRr7mtAf6l
 2MeQ==
X-Gm-Message-State: AOAM533ftDNULeX7xXHQA49Dr1bOtWJXbjsULirhO7CLse1nBQlc7Uwa
 +ijPZOVGufYUQFZyWGgM1S//CD/+jQwC/8roXAg=
X-Google-Smtp-Source: ABdhPJzbGX9yzZnSFnykiaAlgcvsaCJs08rhZzT4N1d2vC0OMg4FWero8eTWeiLWpCGnd/8ET6et5ZSBLDWYPCRYxZQ=
X-Received: by 2002:aca:3ed5:: with SMTP id l204mr5090106oia.149.1608217940702; 
 Thu, 17 Dec 2020 07:12:20 -0800 (PST)
MIME-Version: 1.0
References: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
 <20201122095556.21597-3-sergio.paracuellos@gmail.com>
 <160819550615.1580929.14234996916739809712@swboyd.mtv.corp.google.com>
 <CAL_JsqLONxqAXRta2iuYNoJ=8wEFdYsiq_OFqgSW3aMLMhy94Q@mail.gmail.com>
In-Reply-To: <CAL_JsqLONxqAXRta2iuYNoJ=8wEFdYsiq_OFqgSW3aMLMhy94Q@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 17 Dec 2020 16:12:09 +0100
Message-ID: <CAMhs-H_F5npCkxxHc4Pz+6Ptm=ML13adk6Kg_aHqatpZwAietA@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] dt: bindings: add mt7621-clk device tree binding
 documentation
To: Rob Herring <robh+dt@kernel.org>
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
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>, linux-clk <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Rob,

On Thu, Dec 17, 2020 at 4:05 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Thu, Dec 17, 2020 at 2:58 AM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Sergio Paracuellos (2020-11-22 01:55:52)
> > > Adds device tree binding documentation for clocks in the
> > > MT7621 SOC.
> > >
> > > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > > ---
> > >  .../bindings/clock/mediatek,mt7621-clk.yaml   | 67 +++++++++++++++++++
> > >  1 file changed, 67 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> > >
> >
> > Rob?
>
> Send to the DT list please.

Sorry, there was a typo 'evicetree@vger.kernel.org' in CC list.

>
> But I agree with Stephen's comment. Either make the syscon complete
> (fully describe the h/w, not just what you need ATM) to show the need
> for child nodes or get rid of the child nodes.

Got it. Will try to do something better and send v5.

>
> Rob

Thanks,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
