Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB43C2B7724
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Nov 2020 08:48:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDB3B8688A;
	Wed, 18 Nov 2020 07:48:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g4LPVF+7enP9; Wed, 18 Nov 2020 07:48:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C8A5085F8D;
	Wed, 18 Nov 2020 07:48:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 921AB1BF4D6
 for <devel@linuxdriverproject.org>; Wed, 18 Nov 2020 07:48:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 88E02870AD
 for <devel@linuxdriverproject.org>; Wed, 18 Nov 2020 07:48:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LpZHS+vgwNGY for <devel@linuxdriverproject.org>;
 Wed, 18 Nov 2020 07:48:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3447A85EB4
 for <devel@driverdev.osuosl.org>; Wed, 18 Nov 2020 07:48:16 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id t9so935312edq.8
 for <devel@driverdev.osuosl.org>; Tue, 17 Nov 2020 23:48:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/VBymVKVFuIaMs6diTaKJdglBbHoKWE5HN40ZxS82fM=;
 b=OLM7UEXixeTemT6rWNgs9zkJt73uGX+PrXaPO9FO0g+VYi5rCaPfEzit/uRUA3PtN4
 qDjVWU36ZPae3mPOI6qYyBKK4VoUlAPzGrHaoCmifPnoRwVp2cO/QOxdbv5INaSvFBcr
 0VR8DjNLRenfPz44SC95DjlanUUNdRFwMJZrMaiGn/Z/KYwfDV20UHYlLev9QBQds+QS
 LLk3GdDwABojNjB0DqQUB4+EBj4fTdrJfqh9hJ6i49VpGUPofiH0DLZYgtRTsayHFe9L
 +rWEIIZo+YZbwwEezTpg0rydEgN93LKd6foDGhNbDpYJJvpN0EFmp6Bqo0r7MWRcBqhO
 4z9g==
X-Gm-Message-State: AOAM531kYb3tZK6Auat8LuewH1YezUQ42n+T0heOj3dBPkw21BiQ2WlQ
 18cDKGTS7XJErQ9P012gV/4=
X-Google-Smtp-Source: ABdhPJx+aZjGIA58JBNNsU2EYJuORCMi9eVDKQ3IfVQdHZjH8ummbU4/k0jvYclGpHK/bGP8ytcepg==
X-Received: by 2002:aa7:c2c3:: with SMTP id m3mr24597168edp.361.1605685694599; 
 Tue, 17 Nov 2020 23:48:14 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
 by smtp.googlemail.com with ESMTPSA id g7sm13224731edl.5.2020.11.17.23.48.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Nov 2020 23:48:13 -0800 (PST)
Date: Wed, 18 Nov 2020 08:48:12 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/3] clk: fix redefinition of clk_prepare on MIPS with
 HAVE_LEGACY_CLK
Message-ID: <20201118074812.GA5803@kozik-lap>
References: <20201115170950.304460-1-krzk@kernel.org>
 <20201115170950.304460-2-krzk@kernel.org>
 <160568531746.60232.15496517544781609246@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160568531746.60232.15496517544781609246@swboyd.mtv.corp.google.com>
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

On Tue, Nov 17, 2020 at 11:41:57PM -0800, Stephen Boyd wrote:
> Quoting Krzysztof Kozlowski (2020-11-15 09:09:48)
> > COMMON_CLK even though is a user-selectable symbol, is still selected by
> > multiple other config options.  COMMON_CLK should not be used when
> > legacy clocks are provided by architecture, so it correctly depends on
> > !HAVE_LEGACY_CLK.
> > 
> > However it is possible to create a config which selects both COMMON_CLK
> > (by SND_SUN8I_CODEC) and HAVE_LEGACY_CLK (by SOC_RT305X) which leads to
> 
> Why is SND_SUN8I_CODEC selecting COMMON_CLK? Or really, why is
> SOC_RT305X selecting HAVE_LEGACY_CLK?

The SND_SUN8I_CODEC I fixed in following patch (I sent separately v2 of
it).

The SOC_RT305X select HAVE_LEGACY_CLK? because it is an old, Ralink
platform, not converted to Common clock frm. Few clock operations are
defined in: arch/mips/ralink/clk.c

Best regards,
Krzysztof

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
