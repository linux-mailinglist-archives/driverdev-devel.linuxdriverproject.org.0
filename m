Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30833911EF
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Aug 2019 18:23:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 161718633E;
	Sat, 17 Aug 2019 16:23:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XiQPUrQX9Pw5; Sat, 17 Aug 2019 16:23:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EEA188632F;
	Sat, 17 Aug 2019 16:23:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9D3791BF86C
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 16:23:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 950C820791
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 16:23:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i9HvWPe0AxSd for <devel@linuxdriverproject.org>;
 Sat, 17 Aug 2019 16:23:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by silver.osuosl.org (Postfix) with ESMTPS id E6246204B7
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 16:23:00 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id w4so12285761ote.11
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 09:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KkNWyjY6i4wH5Ddws0s2bRyPMfosm9/NVsRV0Y2N3PA=;
 b=Gae8lsMgP+bqtdFraWZyNJ3QSjRTqvKKxKT4pM6SJUdpIMMZgL+pwT5603gDEytVT/
 7IfPEA5vvnTeWryo5heiMGJkAqnA08w2yfKhxvSElFgtd5W+8Jm470hzi6zroaCGJ4rw
 IRShg0E8R9s5W6TZo6nQ6/67TigSbeW3d14/CU1xYbvXmR2YdfsDfGqQbADNVpNq4OnZ
 BQtrbyMc56aC3fLcKG1YLIQxNKAHZwRXMdZ/GkmYDtfpLoKc0gIKuK/ZIJdVrw0qnGDL
 VXRtZ4uTCDCHCJ3DE3B8FJnpLOfl2Jee8DBzGa2sh+vclbL62MbrRa32N8kEoDkipkMy
 OPYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KkNWyjY6i4wH5Ddws0s2bRyPMfosm9/NVsRV0Y2N3PA=;
 b=DwDHodwz+CPKxQN1rbASjl8g2JP/1p2H1A3IHmsIWEw+a7pRan3hlyDbMi3Zj2FtUG
 GBZU9MSXvE/u5ngcYg6FM1Za4J8CtxCAf68Czzgi7pXJVgW8b6sD0mZZZzgW9pWPpLfw
 7YdPw/4aEeTgCIcDKPOOLOhOYUDWlFVk091hDgO+OSebmmqa473m2H6onHo4BuVjcH67
 6rG4OquezWxL7yCAEB3KfgU6FfMqK4rlj5Cm+wLdjmzrPlIxORG6OVFsA0LDpxrLTBR4
 4gt9R2A0yjuLDVkS9vd5BSLA4k047skGlXMYKMEKH7TPORwf762E62gJj0xX52uzybwx
 8gPA==
X-Gm-Message-State: APjAAAX48HrP1aAX1G4TrUuCjigJ59S21H3MC9hFxSR3DFMrg7Zsr5RG
 0On8ISmhCBBCDuRm8Nv5259UxJttZijqaIVOOSg=
X-Google-Smtp-Source: APXvYqzk0u4Ilu0Q5NFLJH9XglZbvfPbUIEi9ktxQWn+FMhZXdGxFqVp2pgY+cR90FakhznowefHdiXUlijcVdJ4n0Q=
X-Received: by 2002:a05:6830:1184:: with SMTP id
 u4mr11456282otq.181.1566058980205; 
 Sat, 17 Aug 2019 09:23:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190724022310.28010-1-gch981213@gmail.com>
 <20190724022310.28010-5-gch981213@gmail.com>
 <20190813155143.GA19830@bogus>
 <CAJsYDVKnf4M8jyVOyotRxs=SsHqjex_q60AwkX=QAPK33ivw-Q@mail.gmail.com>
 <2d48f4a4-7d30-547b-21ee-6aadabe7d7c3@gmx.net>
In-Reply-To: <2d48f4a4-7d30-547b-21ee-6aadabe7d7c3@gmx.net>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sun, 18 Aug 2019 00:22:49 +0800
Message-ID: <CAJsYDVLq1-U_AngA4=YKHS_L=zurhLse9XwQ0Rzup9BdXfri-w@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] dt: bindings: add mt7621-pll dt binding
 documentation
To: Oleksij Rempel <fishor@gmx.net>
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

On Sat, Aug 17, 2019 at 11:40 PM Oleksij Rempel <fishor@gmx.net> wrote:

> In provided link [0] the  ralink_clk_init function is reading SYSC_REG_CPLL_CLKCFG0 R/W register.
> This register is used to determine clock source,  clock freq and CPU or bus clocks.

This register should only be changed by bootloader, not kernel. So
it's read-only in kernel's perspective.

> SYSC_REG_CPLL_CLKCFG1 register is a clock gate controller. It is used to enable or disable clocks.
> Jist wild assumption. All peripheral devices are suing bus clock.

This assumption is incorrect. When this patchset is applied in
OpenWrt, I asked the author why there's still a fixed clock in
mt7621.dtsi, He told me that there's another clock for those unchanged
peripherals and he doesn't have time to write a clock provider for it.
I don't know how many undocumented clocks are there since this piece
of info is missing in datasheet.

>
> IMO - this information is enough to create full blown drivers/clk/mediatek/clk-mt7621.c

And this information isn't enough because the assumption above is incorrect :P

Regards,
Chuanhong Guo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
