Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4A964192
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jul 2019 08:46:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B51ED85EBF;
	Wed, 10 Jul 2019 06:46:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3aQ0ZHS4QfEI; Wed, 10 Jul 2019 06:46:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14BCF84597;
	Wed, 10 Jul 2019 06:46:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6981B1BF37C
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 06:46:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 60BE38593F
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 06:46:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q1AS5A_qRW5B for <devel@linuxdriverproject.org>;
 Wed, 10 Jul 2019 06:46:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D8C6B84597
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 06:46:30 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id s20so1077111otp.4
 for <devel@driverdev.osuosl.org>; Tue, 09 Jul 2019 23:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=goA0pqDvekqqmxZQjkpFHCZBNwrKPP7M5GIjZbuPPQs=;
 b=Dn2ACj9EnzC10Mxhwl/GbLOGyx01LLVFuYvtNYMVexM46MKXlqDa9q/9MdvWqJVqR0
 Vew3p7VZxbyZm3YfmpGi1m8fdc9zcfTpDR44iiEoXqqm+hcrsMpdTQfXA5jXE9DK11gs
 JMZfBexPsnQDrKIwm6ZAYlN5xjMp5FYHYmBCl4V6scUR1Rx5aizZcK73SnaAqEv+ddZG
 PhMwoKIRBgqJuSSC8LdZu0ZyDLEQhpGqTKjPG5G7LemRHVBbrwC34CkuDM/e11H0dIyU
 cnNyIzFGj/RMZVldwOCXxkRfao+FWo4+CGQt7D60vcpk7dLEGnzgWfFOQy2IafyyOU2L
 1ANw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=goA0pqDvekqqmxZQjkpFHCZBNwrKPP7M5GIjZbuPPQs=;
 b=QtYh3TdG4tmsPJ4ezgtPb6C67EfEIx1k5KQvOQbfcyfIi7QZ0KvuJjtOaU7xpgqaka
 nibCRhqAad4VoyCDn7IY369LE8XFDYqyjXvEhi/UYf5VOR5MhYhyPGWK7oFvpBA8IWYo
 0qktaDXo/Cb0D+pDzceTkhigFVrsIpxv+tSYsU6M9HsqXA0uSuHF8k2BIVCw9GSWEFlF
 FjHNgcCUb5Xosi0kbuMkZipV+enGWxjjFS0kidvDRpV/PEwE4OI+4yy/T8H9JwWN2+6Y
 2rOx8RWLJpwilVKINWBiOD9xW+EUz7gfElcoYQG7l9LBx+dG1quwApKSI8Bp6F1q8Cj4
 AMRg==
X-Gm-Message-State: APjAAAXfxhS9rgXXaIno0spNq036mbEpQCRWf9xdFupY1eSPPpVE22Ap
 Nc/tzpHT7LdpgaDSqcpZf/Bdinyk8KErX0GgZw8=
X-Google-Smtp-Source: APXvYqwIcnkw7X8a0akZ3pqEHKADUO9UWrI7tCnP1Lkr6+Qi6xyfm75eWXyJ5YW6We8QcIF6f6RH7/N25eLs1jSfvKU=
X-Received: by 2002:a05:6830:1350:: with SMTP id
 r16mr21391473otq.84.1562741190094; 
 Tue, 09 Jul 2019 23:46:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190709182018.23193-1-gch981213@gmail.com>
 <20190709182018.23193-5-gch981213@gmail.com>
In-Reply-To: <20190709182018.23193-5-gch981213@gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Wed, 10 Jul 2019 14:46:18 +0800
Message-ID: <CAJsYDVJ-qJppkuvbYLmkWU0SBE=UrOoNLrM0kcOzhSTqNTeaWQ@mail.gmail.com>
Subject: Re: [PATCH 4/5] staging: mt7621-dts: add dt nodes for mt7621-pll
To: "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
 "open list:MIPS" <linux-mips@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>
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
Cc: Mark Rutland <mark.rutland@arm.com>, Weijie Gao <hackpascal@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, James Hogan <jhogan@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 10, 2019 at 2:22 AM Chuanhong Guo <gch981213@gmail.com> wrote:
>
> This commit adds device-tree node for mt7621-pll and use its clock
> accordingly.
>
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>

Oops. Please ignore this single patch for now. I forgot to drop
cpuclock node in drivers/staging/mt7621-dts/gbpc1.dts
I'll resend this patch with changes for gbpc1.dts after the other four
patches are applied.

> ---
>  drivers/staging/mt7621-dts/mt7621.dtsi | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
> index a4c08110094b..12717f570ceb 100644
> --- a/drivers/staging/mt7621-dts/mt7621.dtsi
> +++ b/drivers/staging/mt7621-dts/mt7621.dtsi
> @@ -1,4 +1,5 @@
>  #include <dt-bindings/interrupt-controller/mips-gic.h>
> +#include <dt-bindings/clock/mt7621-clk.h>
>  #include <dt-bindings/gpio/gpio.h>
>
>  / {
> @@ -27,12 +28,11 @@
>                 serial0 = &uartlite;
>         };
>
> -       cpuclock: cpuclock@0 {
> -               #clock-cells = <0>;
> -               compatible = "fixed-clock";
> +       pll: pll {
> +               compatible = "mediatek,mt7621-pll", "syscon";
>
> -               /* FIXME: there should be way to detect this */
> -               clock-frequency = <880000000>;
> +               #clock-cells = <1>;
> +               clock-output-names = "cpu", "bus";
>         };
>
>         sysclock: sysclock@0 {
> @@ -155,7 +155,6 @@
>                         compatible = "ns16550a";
>                         reg = <0xc00 0x100>;
>
> -                       clocks = <&sysclock>;
>                         clock-frequency = <50000000>;
>
>                         interrupt-parent = <&gic>;
> @@ -172,7 +171,7 @@
>                         compatible = "ralink,mt7621-spi";
>                         reg = <0xb00 0x100>;
>
> -                       clocks = <&sysclock>;
> +                       clocks = <&pll MT7621_CLK_BUS>;
>
>                         resets = <&rstctrl 18>;
>                         reset-names = "spi";
> @@ -372,7 +371,7 @@
>                 timer {
>                         compatible = "mti,gic-timer";
>                         interrupts = <GIC_LOCAL 1 IRQ_TYPE_NONE>;
> -                       clocks = <&cpuclock>;
> +                       clocks = <&pll MT7621_CLK_CPU>;
>                 };
>         };
>
> --
> 2.21.0
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
