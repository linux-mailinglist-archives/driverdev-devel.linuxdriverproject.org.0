Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB4430D84C
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 12:17:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDF8E870FB;
	Wed,  3 Feb 2021 11:17:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hn7pLhFVVbRd; Wed,  3 Feb 2021 11:17:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2EA69870DF;
	Wed,  3 Feb 2021 11:17:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 162861BF386
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 11:17:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 12A5F8708C
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 11:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id szLwcXvAmW4h for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 11:17:28 +0000 (UTC)
X-Greylist: delayed 00:07:48 by SQLgrey-1.7.6
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.142])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2E742870D4
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 11:17:28 +0000 (UTC)
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id EC03B2400FB
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 12:09:37 +0100 (CET)
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4DVzTr4tnqz6tm5;
 Wed,  3 Feb 2021 12:09:36 +0100 (CET)
Date: Wed, 3 Feb 2021 12:09:34 +0100 (CET)
From: Marc Dietrich <marvin24@gmx.de>
X-X-Sender: lucile@mbpdelurezlocal.fritz.box
To: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Subject: Re: [PATCH 05/13] staging: nvec: Switch from strlcpy to strscpy
In-Reply-To: <20210131172838.146706-6-memxor@gmail.com>
Message-ID: <alpine.OSX.2.23.453.2102031207120.23814@mbpdelurezlocal.fritz.box>
References: <20210131172838.146706-1-memxor@gmail.com>
 <20210131172838.146706-6-memxor@gmail.com>
User-Agent: Alpine 2.23 (OSX 453 2020-06-18)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-tegra@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Kumar,

On Sun, 31 Jan 2021, Kumar Kartikeya Dwivedi wrote:

> strlcpy is marked as deprecated in Documentation/process/deprecated.rst,
> and there is no functional difference when the caller expects truncation
> (when not checking the return value). strscpy is relatively better as it
> also avoids scanning the whole source string.
>
> This silences the related checkpatch warnings from:
> 5dbdb2d87c29 ("checkpatch: prefer strscpy to strlcpy")
>
> Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> ---
> drivers/staging/nvec/nvec_ps2.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/nvec/nvec_ps2.c b/drivers/staging/nvec/nvec_ps2.c
> index 45db29262..157009015 100644
> --- a/drivers/staging/nvec/nvec_ps2.c
> +++ b/drivers/staging/nvec/nvec_ps2.c
> @@ -112,8 +112,8 @@ static int nvec_mouse_probe(struct platform_device *pdev)
> 	ser_dev->start = ps2_startstreaming;
> 	ser_dev->stop = ps2_stopstreaming;
>
> -	strlcpy(ser_dev->name, "nvec mouse", sizeof(ser_dev->name));
> -	strlcpy(ser_dev->phys, "nvec", sizeof(ser_dev->phys));
> +	strscpy(ser_dev->name, "nvec mouse", sizeof(ser_dev->name));
> +	strscpy(ser_dev->phys, "nvec", sizeof(ser_dev->phys));

lgtm, so

Acked-by: Marc Dietrich <marvin24@gmx.de>

Thanks!

Marc
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
