Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DC7CDD3B
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 10:27:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A88CC85E27;
	Mon,  7 Oct 2019 08:27:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nIVZ7EXKa2aA; Mon,  7 Oct 2019 08:27:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E6A685DFF;
	Mon,  7 Oct 2019 08:27:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 46C421BF85D
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 08:27:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4150620397
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 08:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DjTbqp5FcCgc for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 08:27:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 1FAA720395
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 08:27:02 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id 67so10247312oto.3
 for <devel@driverdev.osuosl.org>; Mon, 07 Oct 2019 01:27:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VKymJxaLp2SF18G9ExdMOsAdXsmgBDVfrU/If3JZGxo=;
 b=TWYoEhnJhUsmQM4vwHRk5wJFbp2Z4g83Er0zqNqxMflg+Wx7r/djSma00t1i3Iod3r
 G0X4vTeP69qqlFClhvfexhm+0sgEg/jZeA/K32r41YtSN9ss1B+oUMDD8W4HmSzllhmR
 f/3pRXLipQGTZC1UBOq6+joZvSGZ7OfwkPSJ/bhObDP7PdwVzrlLtw5xlDKPsqeS4vUn
 wdnVff/RX9PH50GvMu0mjJjY6sHjfaEEi4qozhXBCZwhYVvLsXt40UPkWzvyh158+e0W
 ujWVuy4O6UNsfaGNY1fsczhgDdBTpmXlgZU2GPLLMGJA9/pH0o16v5f3SXTbofAw7hbE
 l1WA==
X-Gm-Message-State: APjAAAUbFE9I/CnTSMsFb58+dqm6g+6eGPVEh6xc8XClWMtf6I9VXuyj
 15P4GTCtFteqCNoRjmx/ywNaFq5iOCQ51XV9c8A=
X-Google-Smtp-Source: APXvYqxEOkV8nJCSllSqxdkQVypo90wcNgBvYDBNSKRgpoLJCvXTnmOdSLlUAojqzzfR9rCgupdlwodIFF5kpYpgt28=
X-Received: by 2002:a9d:17e6:: with SMTP id j93mr20339687otj.297.1570436821298; 
 Mon, 07 Oct 2019 01:27:01 -0700 (PDT)
MIME-Version: 1.0
References: <20191004145544.5066-1-krzk@kernel.org>
 <20191004145544.5066-3-krzk@kernel.org>
In-Reply-To: <20191004145544.5066-3-krzk@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 7 Oct 2019 10:26:49 +0200
Message-ID: <CAMuHMdW0DSujexoGq4CJAYP40DvMcigk08aEnyQ72haY6jds5Q@mail.gmail.com>
Subject: Re: [RESEND TRIVIAL 3/3] treewide: arch: Fix Kconfig indentation
To: Krzysztof Kozlowski <krzk@kernel.org>
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
Cc: Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 linux-efi <linux-efi@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>, linux-iio@vger.kernel.org,
 linux-pci <linux-pci@vger.kernel.org>,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 platform-driver-x86@vger.kernel.org, linux-ide@vger.kernel.org,
 dm-devel@redhat.com, keyrings@vger.kernel.org,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, linux-riscv@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, ac100@lists.launchpad.net,
 linux-rtc@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 scsi <linux-scsi@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-rdma <linux-rdma@vger.kernel.org>, esc.storagedev@microsemi.com,
 linux-security-module@vger.kernel.org, linux-clk <linux-clk@vger.kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 linux-input@vger.kernel.org, xen-devel@lists.xenproject.org,
 virtualization@lists.linux-foundation.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 "moderated list:H8/300 ARCHITECTURE" <uclinux-h8-devel@lists.sourceforge.jp>,
 driverdevel <devel@driverdev.osuosl.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, linux-um@lists.infradead.org,
 linux-block@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Openrisc <openrisc@lists.librecores.org>, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 "open list:TI ETHERNET SWITCH DRIVER \(CPSW\)" <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-raid@vger.kernel.org,
 Jiri Kosina <trivial@kernel.org>, Linux MM <linux-mm@kvack.org>,
 netdev <netdev@vger.kernel.org>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 alpha <linux-alpha@vger.kernel.org>, dmaengine@vger.kernel.org,
 linux-integrity <linux-integrity@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 4, 2019 at 4:57 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
>     $ sed -e 's/^        /\t/' -i */Kconfig
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

>  arch/m68k/Kconfig.bus                  |  2 +-
>  arch/m68k/Kconfig.debug                | 16 ++++++++--------
>  arch/m68k/Kconfig.machine              |  8 ++++----

For m68k:
Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
