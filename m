Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC731DE26C
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 May 2020 10:54:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC9158946B;
	Fri, 22 May 2020 08:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dEksvjMVZZ7z; Fri, 22 May 2020 08:54:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59C0E89455;
	Fri, 22 May 2020 08:54:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 430C01BF5DD
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 08:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3E1CC89445
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 08:54:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UVSBol-dPO1q for <devel@linuxdriverproject.org>;
 Fri, 22 May 2020 08:54:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B5AD689461
 for <devel@driverdev.osuosl.org>; Fri, 22 May 2020 08:54:07 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id t16so4141850plo.7
 for <devel@driverdev.osuosl.org>; Fri, 22 May 2020 01:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KrT1SoD15NLfQ8qq9A2L0z3L7OIW2vz0cfwoycZIaSk=;
 b=qjnD8pyzQ9vLSGK+9aXm4h6rt56i4s0ANzW6Vh27qbaJB1MZkwcLIaZitcpOn1XAoT
 O5wzjfLRVQ7eurTzJi/uB64raupxzP+oBMlxnXbiuP4QdlKuhKrnMtylQPMWFigxEvlm
 LIfHwh5uL2pKKcXGUNAkVxR4dxtZDEZIyZ/6H44opVpDR8rrrlBwOJzLs8iNe7g5J0TH
 gg5A5VFwSm+7CGU15o78QgWK5okcvbRKe+6UGIg2/kMi4vEmUS82SVeB3naQ8jmRcvrC
 iIMmvVtr33HdqpOuPv0o4OOS54U1vu4PL+jfQ/ftMRFRFoN9075NHtRNKC0mhg+jIsG4
 r7og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KrT1SoD15NLfQ8qq9A2L0z3L7OIW2vz0cfwoycZIaSk=;
 b=d3505gOSxPRgcqskrNZSZnjwhbLkY+bnekhMbjEZl+xxPcJoFIiwnaj4wm5gywxN7C
 x7W1uEpqMsuHGguu+CvzfXWEnhenZKM7FjeVfUhrvuelVokmCnrQCxDvK8WJtxK9y/G+
 NRaF/WvuuHVhaMnwJU4nF5rB8URZqkjzB244n6ggqkPeno7TtXQeSVLGC+C3uotKYD2s
 GcSPQKu8buL/G55H/B/bOOh+G+a7NfYkYkdpx8qrywivFP0xp07aSGWjL1NK4dEYUNiB
 MxRXGya6vVMGmv9K5k4Ik8MmoBoZqK6qSErJ84w2BsguArFp/acRjgqYS5tc0WhVcJs8
 eyyA==
X-Gm-Message-State: AOAM530HTyib1XMAY2RrYq/2Yq6YyvPZazIIjcq0KUIhPcVywqCJfZQI
 4UHe1YTiXEH7L1exyIVxIe1O8ZQYTnH9cqxMicA=
X-Google-Smtp-Source: ABdhPJySNKcXXQ4O+svlbz8UMlrw8yXexA5v6PdsFEo3QaiPpyqed+BtGvQDsL+oQ2C+xIYCZ8vw55AsPQiGlSKaAfE=
X-Received: by 2002:a17:90b:3651:: with SMTP id
 nh17mr3325673pjb.228.1590137647307; 
 Fri, 22 May 2020 01:54:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200522082208.383631-1-alexandru.ardelean@analog.com>
 <20200522082208.383631-5-alexandru.ardelean@analog.com>
In-Reply-To: <20200522082208.383631-5-alexandru.ardelean@analog.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 22 May 2020 11:53:50 +0300
Message-ID: <CAHp75VewoA-jcRDpvNdoRyS4Tdaw_QsBDJ5_ETc6crwuuefdyg@mail.gmail.com>
Subject: Re: [PATCH 5/5] iio: remove left-over parent assignments
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
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
Cc: milo.kim@ti.com, tomislav.denis@avl.com,
 Dan Robertson <dan@dlrobertson.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-aspeed@lists.ozlabs.org, linux-iio <linux-iio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Eddie James <eajames@linux.ibm.com>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Paul Cercueil <paul@crapouillou.net>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Song Qiang <songqiang1304521@gmail.com>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 linux-samsung-soc@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 tduszyns@gmail.com, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 agross@kernel.org, linux-input <linux-input@vger.kernel.org>,
 orsonzhai@gmail.com, Alexandre TORGUE <alexandre.torgue@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Jiri Kosina <jikos@kernel.org>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Hans de Goede <hdegoede@redhat.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Andreas Klinger <ak@it-klinger.de>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-amlogic@lists.infradead.org, Fabrice GASNIER <fabrice.gasnier@st.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Shawn Guo <shawnguo@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Azael Avalos <coproscefalo@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ray Jui <rjui@broadcom.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, zhang.lyra@gmail.com,
 baolin.wang7@gmail.com, Kevin Tsai <ktsai@capellamicro.com>,
 Syed Nayyar Waris <syednwaris@gmail.com>, Peter Rosin <peda@axentia.se>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 22, 2020 at 11:37 AM Alexandru Ardelean
<alexandru.ardelean@analog.com> wrote:
>
> These were found by doing some shell magic:
> ------------
> for file in $(git grep -w devm_iio_device_alloc | cut -d: -f1 | sort | uniq) ; do
>         if grep 'parent =' $file | grep -v trig | grep -vq devm_; then
>                 echo "$file -> $(grep "parent =" $file)"
>         fi
> done
> -----------

Side note: time to learn coccinelle or shell better :-)

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
