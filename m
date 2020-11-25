Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A79DC2C353C
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Nov 2020 01:11:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A9F00271D6;
	Wed, 25 Nov 2020 00:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fxrJyv0wyrmn; Wed, 25 Nov 2020 00:11:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CEAD8233B0;
	Wed, 25 Nov 2020 00:11:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA91E1BF3DA
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 00:11:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C63D786936
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 00:11:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TdtVMnTre0hM for <devel@linuxdriverproject.org>;
 Wed, 25 Nov 2020 00:11:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5434A8692F
 for <devel@driverdev.osuosl.org>; Wed, 25 Nov 2020 00:11:33 +0000 (UTC)
Received: from kernel.org (unknown [104.132.1.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BEB98206E5;
 Wed, 25 Nov 2020 00:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606263092;
 bh=a+Rxij4TwnjUBiotOv+s4sSAjtCT1yAbFvk3KFgRQwk=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=CosENmDfkL+cgj7WPvYKqODfrjuLGx+KPZj+0j8+V7h280NLtz0dsqvjUjlqRfisC
 CtpwmD0iFNR5eb13g7D2wt38jkTBeDEH9o1PWdzcShDtfiwIPVqeLN3ax7sAKCHCJR
 eywKE8709HAMCLI7VcABX1ifaSVPNXJtCGRa/nAE=
MIME-Version: 1.0
In-Reply-To: <20201118074812.GA5803@kozik-lap>
References: <20201115170950.304460-1-krzk@kernel.org>
 <20201115170950.304460-2-krzk@kernel.org>
 <160568531746.60232.15496517544781609246@swboyd.mtv.corp.google.com>
 <20201118074812.GA5803@kozik-lap>
Subject: Re: [PATCH 1/3] clk: fix redefinition of clk_prepare on MIPS with
 HAVE_LEGACY_CLK
From: Stephen Boyd <sboyd@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 24 Nov 2020 16:11:31 -0800
Message-ID: <160626309137.2717324.9318376048083763040@swboyd.mtv.corp.google.com>
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
Cc: devel@driverdev.osuosl.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Krzysztof Kozlowski (2020-11-17 23:48:12)
> On Tue, Nov 17, 2020 at 11:41:57PM -0800, Stephen Boyd wrote:
> > Quoting Krzysztof Kozlowski (2020-11-15 09:09:48)
> > > COMMON_CLK even though is a user-selectable symbol, is still selected by
> > > multiple other config options.  COMMON_CLK should not be used when
> > > legacy clocks are provided by architecture, so it correctly depends on
> > > !HAVE_LEGACY_CLK.
> > > 
> > > However it is possible to create a config which selects both COMMON_CLK
> > > (by SND_SUN8I_CODEC) and HAVE_LEGACY_CLK (by SOC_RT305X) which leads to
> > 
> > Why is SND_SUN8I_CODEC selecting COMMON_CLK? Or really, why is
> > SOC_RT305X selecting HAVE_LEGACY_CLK?
> 
> The SND_SUN8I_CODEC I fixed in following patch (I sent separately v2 of
> it).
> 
> The SOC_RT305X select HAVE_LEGACY_CLK? because it is an old, Ralink
> platform, not converted to Common clock frm. Few clock operations are
> defined in: arch/mips/ralink/clk.c
> 

Ok so this patch isn't necessary then? It seems OK to select
HAVE_LEGACY_CLK but not to select COMMON_CLK unless it's architecture
code that can't be enabled when the other architecture code is selecting
HAVE_LEGACY_CLK.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
