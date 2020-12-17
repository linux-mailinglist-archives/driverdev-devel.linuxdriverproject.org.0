Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1856F2DD3A6
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 16:05:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF28A87A74;
	Thu, 17 Dec 2020 15:05:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OKnWW5MpaQSB; Thu, 17 Dec 2020 15:05:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0183187A65;
	Thu, 17 Dec 2020 15:05:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 260541BF30F
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 15:05:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2181E87483
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 15:05:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uwWirJsiYEiI for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 15:05:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B0F058738D
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 15:05:07 +0000 (UTC)
X-Gm-Message-State: AOAM530t5/sSkSgGNhK+esT+EikuzYXE/h2+O3sYE6zTwwAvamifwGZE
 4If7638/4VUzXpBJ7Xe2sdvdAr8YAWq5h+zkbg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608217507;
 bh=x+kFkV6mi3eV+XXNmnEffGS39avC8Zv4WGoxCR2wmr4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VT2czBgYdiIjvc69F/gaqcCIDqWRtfmbbMiRFs6PqOnVgptBPnTik4qEVKfinCoaX
 +VLXD/Pt7mNAkAtP4p/8jxuQO76gpMboztTiDxMyBvhLj3avY2Xb1c6Lrmv9IokXwX
 8mzhBpMrlEpa+hmo3eFZaOIC/scEpi1vvO9hdXP5IKfNaSPuZqLXhLScMe9rixRPse
 IpdqjM28vWzqnI6mIixGTQBfo6z9/FacA0+TQ0Ov2pEk4D2aHAA/RWQb2phKT991+e
 2uySsF6+Ve3BSWKoHZ0nc2+vMtBXxTEM4MhTD5JP9nOLBFZ6otq8hgEkvDU6SbGhKt
 lzjMnAIsBIcIw==
X-Google-Smtp-Source: ABdhPJx7OHxNWK+/OU12IHe444S7xF7UU/QplM5DDVfmKTAKODUk2jv0nUS2MVL39MLpvpTbC/cFXw1dyWSc8yEd/h0=
X-Received: by 2002:a17:906:1197:: with SMTP id
 n23mr35658521eja.359.1608217505488; 
 Thu, 17 Dec 2020 07:05:05 -0800 (PST)
MIME-Version: 1.0
References: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
 <20201122095556.21597-3-sergio.paracuellos@gmail.com>
 <160819550615.1580929.14234996916739809712@swboyd.mtv.corp.google.com>
In-Reply-To: <160819550615.1580929.14234996916739809712@swboyd.mtv.corp.google.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 17 Dec 2020 09:04:52 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLONxqAXRta2iuYNoJ=8wEFdYsiq_OFqgSW3aMLMhy94Q@mail.gmail.com>
Message-ID: <CAL_JsqLONxqAXRta2iuYNoJ=8wEFdYsiq_OFqgSW3aMLMhy94Q@mail.gmail.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 evicetree@vger.kernel.org, "open list:MIPS" <linux-mips@vger.kernel.org>,
 John Crispin <john@phrozen.org>, NeilBrown <neil@brown.name>,
 linux-clk <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 17, 2020 at 2:58 AM Stephen Boyd <sboyd@kernel.org> wrote:
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

Send to the DT list please.

But I agree with Stephen's comment. Either make the syscon complete
(fully describe the h/w, not just what you need ATM) to show the need
for child nodes or get rid of the child nodes.

Rob
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
