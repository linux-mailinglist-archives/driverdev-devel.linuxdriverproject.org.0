Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A40BE8FDD2
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 10:31:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A4E2E231A1;
	Fri, 16 Aug 2019 08:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2OX783NJyXEK; Fri, 16 Aug 2019 08:31:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0301823119;
	Fri, 16 Aug 2019 08:31:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F222B1BF333
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 08:31:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EED0A85F58
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 08:31:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D3OMsRZdQk5K for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 08:31:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 14A4385E43
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 08:31:33 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id y8so741915wrn.10
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 01:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nMteWjiol09LnNTGAtg+qqwxoUC+aePsLIm1kIpTrJs=;
 b=oCj+GOx8zj3DZDR8aTDgqrL6lshNRYHcEJ9xc7u/k5AAXmEozG5CiyjIcN62uoR4yk
 /dZXF2qmsL6jlDXs1GlkR2A/kSPm/FFMDejUbnIKqNjQtHvOcl4zAg6VDFE80jvid6MD
 52rJCbC9f15qQ3tWLYI9mE+Qjr2VSBI/Xc+5cXxFil0vTyG3GnDha7zPP8OJddjUr/Hq
 kon3JPJo1IcTbdJL2KaVY8vLnRPATMCLI5ZJACiqczFx0h7wXsZNpPh56pMC+YTAO9cW
 6XPg2vjaqtITAY9hZVyE6bhzL/BLKppzKSylT9ZNyy0Rn17zbVd0dOqMqj5AMFhpoO7L
 oyPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nMteWjiol09LnNTGAtg+qqwxoUC+aePsLIm1kIpTrJs=;
 b=RNFneYxut/s08INZtHrikmo6dhwhzWaxTMCT7UTqHT8qRQZqiln/KujchrDa7djv+V
 JZBuVFpGbo4WUmnizKXfm946hW0ftcT4dDpo23S4P3NhRoGn717rnVMV/qINvzWTIegA
 WbKjG0boR1MEU7ltxhjvgQibaF+O97sl4v539wWTWH1aQgp4Gowc0ppieoZxhyMSyMx0
 YqKutaZAm8cxUEOYPWCCg2mZ3rKpJ5wUyxCa57XbokiMaWfshYWv/VE8oDx4Bc91lN4K
 Y6sygz01dgebHFPd8i3RLp+ZHdni+WR6TqZ2jRJXqD53wm6HRwEaG2mFQvDO7jeZgEAz
 wRJA==
X-Gm-Message-State: APjAAAXuaYdd9+Ca9rdLPafb8I/6+FvYzl5H5GnSOx1V/xM/hq8+e9LP
 soWVXfK4KRVzg0ay6mKOThgoeeZXcFGaNkRKKH+Mww==
X-Google-Smtp-Source: APXvYqwh5XDkO7F2xERL7f+E+ehgrXGdbgDaiyV9najpnyy1GfPAMnxMomE45gSsbegm0OpSlpcxM0Q0s5kDUvwvH7k=
X-Received: by 2002:adf:e8c2:: with SMTP id k2mr9106596wrn.198.1565944291339; 
 Fri, 16 Aug 2019 01:31:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190816065936.12214-1-contact@christina-quast.de>
In-Reply-To: <20190816065936.12214-1-contact@christina-quast.de>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 16 Aug 2019 11:31:23 +0300
Message-ID: <CAKv+Gu-qbwCJzH2TMpe5hEh8UAO3XQ66Zzf9Nx4UqBXd3Lr79w@mail.gmail.com>
Subject: Re: [PATCH 0/2] Use ccm(aes) aead transform in staging drivers
To: Christina Quast <contact@christina-quast.de>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers <ebiggers@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 "<linux-wireless@vger.kernel.org>" <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anushka Shukla <anushkacharu9@gmail.com>, Zach Turner <turnerzdp@gmail.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 16 Aug 2019 at 10:00, Christina Quast
<contact@christina-quast.de> wrote:
>
> Use ccm(aes) aead transform instead of invoking the AES block cipher
> block by block.
>

Thanks! This eliminates another two users of the bare cipher API,
which is not the right abstraction for drivers to use.

Reviewed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

I don't have the hardware, so I can't test this.

> Christina Quast (2):
>   staging: rtl8192u: ieee80211: ieee80211_crypt_ccmp.c: Use crypto API
>     ccm(aes)
>   staging: rtl8192e: rtllib_crypt_ccmp.c: Use crypto API ccm(aes)
>
>  drivers/staging/rtl8192e/Kconfig              |   1 +
>  drivers/staging/rtl8192e/rtllib_crypt_ccmp.c  | 187 ++++++++----------
>  drivers/staging/rtl8192u/Kconfig              |   2 +
>  .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c | 187 ++++++++----------
>  4 files changed, 159 insertions(+), 218 deletions(-)
>
> --
> 2.20.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
