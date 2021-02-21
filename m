Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7733320A60
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 14:06:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89ED7870D0;
	Sun, 21 Feb 2021 13:05:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sIgrs-yXcdc0; Sun, 21 Feb 2021 13:05:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 17CF286FC1;
	Sun, 21 Feb 2021 13:05:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2D2B1BF951
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:05:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 90F516F478
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:05:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 125bP-1cuOqn for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 13:05:53 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id E5AC46F4A8; Sun, 21 Feb 2021 13:05:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D70A06F478
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 13:05:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E155D60238;
 Sun, 21 Feb 2021 13:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613912752;
 bh=6MArVc78lof4Goy/3AP1erD3HDYrDJ0RUeIzBlh0BR8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Fo/rGO3C9cdBKF63QHhJP8Ubf6EtOJ4pUJ2qvyvNp8NNUp1JC0/ruLKviBnpFFj+f
 IZmvU4VA67sFZBN4+NaHm5uHTBn2j8vanbLyCg+xcErw5ZtPF2Wpuqg2Aacpfj55E6
 C24Y5x7zgMbjuAQQ4Vy5pjl88Xtc2JzrBB8FotWE=
Date: Sun, 21 Feb 2021 14:05:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amrit Khera <amritkhera98@gmail.com>
Subject: Re: [PATCH] staging: wimax: Fix block comment style issue in stack.c
Message-ID: <YDJarRhaoA/WFIyd@kroah.com>
References: <20210219202524.14642-1-amritkhera98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219202524.14642-1-amritkhera98@gmail.com>
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de, linux-kernel@vger.kernel.org,
 mail@anirudhrb.com, kuba@kernel.org, lee.jones@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Feb 20, 2021 at 01:55:25AM +0530, Amrit Khera wrote:
> This change fixes a checkpatch warning for "Block comments
> use * on subsequent lines".
> 
> Signed-off-by: Amrit Khera <amritkhera98@gmail.com>
> ---
>  drivers/staging/wimax/stack.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/wimax/stack.c b/drivers/staging/wimax/stack.c
> index ace24a6dfd2d..781426000015 100644
> --- a/drivers/staging/wimax/stack.c
> +++ b/drivers/staging/wimax/stack.c
> @@ -62,11 +62,12 @@ MODULE_PARM_DESC(debug,
>   * close to where the data is generated.
>   */
>  /*
> -static const struct nla_policy wimax_gnl_re_status_change[WIMAX_GNL_ATTR_MAX + 1] = {
> -	[WIMAX_GNL_STCH_STATE_OLD] = { .type = NLA_U8 },
> -	[WIMAX_GNL_STCH_STATE_NEW] = { .type = NLA_U8 },
> -};
> -*/
> + * static const struct nla_policy
> + * wimax_gnl_re_status_change[WIMAX_GNL_ATTR_MAX + 1] = {
> + *	[WIMAX_GNL_STCH_STATE_OLD] = { .type = NLA_U8 },
> + *	[WIMAX_GNL_STCH_STATE_NEW] = { .type = NLA_U8 },
> + * };
> + */

Why not just remove this variable entirely?  It's obviously not needed,
so just delete the thing.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
