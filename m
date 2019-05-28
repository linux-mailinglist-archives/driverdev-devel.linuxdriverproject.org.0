Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232922C7FC
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2019 15:41:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4778387986;
	Tue, 28 May 2019 13:41:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vcdrPcNc0D7M; Tue, 28 May 2019 13:41:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CF588708F;
	Tue, 28 May 2019 13:41:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 907711BF314
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 13:41:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8A2AA2F22C
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 13:41:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EMHJURV6eRSH for <devel@linuxdriverproject.org>;
 Tue, 28 May 2019 13:41:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48])
 by silver.osuosl.org (Postfix) with ESMTPS id DAD302E99D
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 13:41:51 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id l17so17798822otq.1
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 06:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tKsXUMCakUWgErOsaRITqa4FxEz2qOwMXsf6lvlti0M=;
 b=oqcxK4FaFOcW5GwJTKUXr7vekNKKcFx7LWt8JHxUwbg+cWVAhaEWYDNG6A+B3gN4K2
 cnua/jNczN9pL0pWaSmbMB5ANrUyJRTuCEFo43geNZw3B6W+VEb1akn9j10v/RIr87W1
 NUNN4Sj85NkLZgQysRZbSyqBShe1YNitUo2QS/nciFTGAds3pKrN8x4aeFn2oD3Z2FZU
 S92G5951kPvhevqgnn/CNkBhdGHWwnhZJx5fDBwfIBH5DeTd3Es/C7jWR/0qzk2MYcth
 A+k5puS4IulBgv3mGQnnzAgYTD/HarbY7Pi2E9twTv2/i89DeDlFprt6nL+AxKCQL8Kr
 swzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tKsXUMCakUWgErOsaRITqa4FxEz2qOwMXsf6lvlti0M=;
 b=fZ+TJjtsqN1nBGThmxX5I2eWlvEe5btPbAwdBsd9nzOlpChPgRPa8vOrVbjmdC73zU
 hjfq0I8kHugjejg6GWM6N6OSyg2iYUdWN8wWidXWSMWuiH0gjz0NXTmU7W+S7avME3KJ
 b094cRJMBR1u+Ipax+SfbXObLouG9qb4KpYAIb4AWCUmULlfZGEBcPTdAErbTJ2Lrct4
 hUZbL3wlZ/rgV2/lTA5Hy/vaDZ6/I7O0QiESzrGD2ZcHg9ZkKArbD8LNG18bKkuBp05f
 fLuCprFH1mhJRgWlrb0HtyA0Di1/ok/nm5V9K/ogJ1ZIa+YNr5jsJvyZRYzgg9TMeLzl
 sCdg==
X-Gm-Message-State: APjAAAX7+KjLIMLD/dsOAKNYQwaK69OOndQdFZwCjk6JRPcz+3A+gQOZ
 XdNyi0fcL5z8Qk4EXxXib0FTiLgdhF2T94eWmTY=
X-Google-Smtp-Source: APXvYqzP0qT8QbEIUpML4WTjIG+mQEqMSn1zb42i3wQL0nMKL3SIL2EiVoclQJqCaUtFHCZ6Dsnjzh0AJHFZtS3EkXo=
X-Received: by 2002:a9d:68c5:: with SMTP id i5mr25567214oto.224.1559050910868; 
 Tue, 28 May 2019 06:41:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190528133214.21776-1-yuehaibing@huawei.com>
In-Reply-To: <20190528133214.21776-1-yuehaibing@huawei.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 28 May 2019 09:41:40 -0400
Message-ID: <CAGngYiU=uFjJFEoiHFUr+ab73sJksaTBkfxvQwL1X6WJnhchqw@mail.gmail.com>
Subject: Re: [PATCH -next] staging: fieldbus: Fix build error without
 CONFIG_REGMAP_MMIO
To: YueHaibing <yuehaibing@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello YueHaibing,

On Tue, May 28, 2019 at 9:33 AM YueHaibing <yuehaibing@huawei.com> wrote:
>
> Fix gcc build error while CONFIG_REGMAP_MMIO is not set
>
> drivers/staging/fieldbus/anybuss/arcx-anybus.o: In function `controller_probe':
> arcx-anybus.c:(.text+0x9d6): undefined reference to `__devm_regmap_init_mmio_clk'
>
> Select REGMAP_MMIO to fix it.

Thank you for noticing this, I appreciate it !

However, when I run this patch through the scripts/checkpatch.pl
script, it reports
some issues. Could you fix and post v2 please?

checkpatch.pl output follows:

WARNING: Possible unwrapped commit description (prefer a maximum 75
chars per line)
#68:
arcx-anybus.c:(.text+0x9d6): undefined reference to
`__devm_regmap_init_mmio_clk'

ERROR: DOS line endings
#87: FILE: drivers/staging/fieldbus/anybuss/Kconfig:17:
+^Iselect REGMAP_MMIO^M$

total: 1 errors, 1 warnings, 0 checks, 7 lines checked

NOTE: For some of the reported defects, checkpatch may be able to
      mechanically convert to the typical style using --fix or --fix-inplace.

Your patch has style problems, please review.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
