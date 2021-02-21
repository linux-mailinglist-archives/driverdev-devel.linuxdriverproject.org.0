Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E4E320A69
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 14:07:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 768B483145
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 13:07:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n0OJEZhIHAli for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 13:07:36 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id 96DEB82FA9; Sun, 21 Feb 2021 13:07:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6419B82F31;
	Sun, 21 Feb 2021 13:07:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A2211BF951
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:07:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D66D882C4D
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:07:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3HtLLC1TWoKU for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 13:07:06 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id 27ACF82B24; Sun, 21 Feb 2021 13:07:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 014C08291A
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 13:07:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1907164E5F;
 Sun, 21 Feb 2021 13:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613912824;
 bh=EfXpJm2T1aJ20t51Y8CWcBcwXFsjPKmSxEqB6kDBkIA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ziRMZBiJhN30CTB0eNn0PCyL4Tg0W9rd7vNizXHImjOrERmtNjSQlYZHxQSXMJ9fX
 QQQNwDDmlJFGLA8VCL389QiAHFkwi51SGW5zPZzswhQr1xNFdYqQ+mTLV5dstGrNqz
 k53xJEtI9MJoruEb1Jej0Ah/IoxbcMy6phmmqiWw=
Date: Sun, 21 Feb 2021 14:07:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julian Braha <julianbraha@gmail.com>
Subject: Re: [PATCH v1] Staging: rtl8192e: fix kconfig dependency on CRYPTO
Message-ID: <YDJa9n/l7+MIAO8M@kroah.com>
References: <8483722.hVsnvgcxvV@ubuntu-mate-laptop>
 <YDCz/6gQgp07NGw2@kroah.com>
 <4036376.6NakBfNh49@ubuntu-mate-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4036376.6NakBfNh49@ubuntu-mate-laptop>
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

On Sat, Feb 20, 2021 at 12:22:43PM -0500, Julian Braha wrote:
> >From fd949b204eeb6b685bbf5dc9a329c931fcf8b0da Mon Sep 17 00:00:00 2001
> From: Julian Braha <julianbraha@gmail.com>
> Date: Sat, 20 Feb 2021 12:07:30 -0500
> Subject: [PATCH] staging: rtl8192e: fix kconfig dependency on CRYPTO

Why is this all in the body of the email?  Please just use 'git
send-email' to send the patch out, do not attach it all to the message
like this :(

> 
> When RTLLIB_CRYPTO_TKIP is enabled and CRYPTO is disabled,
> Kbuild gives the following warning:
> 
> WARNING: unmet direct dependencies detected for CRYPTO_MICHAEL_MIC
>   Depends on [n]: CRYPTO [=n]
>   Selected by [m]:
>   - RTLLIB_CRYPTO_TKIP [=m] && STAGING [=y] && RTLLIB [=m]
> 
> WARNING: unmet direct dependencies detected for CRYPTO_LIB_ARC4
>   Depends on [n]: CRYPTO [=n]
>   Selected by [m]:
>   - RTLLIB_CRYPTO_TKIP [=m] && STAGING [=y] && RTLLIB [=m]
>   - RTLLIB_CRYPTO_WEP [=m] && STAGING [=y] && RTLLIB [=m]
> 
> This is because RTLLIB_CRYPTO_TKIP selects CRYPTO_MICHAEL_MIC and 
> CRYPTO_LIB_ARC4, without depending on or selecting CRYPTO, 
> despite those config options being subordinate to CRYPTO.

trailing whitespace in your commit log :(

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
