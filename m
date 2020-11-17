Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEB52B5960
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Nov 2020 06:39:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 82F1920434;
	Tue, 17 Nov 2020 05:39:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ThGkVW1qd66t; Tue, 17 Nov 2020 05:39:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5585D20408;
	Tue, 17 Nov 2020 05:39:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7AD421BF391
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 05:38:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7757385D37
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 05:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NtVMAcRWfn6W for <devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 05:38:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1EB6C85D2B
 for <devel@driverdev.osuosl.org>; Tue, 17 Nov 2020 05:38:49 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id t16so21372040oie.11
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 21:38:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rLinOapGuOZ7A3D9bbaR3AD8/7b7elhTbAVHcuXosMo=;
 b=iXvdipyXlKjO7vkforOOErJKLT9l4kohPmwWzx4eNeAhWv2I9a7ZbqC9XZXGVZVzfw
 retLRzNLwVhSlMhZHq9AP7fyn+PonHcaZfY57osuAJE6d95sWlhEOWQBL5H0RppGentn
 CyhtliOdaassc48YU+yghUdgt23RT1peNURP1REIhw9BqP4ZKD2xFEr4llr5Lv6LEla8
 cWKkwwWzQkiFba8dGx1hirKCEs+VdCLhJYhiH7USr8G2QHiDTl7XBUbEHpiirWCs3bCs
 NTItdkuIvKOl0Wp2WhA5k4pfn0/GFuzczCHO4uXHxRvWLrmi3f+3E+XyFKRCGLToabS8
 cPOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rLinOapGuOZ7A3D9bbaR3AD8/7b7elhTbAVHcuXosMo=;
 b=mYr8md9QPlCWJlTqi1q5qE9B1Gjiq2Q2MiMedzr7+oVGGcgn//H6C2MG45Qmjv7JuG
 gboHapjNy9v/mFip0yKU+saFQY//2iElnP+zyY285qo3dkcpY72XpT8YmyMOdReKj0zC
 FnhfWqIwLAx8H3PwSjS6YMGZ2d7RVIMaeF5GNmlCkBpClqAySVok5bFJ+d2qdsfexcwr
 e1GC/dSRmqmdX+hrmLCo0JjFjQ0sUKTdvelYInkjMuHFo1FNdM/DTmchcDfVtRvD2zrv
 nc33in1DGoOMCACJHgUsBfIeW8taFMomH18wkIvYDrGtG1vOHM8Q1KID+quPnc9prPYM
 x2mg==
X-Gm-Message-State: AOAM532UhddxJSkwEsUx4NgSIDXBrawj1N8Z+zspLnGl3ZnQ4QtKAJ6r
 Rs9Dg/RtnxLYic6a5Lmlr97u6HJwVMU4wjPT7Bc=
X-Google-Smtp-Source: ABdhPJxa3gnCClGBduWs8WfAYuHfg1PA10bCTWr3VOszhOIntH/xH1I3a3tV7gQnPMFYqO8/upkWQ8tDN51FXMvd3WY=
X-Received: by 2002:aca:6106:: with SMTP id v6mr1521999oib.158.1605591528436; 
 Mon, 16 Nov 2020 21:38:48 -0800 (PST)
MIME-Version: 1.0
References: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
 <20201111163013.29412-3-sergio.paracuellos@gmail.com>
 <20201116191655.GA1981921@bogus>
In-Reply-To: <20201116191655.GA1981921@bogus>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Tue, 17 Nov 2020 06:38:37 +0100
Message-ID: <CAMhs-H-vgf7c9-mEi8vF3rWiTFq5wQbRUkQQ0tO0zKTjuV9oXw@mail.gmail.com>
Subject: Re: [PATCH 2/7] dt: bindings: add mt7621-pll device tree binding
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
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, jiaxun.yang@flygoat.com,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Weijie Gao <hackpascal@gmail.com>,
 John Crispin <john@phrozen.org>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Rob,

On Mon, Nov 16, 2020 at 8:16 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, 11 Nov 2020 17:30:08 +0100, Sergio Paracuellos wrote:
> > Adds device tree binding documentation for PLL controller in
> > the MT7621 SOC.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> >  .../bindings/clock/mediatek,mt7621-pll.yaml   | 51 +++++++++++++++++++
> >  1 file changed, 51 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.yaml
> >
>
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks for the review. In that series there were two clock bindings
relating the pll and gates, There were finally joined in only one
binding and driver. This is done in the v3 of this series sent on
friday. Thanks for your time in looking also into this new version,

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
