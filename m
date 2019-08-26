Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 985879C8E6
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 08:00:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D774287527;
	Mon, 26 Aug 2019 06:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2s3npLFT951B; Mon, 26 Aug 2019 06:00:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D0E687447;
	Mon, 26 Aug 2019 06:00:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 151FF1BF44C
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 06:00:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0E727203F6
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 06:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AJ0XayZsdlvn for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 06:00:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id D2ADA20398
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 06:00:20 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id l21so9910940pgm.3
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 23:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=v1mN+PJ4/u/At+nrZH4p9oYVurqqQgIOn2/0TJTZ3aA=;
 b=oYa8JhBm8dZps01mGvJJ7EihivLZWL9IVeFOB3bisU4QDF3oAG3c00mNnCybhSTIt8
 sG/TtLLKPza0FQMNp8SD6tpnTXI83deBkdCptHRO7/s5IBkZAPI/7ji79LPDf1smlYB0
 aXHhLZZYjvP1ZQCC35CtRudGtTvMRav/m0oz2KWiVvH+YCO/1uL+AqNhHH/kdfO4eK5K
 WFOyHV47RBI+/nQlOqVl7RkO9GLAiTJyWl/XhDRTeFuU5Gf72QB4tTnLNsaaQsc4fKPL
 ToLwMH+3IzLKjWo1smfWBhtIEdo3HluCKy2qpiiA+tQT4ZFbc0Ss4SC/oNOXIs+NKbfB
 PJBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=v1mN+PJ4/u/At+nrZH4p9oYVurqqQgIOn2/0TJTZ3aA=;
 b=CcHoQ9yjJvs2IS+eawQcgQl1SEtbQj0GJmjPQWZX7I4fbMRUbTh4p5gfuVj+L9Htlm
 OSEwRMLLRHx/L8811nimiTozTR8NMO8/FTkTSuXnhtQS8CV2/8YGsxOGkxFTKKpdrItg
 PlnbzMtrwJQKB2eyVhs0j6Gq+FkfRKImhe+4Grl22b0PAOofmRgd3+tVasAZsJxHpMye
 Zd34Ki02jEV/1hxUgzVauVM+P4tAstsPakWhm5ToK5YB8CuQ09EipgJ/4Lbd4iZ4ZAEb
 Y9F75uglEZV10RW0tNhzfta5cKD8kM5vnh8XNX1+9He4ZVBozwbECwnyMqFMntiAxeQC
 NHfw==
X-Gm-Message-State: APjAAAVFokYl/rmk/J5BDeSa4o/h5hkM6HxLm/mutPegmWIrKxmBNlHb
 wX+3DC4iMkUZHHFUxeLlr/eQBA==
X-Google-Smtp-Source: APXvYqxLcGMYwSCfKwTksNB+K6eFlbyh6xDK9Gzl4gJ39cyvyk40/8Ba0qvaFGa7EbrwzZQNsOk3Sw==
X-Received: by 2002:a17:90a:be07:: with SMTP id
 a7mr18000340pjs.88.1566798735792; 
 Sun, 25 Aug 2019 22:52:15 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id g2sm16208053pfq.88.2019.08.25.22.52.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 25 Aug 2019 22:52:15 -0700 (PDT)
Date: Mon, 26 Aug 2019 11:22:13 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/9] staging: greybus: remove license "boilerplate"
Message-ID: <20190826055213.rqzh4hsvg4p3eudp@vireshk-i7>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190825055429.18547-3-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825055429.18547-3-gregkh@linuxfoundation.org>
User-Agent: NeoMutt/20180716-391-311a52
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>, Mark Greer <mgreer@animalcreek.com>,
 Viresh Kumar <vireshk@kernel.org>, johan@kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 25-08-19, 07:54, Greg Kroah-Hartman wrote:
> When the greybus drivers were converted to SPDX identifiers for the
> license text, some license boilerplate was not removed.  Clean this up
> by removing this unneeded text now.
> 
> Cc: Johan Hovold <johan@kernel.org>
> Cc: Alex Elder <elder@kernel.org>
> Cc: Vaibhav Agarwal <vaibhav.sr@gmail.com>
> Cc: Mark Greer <mgreer@animalcreek.com>
> Cc: Viresh Kumar <vireshk@kernel.org>
> Cc: "Bryan O'Donoghue" <pure.logic@nexus-software.ie>
> Cc: greybus-dev@lists.linaro.org
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  .../Documentation/firmware/authenticate.c     | 46 -------------------
>  .../greybus/Documentation/firmware/firmware.c | 46 -------------------
>  drivers/staging/greybus/arpc.h                | 46 -------------------
>  drivers/staging/greybus/audio_apbridgea.h     | 26 +----------
>  .../staging/greybus/greybus_authentication.h  | 46 -------------------
>  drivers/staging/greybus/greybus_firmware.h    | 46 -------------------
>  drivers/staging/greybus/greybus_protocols.h   | 46 -------------------
>  drivers/staging/greybus/tools/loopback_test.c |  2 -
>  8 files changed, 1 insertion(+), 303 deletions(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
