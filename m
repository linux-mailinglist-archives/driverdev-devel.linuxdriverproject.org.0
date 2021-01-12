Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E57402F2A58
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Jan 2021 09:53:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B4535273B5;
	Tue, 12 Jan 2021 08:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r-wyh7QxIHwI; Tue, 12 Jan 2021 08:53:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 83292204E2;
	Tue, 12 Jan 2021 08:52:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 805891BF28C
 for <devel@linuxdriverproject.org>; Tue, 12 Jan 2021 08:52:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6B2F7204C3
 for <devel@linuxdriverproject.org>; Tue, 12 Jan 2021 08:52:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p4Yo04Dl46Gd for <devel@linuxdriverproject.org>;
 Tue, 12 Jan 2021 08:52:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 by silver.osuosl.org (Postfix) with ESMTPS id 121A4204BB
 for <devel@driverdev.osuosl.org>; Tue, 12 Jan 2021 08:52:55 +0000 (UTC)
Received: by mail-lj1-f177.google.com with SMTP id n11so1979414lji.5
 for <devel@driverdev.osuosl.org>; Tue, 12 Jan 2021 00:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JsEm4I1NOjMflpIR4jGgdH1VuxMujPdLvKb9dS5688I=;
 b=Q91v3fKmkv7yHp1jk+4mrPGmxbo1mWWCFs3xqcg8gV6QkcBpp7MYlMrLJMzA6sAk3V
 +oxxHVrn2m9yBMl4cBHI/AtzRTMwdyn5YfhGjKZOcqvX353YR3GlZO3wOkqqoDu84OHp
 UtKzUTaQ3c9AurzzutPndd4sWUqZoDXDNZd+/S/fFRANW38PzxnDJtJxYfj1fA1L8pAp
 3ROnz5lQOdpGRyugwbAyMVZMu0e0vBWa+ogqp/NR40TBd3ZrwcemjrL5HVTHESrkrfzA
 CxE3a+YKPsNMNt8oHMV2Olajf4EUW+eIIVbM5Ohmqil0m/pTkn8loynxCUkWS849IJCu
 lHLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JsEm4I1NOjMflpIR4jGgdH1VuxMujPdLvKb9dS5688I=;
 b=jjt90lZSOJyxVGsXyuUeW0gOcKerkAGhty8ZYcfqko7nhDc/l/riOBB2Pos5B2gOCs
 vZPecF2D2CeVz0QdaiOytK+lIPGR/PauBOsofoQ0t3TFgBI62imAwye/lHm2Gbgqqbcg
 IaV2KmPgH8H2AB7KIkVuSgM8+Pm9UK0cJt9jU8PTkgrbbkUUkxzXTnOqKwt1mGxGhWTN
 49x0tpMnjACecUgMs3ocgyOMR3MZDqn9RMv6fSt9KkgDD/eZ1cK7OLNwmP0YinC8efqQ
 /yipmepLAsNmcWkVNKyJTi+GCCmrFDr9fOgwNxfNqtw2s8nP+CxjPrStGRmBIitlGzkJ
 JsAA==
X-Gm-Message-State: AOAM533FwCxPBnPLBpaCNoIilETWnaP8pkdXjGW/EQDUrDgPAkg2LPWg
 VIFfUMAVgSbOFXIsLd2bUdlDfxRiMU44IOVg3uGDgQ==
X-Google-Smtp-Source: ABdhPJxOVHEfMGqQL+Ee1Z/8lgjxVni/8qnA2F4LQjPU+qNuigb/gJQdyNRG9FDpz+vW65Ij7oQxSE3HlbzgqvVsz7Q=
X-Received: by 2002:a05:651c:1312:: with SMTP id
 u18mr1556193lja.200.1610441573181; 
 Tue, 12 Jan 2021 00:52:53 -0800 (PST)
MIME-Version: 1.0
References: <20201211164801.7838-1-nsaenzjulienne@suse.de>
 <47b4dbc7a70d8f900789608e753be6faa36cebeb.camel@suse.de>
In-Reply-To: <47b4dbc7a70d8f900789608e753be6faa36cebeb.camel@suse.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 12 Jan 2021 09:52:42 +0100
Message-ID: <CACRpkdZCR=_KpPpb2o4e_OvQtJPYZ5qwcxa8MOC7UFvcjm6FUw@mail.gmail.com>
Subject: Re: [PATCH v6 00/11] Raspberry Pi PoE HAT fan support
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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
 linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Anholt <eric@anholt.net>,
 Linux Input <linux-input@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 11, 2021 at 10:02 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:

> I'd say at this point the series is pretty clean and, AFAIK, there aren't any
> objections. I'm not so sure who should take it, given that it covers numerous
> subsystems. Any suggestions on how to handle it?

This is one of those cases where I would suggest collect ACKs
from affected subsystem maintainers and send a pull request
to the SoC tree for this hairy bundle.

Yours,
Linus Walleij
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
