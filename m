Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6068BDB5
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 17:51:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E74D88370;
	Tue, 13 Aug 2019 15:51:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zneryZs3CkQG; Tue, 13 Aug 2019 15:51:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8087F88182;
	Tue, 13 Aug 2019 15:51:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4EAB51BF364
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 15:51:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4845387430
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 15:51:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zL+lVm8Il9qP for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 15:51:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 516FF86C59
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 15:51:45 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id z17so55846725otk.13
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 08:51:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ohFLMScLjVByBJFrR6C+4j/VSebLPBigBTSwqkkayik=;
 b=HgMDXEggAxVsKRFFSLREzsK5MyRKiIt98yvmEB8Osa/954xhUPPUt20BbAMpTDVUyY
 mnC/SRiNPh49sVXMh3unAUFKFTTHwbErkw8hHWtCs82YfFffrW36Fn67jTBJF+Y1ylVS
 bs1oCm5hr26dcSXUjp0is7TfzVhk0pNsxCpAj0GYkftEc4zoJD3+Lu6+FJHy3Op/OMth
 UC1/Unlx7efv23H0jv9ljuf6kTQ0uFh2jECMWhc7uqgEq8AfI//m3KHBkm2+5Z3EkmAJ
 oUuSWgCNMi0xlFyt3PxiwRN7rszY2+KuNHOYskPOebhB2n0heDzR7AbDNOGdiJ8wudDK
 2g7Q==
X-Gm-Message-State: APjAAAWwHkIOCkmEP5vD1jaT+dk+b4GG7Ndny6mzutOvp8obe+leTvW+
 ONu4GX/dHrd9REmz/XWt3g==
X-Google-Smtp-Source: APXvYqxSeFwa1U2REzU2wk4Pb7uZS4OB2XVfpDeXm4KgsqA5BenxqxMVspOAXVlQLR7PyOR052yYjA==
X-Received: by 2002:a6b:b549:: with SMTP id e70mr32598873iof.95.1565711504396; 
 Tue, 13 Aug 2019 08:51:44 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id l26sm23511094ioj.24.2019.08.13.08.51.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 08:51:43 -0700 (PDT)
Date: Tue, 13 Aug 2019 09:51:43 -0600
From: Rob Herring <robh@kernel.org>
To: Chuanhong Guo <gch981213@gmail.com>
Subject: Re: [PATCH v2 4/6] dt: bindings: add mt7621-pll dt binding
 documentation
Message-ID: <20190813155143.GA19830@bogus>
References: <20190724022310.28010-1-gch981213@gmail.com>
 <20190724022310.28010-5-gch981213@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724022310.28010-5-gch981213@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Wed, Jul 24, 2019 at 10:23:08AM +0800, Chuanhong Guo wrote:
> This commit adds device tree binding documentation for MT7621
> PLL controller.
> 
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> ---
> 
> Change since v1:
> drop useless syscon in compatible string
> 
>  .../bindings/clock/mediatek,mt7621-pll.txt     | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt
> 
> diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt b/Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt
> new file mode 100644
> index 000000000000..7dcfbd5283e3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt
> @@ -0,0 +1,18 @@
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
> +	pll {
> +		compatible = "mediatek,mt7621-pll";

You didn't answer Stephen's question on v1.

Based on this binding, there is no way to control/program the PLL. Is 
this part of some IP block?

> +
> +		#clock-cells = <1>;
> +		clock-output-names = "cpu", "bus";
> +	};
> -- 
> 2.21.0
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
