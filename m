Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30629131BEE
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Jan 2020 23:59:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C665D227CD;
	Mon,  6 Jan 2020 22:59:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X604+yysoRUu; Mon,  6 Jan 2020 22:59:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 81F422279B;
	Mon,  6 Jan 2020 22:59:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B23C31BF20D
 for <devel@linuxdriverproject.org>; Mon,  6 Jan 2020 22:59:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ADA4620487
 for <devel@linuxdriverproject.org>; Mon,  6 Jan 2020 22:59:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0qgGOWb78SoE for <devel@linuxdriverproject.org>;
 Mon,  6 Jan 2020 22:59:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 36AA92279B
 for <devel@driverdev.osuosl.org>; Mon,  6 Jan 2020 22:59:14 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id u71so52634805lje.11
 for <devel@driverdev.osuosl.org>; Mon, 06 Jan 2020 14:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C0KNG+0OExH+PgE3Je4nnY6Td9Ccw4KBccd9DW70NKo=;
 b=F1W6FrjBpZ29K0G9T9CoWndO9TPARRdTZkCrQ+TZ6DnirL28X/Ao01Xngla2oAx8aD
 wZg6KYQYKH495KPdcHL0gPBqyRskLBesIDSTE2LPxinAoggI0DaNjYwa6+9jREEcZgZW
 qSm6vVsfwPwEU+8R2hR9CdCbg1FILYS7Y85J0xzQbXGcGanAZ6VUxW6/JvhIPDPQIf+y
 7VWfuWdwEEL4LQV5mals5C2khcjyQksim3mb2q/O5Qt7Df3ojZbW8A90z+ROMB/hjTzW
 kAgoeDeN5DHHqv5zQSJ9m7pMwOMWBTjjssM5TxjH7MILgz8N6clZFh/F+CKbj7y9cQc5
 6AHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C0KNG+0OExH+PgE3Je4nnY6Td9Ccw4KBccd9DW70NKo=;
 b=qzPei9NWjjOQANqIMIBWnZ0RZ1Jyr5FxGbqUqFubskq7AP0UCOWDmis+sH87qmKK/e
 nOS8bB/ySTDBx/nyZNYj9Gh8FmL0uecKf9wmsRDaViYrVe+vjE2AR17AyHtoe5948nvx
 pPiMj2F4zfGHNNR0YwOnyOCeCTA4F51xIdMK2qAiFU5qsEY88+Rk6j2JG0IA2TZevO/q
 oe0qhyqcVMB+B0W1D3tqa18nFqLJr9JpFV6g3VrP4LZ81RAbZt+T8hfb4/503kkD0QCV
 b7BHjdb+j2IewPTSiPJbTk24jfQvoC93/efwOf3neqPwN3i7hs1efLaLofgWBjYE+M6K
 LZ1w==
X-Gm-Message-State: APjAAAUNWtBLwJVf6Kb+vFXIxJpCJvzpky9VtFvcaADVrxtKi276j4zn
 qJ1CCz8VBgNlOs3v9NPoD35VaqdFYky3QV1x9Yx8Pw==
X-Google-Smtp-Source: APXvYqzDJbaUismLGujeor0umiyYbHuGqsL7l41pJ5HBf+0/0CpHdmcEUNRW/RHFYfBWr5eT4fcWBMlE9u0L9WYEDME=
X-Received: by 2002:a2e:85cd:: with SMTP id h13mr59765545ljj.191.1578351552102; 
 Mon, 06 Jan 2020 14:59:12 -0800 (PST)
MIME-Version: 1.0
References: <20191215183047.9414-1-digetx@gmail.com>
In-Reply-To: <20191215183047.9414-1-digetx@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 6 Jan 2020 23:59:01 +0100
Message-ID: <CACRpkdYAKS50-CNmE0nRNQanFxKejoHrwxho3fZXROoLZUb4+Q@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] Tegra GPIO: Minor code clean up
To: Dmitry Osipenko <digetx@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Dec 15, 2019 at 7:31 PM Dmitry Osipenko <digetx@gmail.com> wrote:

> I was investigating why CPU hangs during of GPIO driver suspend and in
> the end it turned out that it is a Broadcom WiFi driver problem because
> it keeps OOB wake-interrupt enabled while WLAN interface is DOWN and this
> may cause a bit weird CPU hang on writing to INT_ENB register during of
> GPIO driver suspend. Meanwhile I also noticed that a few things could be
> improved in the driver, that's what this small series addresses.
>
> Dmitry Osipenko (3):
>   gpio: tegra: Use generic readl_relaxed/writel_relaxed accessors
>   gpio: tegra: Properly handle irq_set_irq_wake() error
>   gpio: tegra: Use NOIRQ phase for suspend/resume

All three patches applied with Thierry's review/test tag.

Yours,
Linus Walleij
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
