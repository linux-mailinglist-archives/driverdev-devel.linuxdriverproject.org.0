Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4D9319478
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 21:29:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B071875E7;
	Thu, 11 Feb 2021 20:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8B47FXhjV58M; Thu, 11 Feb 2021 20:29:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 62FAF875CB;
	Thu, 11 Feb 2021 20:29:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB0041BF3F6
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 20:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E3913875D1
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 20:29:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rCqOyA+65bmL for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 20:29:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6AB60875CB
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 20:29:13 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1590360238;
 Thu, 11 Feb 2021 20:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613075352;
 bh=8N7onBJ6MH8l7R4/9sQRd0Myu+KRdJMuSZ+/s6LX9hk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gaJZsoosAKGhieJPFOqo0hHVGpZ3f9ctKirm+/FJkBXn1ilmdmuk7Pb5yX22jWqXS
 JG6m2O2V8sNCSA4myQS70huwR3oAOKeXlGibB8oKBA3qb2UBzFG/U0Z8pfcfgXSvFg
 qM9YP1Wb6YZ3QPS6blDaQAQO325ZUKJNHUFwIFK4=
Date: Thu, 11 Feb 2021 21:29:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Pritthijit Nath <pritthijit.nath@icloud.com>
Subject: Re: [PATCH] staging: vt6656: Fixed issue with alignment in rf.c
Message-ID: <YCWTlWj4KHT6Okq/@kroah.com>
References: <20210211152426.10008-1-pritthijit.nath@icloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210211152426.10008-1-pritthijit.nath@icloud.com>
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
Cc: tvboxspy@gmail.com, devel@driverdev.osuosl.org, oscar.carter@gmx.com,
 forest@alittletooquiet.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 08:54:26PM +0530, Pritthijit Nath wrote:
> This change fixes a checkpatch CHECK style issue for "Alignment should match open parenthesis".
> 
> Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
> ---
>  drivers/staging/vt6656/rf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
> index 5b8da06e3916..bcd4d467e03a 100644
> --- a/drivers/staging/vt6656/rf.c
> +++ b/drivers/staging/vt6656/rf.c
> @@ -687,7 +687,7 @@ static int vnt_rf_set_txpower(struct vnt_private *priv, u8 power,
>  
>  			if (hw_value < ARRAY_SIZE(vt3226d0_lo_current_table)) {
>  				ret = vnt_rf_write_embedded(priv,
> -					vt3226d0_lo_current_table[hw_value]);
> +							    vt3226d0_lo_current_table[hw_value]);
>  				if (ret)
>  					return ret;
>  			}
> -- 
> 2.25.1

Please run this change, with the changelog above, through
checkpatch.pl, fix that, and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
