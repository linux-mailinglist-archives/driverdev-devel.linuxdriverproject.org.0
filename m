Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D6E2B7712
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Nov 2020 08:42:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E9DA7204F0;
	Wed, 18 Nov 2020 07:42:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id el86QpCf7qzc; Wed, 18 Nov 2020 07:42:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4169E204EF;
	Wed, 18 Nov 2020 07:42:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA2FE1BF4D6
 for <devel@linuxdriverproject.org>; Wed, 18 Nov 2020 07:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B6509855D1
 for <devel@linuxdriverproject.org>; Wed, 18 Nov 2020 07:42:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 37qfsBx_Lf_r for <devel@linuxdriverproject.org>;
 Wed, 18 Nov 2020 07:41:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A775E855F6
 for <devel@driverdev.osuosl.org>; Wed, 18 Nov 2020 07:41:59 +0000 (UTC)
Received: from kernel.org (unknown [104.132.1.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0D9024656;
 Wed, 18 Nov 2020 07:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605685319;
 bh=Q4jpEyGuwcCkj+Ak7YzDr/tG7X4Egxkvlz1mTnJ8TFQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=SJw9vTE3zE3+IwA5FcC/Gc6ap8q20Ark7HFMfCaI5bNbYMRiKF22QEP6+MbTSf3O0
 r6AiVfmnmNBDYarTXPNBwtt/cWi014DbhBMfe/hl4x2BF1z3k8/NOFFONf6DX1cwuz
 bHhMD0xiWDmO++3Zu1g+bi4C9NqpSm06ozKIB+SQ=
MIME-Version: 1.0
In-Reply-To: <20201115170950.304460-2-krzk@kernel.org>
References: <20201115170950.304460-1-krzk@kernel.org>
 <20201115170950.304460-2-krzk@kernel.org>
Subject: Re: [PATCH 1/3] clk: fix redefinition of clk_prepare on MIPS with
 HAVE_LEGACY_CLK
From: Stephen Boyd <sboyd@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jaroslav Kysela <perex@perex.cz>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Krzysztof Kozlowski <krzk@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Takashi Iwai <tiwai@suse.com>,
 alsa-devel@alsa-project.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Date: Tue, 17 Nov 2020 23:41:57 -0800
Message-ID: <160568531746.60232.15496517544781609246@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Krzysztof Kozlowski (2020-11-15 09:09:48)
> COMMON_CLK even though is a user-selectable symbol, is still selected by
> multiple other config options.  COMMON_CLK should not be used when
> legacy clocks are provided by architecture, so it correctly depends on
> !HAVE_LEGACY_CLK.
> 
> However it is possible to create a config which selects both COMMON_CLK
> (by SND_SUN8I_CODEC) and HAVE_LEGACY_CLK (by SOC_RT305X) which leads to

Why is SND_SUN8I_CODEC selecting COMMON_CLK? Or really, why is
SOC_RT305X selecting HAVE_LEGACY_CLK?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
