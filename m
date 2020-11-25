Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 271D72C41E9
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Nov 2020 15:15:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9661286FB2;
	Wed, 25 Nov 2020 14:15:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5IFfDWxhKbQT; Wed, 25 Nov 2020 14:15:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A873086D19;
	Wed, 25 Nov 2020 14:15:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9EF911BF48C
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 14:15:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9B5ED875B0
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 14:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2LQVr7T3BAYw for <devel@linuxdriverproject.org>;
 Wed, 25 Nov 2020 14:15:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C718A875A4
 for <devel@driverdev.osuosl.org>; Wed, 25 Nov 2020 14:15:09 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id x13so1643164wmj.1
 for <devel@driverdev.osuosl.org>; Wed, 25 Nov 2020 06:15:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OTNWqTeUqmzJkpC9NOCmUX8GBH/nXgfg9fJE4Ofwcd8=;
 b=BP5atTyLFocbLdqmgRXBiLQJ4tTzTOYVinfZ/e1hDDrrG66tVYqPrs1nfAMeEHvJx8
 EFaWNQhmPfRMis+2zmdllxABBbd0LM8HiP8eWkxq1QjzUHAwh86F3OOltnhl2hBHD7mq
 ZhFky/xExqPfl3fW2KZ44QOJ27coWf6AKeGcqwMZT79lUNNdM1jpfJV/hmH5oeOw/rUz
 HJAJ4BvE9yOyDWxavJ4Spj2zh58B18n36gdZn6uUc8I6Gzhkq5zD4SlmJt4qy0NMhyKl
 nuenxyt+JNj4st0/So28XuxqNaruyMOPvEy29/K5/Rzc/tsq9XEACz+9wHz2K4XVdy/Y
 Uz/Q==
X-Gm-Message-State: AOAM531KvC4sqDNjqEmX2C6LSsUN8xW7+38LmVJmFSnFXF4Y9YiXle7z
 S+xoeJnH+04lBpGkLLTTIKY=
X-Google-Smtp-Source: ABdhPJyvfqQ/sP05uKPapIZjZ8P1LI64iv1xcYxdq5+nC6S8RSDBQOEhxRq+85Dg1vPAhjljyRi0tQ==
X-Received: by 2002:a1c:2008:: with SMTP id g8mr4101230wmg.19.1606313708219;
 Wed, 25 Nov 2020 06:15:08 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
 by smtp.googlemail.com with ESMTPSA id c2sm5411796wrf.68.2020.11.25.06.15.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Nov 2020 06:15:07 -0800 (PST)
Date: Wed, 25 Nov 2020 15:15:05 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/3] clk: fix redefinition of clk_prepare on MIPS with
 HAVE_LEGACY_CLK
Message-ID: <20201125141505.GA77733@kozik-lap>
References: <20201115170950.304460-1-krzk@kernel.org>
 <20201115170950.304460-2-krzk@kernel.org>
 <160568531746.60232.15496517544781609246@swboyd.mtv.corp.google.com>
 <20201118074812.GA5803@kozik-lap>
 <160626309137.2717324.9318376048083763040@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160626309137.2717324.9318376048083763040@swboyd.mtv.corp.google.com>
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

On Tue, Nov 24, 2020 at 04:11:31PM -0800, Stephen Boyd wrote:
> Quoting Krzysztof Kozlowski (2020-11-17 23:48:12)
> > On Tue, Nov 17, 2020 at 11:41:57PM -0800, Stephen Boyd wrote:
> > > Quoting Krzysztof Kozlowski (2020-11-15 09:09:48)
> > > > COMMON_CLK even though is a user-selectable symbol, is still selected by
> > > > multiple other config options.  COMMON_CLK should not be used when
> > > > legacy clocks are provided by architecture, so it correctly depends on
> > > > !HAVE_LEGACY_CLK.
> > > > 
> > > > However it is possible to create a config which selects both COMMON_CLK
> > > > (by SND_SUN8I_CODEC) and HAVE_LEGACY_CLK (by SOC_RT305X) which leads to
> > > 
> > > Why is SND_SUN8I_CODEC selecting COMMON_CLK? Or really, why is
> > > SOC_RT305X selecting HAVE_LEGACY_CLK?
> > 
> > The SND_SUN8I_CODEC I fixed in following patch (I sent separately v2 of
> > it).
> > 
> > The SOC_RT305X select HAVE_LEGACY_CLK? because it is an old, Ralink
> > platform, not converted to Common clock frm. Few clock operations are
> > defined in: arch/mips/ralink/clk.c
> > 
> 
> Ok so this patch isn't necessary then?

For this particular build failure - it is not necessary anymore.

However there might more of such errors - just not discovered yet. Also,
the clock bulk API has such ifdefs so it kind of symmetrical and
consistent approach.

> It seems OK to select
> HAVE_LEGACY_CLK but not to select COMMON_CLK unless it's architecture
> code that can't be enabled when the other architecture code is selecting
> HAVE_LEGACY_CLK.

Best regards,
Krzysztof

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
