Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5DD31F771
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 11:40:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45C4760701
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 10:40:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s1ovjgPSzvgS for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 10:40:47 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 2D5F5606FA; Fri, 19 Feb 2021 10:40:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E65E96069A;
	Fri, 19 Feb 2021 10:40:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C3E2A1BF2CC
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:40:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD25C872F3
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:40:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lWE-miSLE-FM for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 10:40:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1FE2F872AC
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 10:40:14 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A173264EB7;
 Fri, 19 Feb 2021 10:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613731213;
 bh=RErC9QubHxzQe6XsyUGu3rb6BZK6OYuteFLCp8HvQek=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vGK43yxv3kz5h9SA9UZG1tcj6GOBLFZeMtjfjuCFnDzFpb440fVwmDdNpouB9mXHv
 s+c6SMKum2sA6x1Y97jcipBUrupBIMNL6Sp2gZC5vI19/ZWsFE/dxlouxKr7dxATFL
 E2pKQNs/XNptXI9blNNzv3OY8wdQDrm6c1UZ63wY=
Date: Fri, 19 Feb 2021 11:40:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Selvakumar Elangovan <selvakumar16197@gmail.com>
Subject: Re: [PATCH] staging: vt6656: fixed a CamelCase coding style issue.
Message-ID: <YC+Vii75qR3Mz48k@kroah.com>
References: <20210219095835.9687-1-selvakumar16197@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219095835.9687-1-selvakumar16197@gmail.com>
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
Cc: devel@driverdev.osuosl.org, oscar.carter@gmx.com, tvboxspy@gmail.com,
 linux-kernel@vger.kernel.org, forest@alittletooquiet.net,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 19, 2021 at 03:28:35PM +0530, Selvakumar Elangovan wrote:
> This patch renames CamelCase macros uVar and uModulo into u_var and
> u_module in device.h
> 
> This issue was reported by checkpatch.pl
> 
> Signed-off-by: Selvakumar Elangovan <selvakumar16197@gmail.com>
> ---
>  drivers/staging/vt6656/device.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
> index 947530fefe94..6615d356f74a 100644
> --- a/drivers/staging/vt6656/device.h
> +++ b/drivers/staging/vt6656/device.h
> @@ -385,11 +385,11 @@ struct vnt_private {
>  	struct ieee80211_low_level_stats low_stats;
>  };
>  
> -#define ADD_ONE_WITH_WRAP_AROUND(uVar, uModulo) {	\
> -	if ((uVar) >= ((uModulo) - 1))			\
> -		(uVar) = 0;				\
> +#define ADD_ONE_WITH_WRAP_AROUND(u_var, u_modulo) {	\

"u_" does not really make any sense, right?

Just use "var" and "modulo" please.

But first, why is this needed at all?  Isn't there an in-kernel function
that should be used instead?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
