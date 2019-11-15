Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E31F8FD5EC
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Nov 2019 07:16:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59BFF89763;
	Fri, 15 Nov 2019 06:16:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lURF+F1QdK-V; Fri, 15 Nov 2019 06:16:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 676AD89742;
	Fri, 15 Nov 2019 06:16:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B00CD1BF3FD
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 06:16:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A99AE88C49
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 06:16:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vHvOkb25KSDK for <devel@linuxdriverproject.org>;
 Fri, 15 Nov 2019 06:16:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EE67188814
 for <devel@driverdev.osuosl.org>; Fri, 15 Nov 2019 06:16:12 +0000 (UTC)
Received: from localhost (unknown [104.132.150.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52F1D2072B;
 Fri, 15 Nov 2019 06:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573798572;
 bh=G+0cdXXTrcTHP5HHhkPRNjMmImcxewGysVtA+48G1lE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZuuMgLeFQzo5L2g7WgAd8skDAoeSdstO8NckalfM7LIkAEM/9Hkm9v9OWS7aNDVMH
 OtEDWlLHRzX8nf8i/P3Qoya1aZItzH8IAlhpCw8c3oHc9SfuSpwkKgldI0DneCpe/+
 97vWjyIfKOaEQpXgp5O1rBzfyL9oRxDYryelAJeY=
Date: Fri, 15 Nov 2019 14:16:10 +0800
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] staging: rtl*: Remove tasklet callback casts
Message-ID: <20191115061610.GA1034830@kroah.com>
References: <201911142135.5656E23@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201911142135.5656E23@keescook>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
 Romain Perier <romain.perier@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 14, 2019 at 09:39:00PM -0800, Kees Cook wrote:
> In order to make the entire kernel usable under Clang's Control Flow
> Integrity protections, function prototype casts need to be avoided
> because this will trip CFI checks at runtime (i.e. a mismatch between
> the caller's expected function prototype and the destination function's
> prototype). Many of these cases can be found with -Wcast-function-type,
> which found that the rtl wifi drivers had a bunch of needless function
> casts. Remove function casts for tasklet callbacks in the various drivers.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c        |  3 +--
>  drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c        |  3 +--
>  drivers/staging/rtl8188eu/include/rtl8188e_recv.h     |  2 +-
>  drivers/staging/rtl8188eu/include/rtl8188e_xmit.h     |  2 +-
>  drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c      |  4 ++--
>  drivers/staging/rtl8192e/rtllib_softmac.c             |  7 +++----
>  .../staging/rtl8192u/ieee80211/ieee80211_softmac.c    |  7 +++----
>  drivers/staging/rtl8192u/r8192U_core.c                |  8 ++++----
>  drivers/staging/rtl8712/rtl8712_recv.c                | 11 +++++------
>  drivers/staging/rtl8712/rtl871x_xmit.c                |  5 ++---
>  drivers/staging/rtl8712/rtl871x_xmit.h                |  2 +-
>  drivers/staging/rtl8712/usb_ops_linux.c               |  4 ++--
>  drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c        | 11 ++++-------
>  13 files changed, 30 insertions(+), 39 deletions(-)

This fails to apply to my staging-next branch of staging.git.  Can you
rebase and resend?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
