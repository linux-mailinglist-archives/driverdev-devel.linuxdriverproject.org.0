Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDBD910DD
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Aug 2019 16:42:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 580418647A;
	Sat, 17 Aug 2019 14:42:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uNhnIleyyWPn; Sat, 17 Aug 2019 14:42:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDFD486239;
	Sat, 17 Aug 2019 14:42:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 55D2D1BF5A6
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 14:42:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 502B387893
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 14:42:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TIcPb2ps0K9c for <devel@linuxdriverproject.org>;
 Sat, 17 Aug 2019 14:42:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CA1DF8788B
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 14:42:23 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id e12so12157062otp.10
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 07:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u+ouuMQrNVti/jSM5pYCBsXYcjd9f+fOqg85jip3rp8=;
 b=UWWveDzaXrnRWzm77yDCOLyoGFGeMfwlcrcoDAlg+n2BRt2WEWB+dpBiXK97kiEVRW
 YLslFXHdVfC/GFkbxBh6Gdu+SWw8331QjQC4zEte152sB0ESTXRTCOUbwt/2NLDYtOKx
 8x4YttqP2cffWMMb59Y5HOAWsDO97/1519Du2PTbYAKeCg14TS/QiD6i9PDXlLQWNvXR
 6kslMkAzXMm9HtWfEnB4f0gVx6gPQn57wPLjuujlARLCoOugYV8BGr1cOT43lj9FNhae
 QlaM/ig6tXqy2Ch72M9GC//cNQXpQ6crg3hfg3Q0rHRMqQ/FIk0B3+y5YmIQCpkT+Wi1
 GWWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u+ouuMQrNVti/jSM5pYCBsXYcjd9f+fOqg85jip3rp8=;
 b=e7o/LgBH1scYYrpUpbrvfLMfdlXr2OvwT87P42KeqBYCvwebjTzPip6Yivm6iIix3Z
 rE2DHmLh8jQELRIm05++HcPmkw83vsU8EtzJyCwf96Q/ppukcL/o7xk/pQ2Qe5XA0ibd
 V5Gxj6RSAEbjt/kIF/pRu5RgDaIRSjjX1Y8hjwg9ByFZW/7VyIMQmW2zenISWEwDGwle
 4WpDXneWpc+Jrd/PmiiNHF1EJ/f3MusgGGVQxXg3BV5tTEXtpJsIbaruvrMUtnEBYrvE
 B4G37L3Hg1uNJS0Tc4dljIOqwwAS0tCu9GMiISAQVU3pyZVWVYVNLcgP/5pQIf4ENr+3
 uecQ==
X-Gm-Message-State: APjAAAUWCqN181GxGS5vqQJW7eQC768rrAXHxB+CRkWFK4yJa5dvHr59
 FXVOwY0XYREXKWn+horJQVNByyiuOpUc4Mg/BP8=
X-Google-Smtp-Source: APXvYqz5ceM2JCDDDSIcgUhj8lMv5v0FOmMnXg2IeO6sSggcznPDuJampGWaCUwiZ5tB3C/ohH295tN+dd8XvA8ef8o=
X-Received: by 2002:a05:6830:1592:: with SMTP id
 i18mr5384197otr.86.1566052943046; 
 Sat, 17 Aug 2019 07:42:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190724022310.28010-1-gch981213@gmail.com>
 <20190724022310.28010-5-gch981213@gmail.com>
 <20190813155143.GA19830@bogus>
In-Reply-To: <20190813155143.GA19830@bogus>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sat, 17 Aug 2019 22:42:12 +0800
Message-ID: <CAJsYDVKnf4M8jyVOyotRxs=SsHqjex_q60AwkX=QAPK33ivw-Q@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] dt: bindings: add mt7621-pll dt binding
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
 <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, James Hogan <jhogan@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, open list <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Weijie Gao <hackpascal@gmail.com>,
 John Crispin <john@phrozen.org>, NeilBrown <neil@brown.name>,
 Mark Rutland <mark.rutland@arm.com>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi!

On Tue, Aug 13, 2019 at 11:51 PM Rob Herring <robh@kernel.org> wrote:
> [...]
> > +Example:
> > +     pll {
> > +             compatible = "mediatek,mt7621-pll";
>
> You didn't answer Stephen's question on v1.

I thought he was asking why there's a syscon in compatible string. I
noticed that the syscon in my previous patch is a copy-paste error
from elsewhere and dropped it.

>
> Based on this binding, there is no way to control/program the PLL. Is
> this part of some IP block?

The entire section is called "system control" in datasheet and is
occupied in arch/mips/ralink/mt7621.c [0]
Two clocks provided here is determined by reading some read-only
registers in this part.
There's another register in this section providing clock gates for
every peripherals, but MTK doesn't provide a clock plan in their
datasheet. I can't determine corresponding clock frequencies for every
peripherals, thus unable to write a working clock driver.

>
> > +
> > +             #clock-cells = <1>;
> > +             clock-output-names = "cpu", "bus";
> > +     };
> > --
> > 2.21.0
> >

Regards,
Chuanhong Guo

[0] https://elixir.bootlin.com/linux/latest/source/arch/mips/ralink/mt7621.c#L156
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
