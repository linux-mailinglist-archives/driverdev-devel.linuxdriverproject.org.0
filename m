Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8517935BC0A
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Apr 2021 10:23:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A210608FB;
	Mon, 12 Apr 2021 08:23:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9gwyHgVsP1sP; Mon, 12 Apr 2021 08:23:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 266FA605CB;
	Mon, 12 Apr 2021 08:23:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5767F1BF314
 for <devel@linuxdriverproject.org>; Mon, 12 Apr 2021 08:23:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 45DD4403C3
 for <devel@linuxdriverproject.org>; Mon, 12 Apr 2021 08:23:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XNNcHpE3MC4u for <devel@linuxdriverproject.org>;
 Mon, 12 Apr 2021 08:23:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com
 [IPv6:2607:f8b0:4864:20::e2a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 00AA140203
 for <devel@driverdev.osuosl.org>; Mon, 12 Apr 2021 08:23:24 +0000 (UTC)
Received: by mail-vs1-xe2a.google.com with SMTP id 2so6218231vsh.4
 for <devel@driverdev.osuosl.org>; Mon, 12 Apr 2021 01:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U3KvNK5Z0Y0b8uUls56fLMW/SjSCKNnm377bqkslXR8=;
 b=XV1PbJ+lqigLdhRMkPoUSk3eluxQLHpAeYhojQKjAFRLh73UBVZravfBUk/6TYQ6JZ
 Z1ga5Bk6TFjE8hY8ks7CpxDTwodN2YqGYM+WIUBjWz4NtIukPNPtuVV/sm8X/hnqXzlQ
 FLOLj9c9r7tul6Lx5HRsd57MhXsVAmFOaRXBXej2siKsZXi7n5kmY2HWP7yJb9VzjPiM
 EHV0KxKDvRELffiMpqo/+qlpoJnAkRo9mf1WC89QhOyjEM6wCQMjnXsnpvUNtlZCnmdt
 gmkl2sQoD6/XWE3LT8o+fJtdCAaomGlMqX+vOqUpGqoeKV5aK1YZyD2AcJYq0Nvrzey8
 klkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U3KvNK5Z0Y0b8uUls56fLMW/SjSCKNnm377bqkslXR8=;
 b=Evt2uJpHTUz752kVsTQLYELya9rBAMPzIimwe9Blu7wp5cO3HX7/9vD3Hxohd9QfwK
 uZRujb+y2q+TNc6TuSMvO4WByXtcS70Cpq3iOVQ8yAoXrzXQSEp0z52mM6QFnOHnzE7I
 gS2co4wfLF2e1aW35eK5fS2aI68zhs09yZ34ZxzX/rjygR/OoBB4OOjGuXxWxWhLqUi1
 +PSAUI1O5Lv34X+sysLjQorkvMlNZt3US8AHKR0eSCzvtfo83VCQt3R5jwJhE/A2X0hN
 VtQcgK5Ii+GeC5yCmdToC8ciionVzOYfM3DQgx4H2uOHlYLXhTj4RdVDISKpSeD+LFC7
 x8Wg==
X-Gm-Message-State: AOAM531KuHApJUqc9cO+WbWn0XdAvhShT0WOisrOz9BtpDHEtBLxPT5Q
 6Kv4KGTxQz1tIajLX376wKmkkerNv/9lHyxEn5M8Vw==
X-Google-Smtp-Source: ABdhPJyrFlHZnGVUhfAiIaP7BcJxpBhp1fb8R1xQW2iTt60VxLne7puTBy7KBNawo5+T+YMuV2eaUOPVM9+WUyAOS18=
X-Received: by 2002:a67:fd48:: with SMTP id g8mr11986932vsr.55.1618215803602; 
 Mon, 12 Apr 2021 01:23:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210315132501.441681-1-Jerome.Pouiller@silabs.com>
 <4503971.bAhddQ8uqO@pc-42>
 <CAPDyKFoXgV3m-rMKfjqRj91PNjOGaWg6odWG-EGdFKkL+dGWoA@mail.gmail.com>
 <5713463.b6Cmjs1FeV@pc-42>
 <CAPDyKFrONrUvbVVVF9iy4P17jZ_Fq+1pGMmsqM6C1hOXOWQnBw@mail.gmail.com>
 <87pmz6mhim.fsf@codeaurora.org>
In-Reply-To: <87pmz6mhim.fsf@codeaurora.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 12 Apr 2021 10:22:47 +0200
Message-ID: <CAPDyKFrgrSAz-B7wqNNPKk3kB8UqhGs=+bZ8RRhmqh8HuvhcEQ@mail.gmail.com>
Subject: Re: [PATCH v5 08/24] wfx: add bus_sdio.c
To: Kalle Valo <kvalo@codeaurora.org>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, DTML <devicetree@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 7 Apr 2021 at 14:00, Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Ulf Hansson <ulf.hansson@linaro.org> writes:
>
> >> If I follow what has been done in other drivers I would write something
> >> like:
> >>
> >>   static int wfx_sdio_suspend(struct device *dev)
> >>   {
> >>           struct sdio_func *func = dev_to_sdio_func(dev);
> >>           struct wfx_sdio_priv *bus = sdio_get_drvdata(func);
> >>
> >>           config_reg_write_bits(bus->core, CFG_IRQ_ENABLE_DATA, 0);
> >>           // Necessary to keep device firmware in RAM
> >>           return sdio_set_host_pm_flags(func, MMC_PM_KEEP_POWER);
> >
> > This will tell the mmc/sdio core to keep the SDIO card powered on
> > during system suspend. Thus, it doesn't need to re-initialize it at
> > system resume - and the firmware should not need to be re-programmed.
> >
> > On the other hand, if you don't plan to support system wakeups, it
> > would probably be better to power off the card, to avoid wasting
> > energy while the system is suspended. I assume that means you need to
> > re-program the firmware as well. Normally, it's these kinds of things
> > that need to be managed from a ->resume() callback.
>
> Many mac80211 drivers do so that the device is powered off during
> interface down (ifconfig wlan0 down), and as mac80211 does interface
> down automatically during suspend, suspend then works without extra
> handlers.

That sounds simple. :-)

Would you mind elaborating on what is actually being powered off at
interface down - and thus also I am curious what happens at a typical
interface up?

Even if we don't want to use system wakeups (wake-on-lan), the SDIO
core and the SDIO func driver still need to somewhat agree on how to
manage the power for the card during system suspend, I think.

For example, for a non-removable SDIO card, the SDIO/MMC core may
decide to power off the card in system suspend. Then it needs to
restore power to the card and re-initialize it at system resume, of
course. This doesn't mean that the actual corresponding struct device
for it, gets removed/re-added, thus the SDIO func driver isn't being
re-probed after the system has resumed. Although, since the SDIO card
was re-initialized, it's likely that the FW may need to be
re-programmed after the system has been resumed.

Are you saying that re-programming the FW is always happening at
interface up, when there are none system suspend/resume callbacks
assigned for the SDIO func driver?

Kind regards
Uffe
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
