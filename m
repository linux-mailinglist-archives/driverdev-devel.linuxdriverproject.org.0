Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E48626D0544
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Mar 2023 14:50:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F77360BD4;
	Thu, 30 Mar 2023 12:50:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F77360BD4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aIEnKX7ctgrQ; Thu, 30 Mar 2023 12:50:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68EDD60A61;
	Thu, 30 Mar 2023 12:50:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68EDD60A61
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C7C8D1BF39F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:49:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A1CEC4016F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:49:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1CEC4016F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mo6lQ4e0MRLj
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:49:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F00CF40127
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F00CF40127
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:49:58 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D36056205E;
 Thu, 30 Mar 2023 12:49:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3631C433EF;
 Thu, 30 Mar 2023 12:49:56 +0000 (UTC)
Date: Thu, 30 Mar 2023 14:49:54 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Joel Camilo Chang Gonzalez <jcchangg3@gmail.com>
Subject: Re: [PATCH] staging: ks7010: remove unnecesary parentheses
Message-ID: <ZCWFcosyX0PllKLI@kroah.com>
References: <ZCWEM7DCDUEOzBe9@joel-ubuntu-desktop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCWEM7DCDUEOzBe9@joel-ubuntu-desktop>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1680180597;
 bh=biHHuyssIqvarzZV0sp6gOq/JxOLMHTyQileLrPuA10=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=deCbC4nG9F2WI9TIHtqk2YxUx8VlHj3xsmhxGjwmsoLDUa0GvD6fyxoEl7wnHMx7r
 +Lm6eTEXarxF/TpSyb6ZIBJdAZ/ccd7POPPSNt9NfrJkOjLAl+aRRbv8fPsgnqfO8L
 Va16MGY4o89sxDTIz93NIIVe0O6EX52uAa5NoRLs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=deCbC4nG
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
Cc: linux-staging@lists.linux.dev, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 30, 2023 at 08:44:35PM +0800, Joel Camilo Chang Gonzalez wrote:
> Remove parentheses not needed in if statement
> 
> Signed-off-by: Joel Camilo Chang Gonzalez <jcchangg3@gmail.com>
> ---
>  drivers/staging/ks7010/ks_hostif.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index af3825578d85..8bded7e88ce7 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -129,7 +129,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info *ap_info)
>  	size = (ap_info->rsn.size <= RSN_IE_BODY_MAX) ?
>  		ap_info->rsn.size : RSN_IE_BODY_MAX;
>  	if ((ap_info->rsn_mode & RSN_MODE_WPA2) &&
> -	    (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2)) {
> +	    priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) {

If you look in the archives, you will see that I reject this type of
patch all the time.

Also, please use scripts/get_maintainer.pl to determine who to send this
to, you used a very old mailing list address that is long dead.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
