Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFEA320449
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 08:02:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7AD628751F;
	Sat, 20 Feb 2021 07:02:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1nVKGByh63Vm; Sat, 20 Feb 2021 07:02:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EFDBA874FE;
	Sat, 20 Feb 2021 07:02:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3709F1BF83B
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 07:02:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3149E874B9
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 07:02:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lid9dz0WSDLl for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 07:02:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BA35187351
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 07:02:26 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D8C7864EB8;
 Sat, 20 Feb 2021 07:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613804546;
 bh=Pvh5cvdWKO1LNmyetgVB1YyxbpJdDKcFN/Tg6OGL7+E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jmEaiT3r/F6fl71Sc7Hqap7ot1RTVLGh1ddbcZ03dVUXbg2yw6DhnQBAHtzdwzKWj
 pHRHxHJohqqkFnsAIOWK9oMMCXUueYM39jYhs4pl/B4sEXMJv7MSYaC8g9u+IYNBPW
 ep4njqFYZg12q0E39j6RthsylaOujRIHSjUewA2E=
Date: Sat, 20 Feb 2021 08:02:23 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julian Braha <julianbraha@gmail.com>
Subject: Re: [PATCH] Staging: rtl8192e: fix kconfig dependency on CRYPTO
Message-ID: <YDCz/6gQgp07NGw2@kroah.com>
References: <8483722.hVsnvgcxvV@ubuntu-mate-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8483722.hVsnvgcxvV@ubuntu-mate-laptop>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 19, 2021 at 06:14:57PM -0500, Julian Braha wrote:
> commit 1a3f343027d7f5a6475a019aa20be89795b8c8e0
> Author: Julian Braha <julianbraha@gmail.com>
> Date:   Fri Feb 19 17:02:24 2021 -0500
> 
>     staging: rtl8192e: fix kconfig dependency on CRYPTO
>     
>     When RTLLIB_CRYPTO_TKIP is enabled and CRYPTO is disabled,
>     Kbuild gives the following warning:
>     
>     WARNING: unmet direct dependencies detected for CRYPTO_MICHAEL_MIC
>       Depends on [n]: CRYPTO [=n]
>       Selected by [m]:
>       - RTLLIB_CRYPTO_TKIP [=m] && STAGING [=y] && RTLLIB [=m]
>     
>     WARNING: unmet direct dependencies detected for CRYPTO_LIB_ARC4
>       Depends on [n]: CRYPTO [=n]
>       Selected by [m]:
>       - RTLLIB_CRYPTO_TKIP [=m] && STAGING [=y] && RTLLIB [=m]
>       - RTLLIB_CRYPTO_WEP [=m] && STAGING [=y] && RTLLIB [=m]
>     
>     This is because RTLLIB_CRYPTO_TKIP selects CRYPTO_MICHAEL_MIC and CRYPTO_LIB_ARC4,
>     without depending on or selecting CRYPTO, despite those config options
>     being subordinate to CRYPTO.
>     
>     Signed-off-by: Julian Braha <julianbraha@gmail.com>
> 
> diff --git a/drivers/staging/rtl8192e/Kconfig b/drivers/staging/rtl8192e/Kconfig
> index 03fcc23516fd..6e7d84ac06f5 100644
> --- a/drivers/staging/rtl8192e/Kconfig
> +++ b/drivers/staging/rtl8192e/Kconfig
> @@ -26,6 +26,7 @@ config RTLLIB_CRYPTO_CCMP
>  config RTLLIB_CRYPTO_TKIP
>         tristate "Support for rtllib TKIP crypto"
>         depends on RTLLIB
> +      select CRYPTO
>         select CRYPTO_LIB_ARC4
>         select CRYPTO_MICHAEL_MIC
>         default y

Odd indentation :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
