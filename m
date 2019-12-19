Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90901125DC4
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Dec 2019 10:35:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A499A231A5;
	Thu, 19 Dec 2019 09:35:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YROQ8ub1A+-c; Thu, 19 Dec 2019 09:35:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9C29223039;
	Thu, 19 Dec 2019 09:35:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5355C1BF422
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 09:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 30789885F6
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 09:35:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id URcbRgSSPGYp for <devel@linuxdriverproject.org>;
 Thu, 19 Dec 2019 09:35:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 378FD885F4
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 09:35:07 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58DA42467F;
 Thu, 19 Dec 2019 09:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576748106;
 bh=lzp1HN2f5DdnttpS7dgrg/0gOfedhdb2VhqMZkrhDjg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sOFJmpkN7vgml3UaRrTM6bC0PDdH26Plkk7ZvLMW+uGaRmVSejxFr5SKP1COPqTCi
 UuW+GOd092mTgyH4g2BzrrIs/qqFhAZOV62ihMeU6zC7g0DoRuGs3hk0cvvLcel93F
 DT/D4RE0d8aTaSOVDSJUq44VmJdUZEvslZ1X/bnM=
Date: Thu, 19 Dec 2019 10:35:04 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Simran Sandhu <f20171454@hyderabad.bits-pilani.ac.in>
Subject: Re: [PATCH 3/3] Staging: sm750fb: sm750.h:Fixed Coding Style Issue
Message-ID: <20191219093504.GB1198515@kroah.com>
References: <20191219090553.13243-1-f20171454@hyderabad.bits-pilani.ac.in>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219090553.13243-1-f20171454@hyderabad.bits-pilani.ac.in>
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 sudipm.mukherjee@gmail.comm, teddy.wang@siliconmotion.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 19, 2019 at 02:35:53PM +0530, Simran Sandhu wrote:
> Fixed the checkpath error: function definition arguments
> should also have identifier names
> 
> Signed-of-by: Simran Sandhu <f20171454@hyderabad.bits-pilani.ac.in>
> ---
>  drivers/staging/sm750fb/sm750.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
> index ce90adcb449d..cf986bad7210 100644
> --- a/drivers/staging/sm750fb/sm750.h
> +++ b/drivers/staging/sm750fb/sm750.h
> @@ -66,9 +66,9 @@ struct lynx_accel {
>  						u32, u32, u32, u32,
>  						u32, u32, u32, u32);
>  
> -	int (*de_imageblit)(struct lynx_accel *, const char *, u32, u32, u32, u32,
> -							       u32, u32, u32, u32,
> -							       u32, u32, u32, u32);
> +	int (*de_imageblit)(struct lynx_accel *A, const char *B, u32 C, u32 D,
> +		       						u32 E, u32 F, u32 G, u32 H, u32 I,
> +							       	u32 J, u32 K, u32 L, u32 M, u32 N);
>  

You just caused another coding style violation with this one :(

Always run your patches though checkpatch.pl to ensure you do not add
new problems when trying to fix up things.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
