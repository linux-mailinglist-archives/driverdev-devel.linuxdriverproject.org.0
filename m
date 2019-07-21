Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A38E66F265
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Jul 2019 11:29:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2096420438;
	Sun, 21 Jul 2019 09:29:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BsiwX0dRXJMY; Sun, 21 Jul 2019 09:29:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 183DD20404;
	Sun, 21 Jul 2019 09:29:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B14E71BF5A8
 for <devel@linuxdriverproject.org>; Sun, 21 Jul 2019 09:29:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AE35C8739A
 for <devel@linuxdriverproject.org>; Sun, 21 Jul 2019 09:29:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZvZc5-ievILh for <devel@linuxdriverproject.org>;
 Sun, 21 Jul 2019 09:29:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 399FD8737E
 for <devel@driverdev.osuosl.org>; Sun, 21 Jul 2019 09:29:24 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8063320838;
 Sun, 21 Jul 2019 09:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563701364;
 bh=XFXz06/TX2cnOE0rdgo0TH18QiPU5z1ph+93rEumalg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IxxC4BhY5LKAiDf05Jar/SyU9EZw5zBrSdCx9u2JnCZdi5kNav1o/gM4u4GvZY1gk
 s//UloopvRmkNes8HoBgxkw53eCleAq+vpJCzUqfEsZjFIizl5EeTi4JeHQTEEGeiD
 27LTrRAkW47oXZtWisrSeQko+J5tPjXaFwVUsXDM=
Date: Sun, 21 Jul 2019 11:29:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hennie Muller <hm@bitlabs.co.za>
Subject: Re: [PATCH] staging/wlan-ng: Fixing "line over 80 characters"
 warnings.
Message-ID: <20190721092919.GA9188@kroah.com>
References: <20190721091326.7363-1-hm@bitlabs.co.za>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190721091326.7363-1-hm@bitlabs.co.za>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Tim Collier <osdevtc@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 21, 2019 at 11:13:26AM +0200, Hennie Muller wrote:
> Reindent multiline function calls to be tab aligned, instead of open brace
> aligned. This fixes multiple "WARNING: line over 80 characters" generated
> by checkpatch.
> 
> Signed-off-by: Hennie Muller <hm@bitlabs.co.za>
> ---
>  drivers/staging/wlan-ng/cfg80211.c    |  55 ++---
>  drivers/staging/wlan-ng/hfa384x_usb.c | 282 +++++++++++++-------------
>  drivers/staging/wlan-ng/p80211conv.c  |  48 +++--
>  drivers/staging/wlan-ng/p80211req.c   |   6 +-
>  drivers/staging/wlan-ng/prism2fw.c    | 101 +++++----
>  drivers/staging/wlan-ng/prism2mgmt.c  | 170 ++++++++--------
>  drivers/staging/wlan-ng/prism2mib.c   |  14 +-
>  drivers/staging/wlan-ng/prism2sta.c   | 282 +++++++++++++-------------
>  drivers/staging/wlan-ng/prism2usb.c   |  13 +-
>  9 files changed, 494 insertions(+), 477 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index eee1998c4b18..c69fb83267ef 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -130,8 +130,8 @@ static int prism2_change_virtual_intf(struct wiphy *wiphy,
>  
>  	/* Set Operation mode to the PORT TYPE RID */
>  	result = prism2_domibset_uint32(wlandev,
> -					DIDMIB_P2_STATIC_CNFPORTTYPE,
> -					data);
> +			DIDMIB_P2_STATIC_CNFPORTTYPE,
> +			data);

This then violates another checkpatch warning, so you can't win :(

Just leave it as-is, it's fine, right?  Coding styles are there to make
things easy to read and understand, and the code is fine like this.

So don't move arguments to the left of the '(' character on the line
above please.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
