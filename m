Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D642E02A2
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Dec 2020 23:53:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14B118685A;
	Mon, 21 Dec 2020 22:53:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KFpoItPy0h-P; Mon, 21 Dec 2020 22:53:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C205F86881;
	Mon, 21 Dec 2020 22:53:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B5AB1BF97A
 for <devel@linuxdriverproject.org>; Mon, 21 Dec 2020 22:53:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2425F870C0
 for <devel@linuxdriverproject.org>; Mon, 21 Dec 2020 22:53:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E-xm0bxmY+Vv for <devel@linuxdriverproject.org>;
 Mon, 21 Dec 2020 22:53:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com
 [209.85.161.52])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 375ED870B7
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 22:53:22 +0000 (UTC)
Received: by mail-oo1-f52.google.com with SMTP id y14so2564771oom.10
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 14:53:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PmiFErZsck8Eax6YSpPObi4oYX8shYbW2tl21KlUI5M=;
 b=QiPj7JGUbo3jDBQnNhha8sclh6JTV7IbiaIfrKXHavViBOw7vfCrrAS/9fO1vzw5uv
 QvroIcHj/r+ziV0/yfDGq0Omts84K5SGp8LLR5zv9gCBiEnioB48S81vpBTTcboZ/5ox
 nqKvjc9ntJgkWK/S8AnAdOFrrU0hdiDQWgvPc3XpWGQgbImDtuQ3551BOpazcodIQ3ER
 jGw6EW8f8nf0MRch0r/IOSMGTYSWSQPoe3VQui0xfP3fG5RfPZz3IazJNfU1gNEDzUDM
 9u6oQgNLl7hRXVAF8pFFQPDULF6e8Tm86HLGdGGaGy3azVZOh31WsI8zjbj1mIZJMZpc
 2txA==
X-Gm-Message-State: AOAM532lO8Wat71MBkjILlJhsERDTBzWNtu0Jyx3XhSuv15HWn4V3pkr
 jkh4X2vIFnWlCyOt0c1NPw==
X-Google-Smtp-Source: ABdhPJwHk2mKXmiM9Be1g1hPiKx149bS8x31wABVYLXX21+EEEz/R18GHHbZiggzsaUq+ghMjOAzAg==
X-Received: by 2002:a05:6820:503:: with SMTP id
 m3mr13176716ooj.83.1608591201539; 
 Mon, 21 Dec 2020 14:53:21 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id e25sm1849939oof.1.2020.12.21.14.53.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Dec 2020 14:53:20 -0800 (PST)
Received: (nullmailer pid 723454 invoked by uid 1000);
 Mon, 21 Dec 2020 22:53:16 -0000
Date: Mon, 21 Dec 2020 15:53:16 -0700
From: Rob Herring <robh@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 01/48] dt-bindings: memory: tegra20: emc: Replace core
 regulator with power domain
Message-ID: <20201221225316.GA723398@robh.at.kernel.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-2-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-2-digetx@gmail.com>
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-clk@vger.kernel.org, devel@driverdev.osuosl.org,
 Kevin Hilman <khilman@kernel.org>, Nicolas Chauvet <kwizart@gmail.com>,
 Viresh Kumar <vireshk@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 17 Dec 2020 21:05:51 +0300, Dmitry Osipenko wrote:
> Power domain fits much better than a voltage regulator in regards to
> a proper hardware description and from a software perspective as well.
> Hence replace the core regulator with the power domain. Note that this
> doesn't affect any existing DTBs because we haven't started to use the
> regulator yet, and thus, it's okay to change it.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  .../bindings/memory-controllers/nvidia,tegra20-emc.txt        | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
