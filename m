Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C1291426
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 04:29:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BBD2285BDF;
	Sun, 18 Aug 2019 02:29:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a5AU0c5lAscH; Sun, 18 Aug 2019 02:29:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F5F085BBD;
	Sun, 18 Aug 2019 02:29:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E404D1BF319
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 02:29:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D45E4204EC
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 02:29:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cQmsy0XcJdjZ for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 02:29:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by silver.osuosl.org (Postfix) with ESMTPS id F359C203B1
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 02:29:40 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id y8so7450364oih.10
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 19:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Epy/wiFdMahX+RcrO6BylN4SVEqUlDpp4VHq8uy62L8=;
 b=CW3drVPLLqonFPNLRtQRlHJk3CvJCBF10ngKwEO2lvD/+AgY+xETP3TTv1BsSYpBju
 CRRKhcHLUli8oBCxhgvkmuQcOFJ9+NJNf/jR9MNiDHQ3840tjdPrHnS3FNloeYUcY0JH
 hrc1JE3FUgGtJ6+ueIh3Z0L6LhVcNWuxdC5LxtJyr9aXWdk84OG4K4BVYh2I9gN3Wz6L
 yCBsMpPtDI/AXny+iBCytakPEYy52T2htxPCp5qkEDS8qLPzHYGrAte/BMgubreVpWj/
 28kkXb1DDSzQPj3omc8QcuLk+Cg/4Wppibg6od+YcNmUSepCmnLAqUZbweCEFNo6dHzv
 duQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Epy/wiFdMahX+RcrO6BylN4SVEqUlDpp4VHq8uy62L8=;
 b=WwLzN0qQV6v4xDWh8vSJ5VWV8swB4R7+WPNDgFL9JF0i/IeUZfppgSNQ01bLd4MLF7
 5Gh5/DCoeWcWKidSiH2YxxuSzgDThD+KIdnZ0w6qcsxy/yfBCFbtV9Bp8S+3aPgxoK69
 afNqk2OLHxkynXPZCwA/EoWYLjX+Cpaeny6xAYl6qRPdnNM8Nfbj8oTJmiP+oZWOXbQc
 pxYpQMQbYGLFukq7JmB0Sq9N2CsIJ0vcwMoBeeFzk4v9igGufArUd8wtwFVitF5S/YEm
 JYiZFNOeWVqXvHN8Y8Iqm198GiGNhO8KtTDS2iHzWq3zdVTOOtxghGB+zTm5DpOL+ahQ
 S2aw==
X-Gm-Message-State: APjAAAUGkElr6RVUvVMpTIRFFXidt8YSseFVLeNl2XjEqYIUTLf7k7dd
 LX3KDx8UTy0icSySV4+DKBICbtrEZKNZpuXqd0I=
X-Google-Smtp-Source: APXvYqwDnwZvJO1bQNNX2gziXRdvteTMHyC0n9PY9/2wekwt4q2j5TdudTm3N25tr8wrimRZr0WLEJ2JaTa6g8Kzbyg=
X-Received: by 2002:aca:df08:: with SMTP id w8mr9038674oig.84.1566095380102;
 Sat, 17 Aug 2019 19:29:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190724022310.28010-1-gch981213@gmail.com>
 <20190724022310.28010-5-gch981213@gmail.com>
 <20190813155143.GA19830@bogus>
 <CAJsYDVKnf4M8jyVOyotRxs=SsHqjex_q60AwkX=QAPK33ivw-Q@mail.gmail.com>
 <2d48f4a4-7d30-547b-21ee-6aadabe7d7c3@gmx.net>
 <CAJsYDVLq1-U_AngA4=YKHS_L=zurhLse9XwQ0Rzup9BdXfri-w@mail.gmail.com>
 <6b6ee744-61d3-8848-19e7-0a301fe4d1b3@rempel-privat.de>
In-Reply-To: <6b6ee744-61d3-8848-19e7-0a301fe4d1b3@rempel-privat.de>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sun, 18 Aug 2019 10:29:29 +0800
Message-ID: <CAJsYDVLLPa07wUg2EoeJww9XSJYgX_kBu-oGiv7n+zejUc877w@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] dt: bindings: add mt7621-pll dt binding
 documentation
To: Oleksij Rempel <linux@rempel-privat.de>
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
 Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 James Hogan <jhogan@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, open list <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Weijie Gao <hackpascal@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Crispin <john@phrozen.org>, NeilBrown <neil@brown.name>,
 Mark Rutland <mark.rutland@arm.com>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi!

On Sun, Aug 18, 2019 at 2:06 AM Oleksij Rempel <linux@rempel-privat.de> wrote:
> >> SYSC_REG_CPLL_CLKCFG1 register is a clock gate controller. It is used to enable or disable clocks.
> >> Jist wild assumption. All peripheral devices are suing bus clock.
> >
> > This assumption is incorrect. When this patchset is applied in
> > OpenWrt, I asked the author why there's still a fixed clock in
> > mt7621.dtsi, He told me that there's another clock for those unchanged
> > peripherals and he doesn't have time to write a clock provider for it.
>
> Can you please provide a link to this patch or email.

This discussion is in Chinese and using an IM software so there's no
link available.

> We have at least 2 know registers:
> SYSC_REG_CPLL_CLKCFG0 - it provides some information about boostrapped
> refclock. PLL and dividers used for CPU and some sort of BUS (AHB?).
> SYSC_REG_CPLL_CLKCFG1 - a banch of gates to enable/disable clocks for
> all or some ip cores.
> What is probably missing is a set of dividers for
> each ip core. From your words it is not document.

The specific missing part I was referring to, is parent clocks for
every gates. I'm not going to assume this with current openwrt device
tree because some peripherals doesn't have a clock binding at all or
have a dummy one there.

>
> With this information the clk driver will provide gate functionality and
> a set of hardcoded clocks. With this driver will work part of power
> management and nice devicetree without fixed clocks.

Regards,
Chuanhong Guo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
