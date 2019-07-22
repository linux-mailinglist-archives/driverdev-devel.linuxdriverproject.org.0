Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A8470C07
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 23:51:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 97CE4856ED;
	Mon, 22 Jul 2019 21:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7I+pzNCioQ-4; Mon, 22 Jul 2019 21:51:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DBDD854B3;
	Mon, 22 Jul 2019 21:51:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C627C1BF852
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 21:51:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C31DA847BD
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 21:51:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0JfCtEcqY_-g for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 21:51:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 633A0847BA
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 21:51:36 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1FC9121951;
 Mon, 22 Jul 2019 21:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563832296;
 bh=sJhnAkadNzZPHZKBNq0Nth2LENsL/9MwlV66EhJeax4=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=TZjRSGF1zvC/ZiV2R1+IyRjkYyVgKiy8vjM8qITMYo2tw8iESWFGq/kARKNKC/QkT
 n8D6HH0qXKGK+zKkyLDPAuPxOKlKf4kFuapJSEfKQ7o0NOoVUYOeXWgl4I+tQGhr1p
 uCOVtsPHAthaALMHPgkTTrveFCpduGBxc7xY1kqk=
MIME-Version: 1.0
In-Reply-To: <20190709182018.23193-4-gch981213@gmail.com>
References: <20190709182018.23193-1-gch981213@gmail.com>
 <20190709182018.23193-4-gch981213@gmail.com>
Subject: Re: [PATCH 3/5] dt: bindings: add mt7621-pll dt binding documentation
To: "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Chuanhong Guo <gch981213@gmail.com>, open list <linux-kernel@vger.kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 22 Jul 2019 14:51:35 -0700
Message-Id: <20190722215136.1FC9121951@mail.kernel.org>
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
 James Hogan <jhogan@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Chuanhong Guo (2019-07-09 11:20:16)
> This commit adds device tree binding documentation for MT7621
> PLL controller.
> 
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> ---
>  .../bindings/clock/mediatek,mt7621-pll.txt    | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt
> 
> diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt b/Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt
> new file mode 100644
> index 000000000000..05c15062cd20
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt
> @@ -0,0 +1,19 @@
> +Binding for Mediatek MT7621 PLL controller
> +
> +The PLL controller provides the 2 main clocks of the SoC: CPU and BUS.
> +
> +Required Properties:
> +- compatible: has to be "mediatek,mt7621-pll"
> +- #clock-cells: has to be one
> +
> +Optional properties:
> +- clock-output-names: should be "cpu", "bus"
> +
> +Example:
> +       pll {
> +               compatible = "mediatek,mt7621-pll", "syscon";

Why is this a syscon and not just part of some larger mt7621 clk
provider node?

> +
> +               #clock-cells = <1>;
> +               clock-output-names = "cpu", "bus";
> +       };
> +
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
