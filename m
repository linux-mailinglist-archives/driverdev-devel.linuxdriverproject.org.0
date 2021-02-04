Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E244030F344
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 13:38:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 46B0687147;
	Thu,  4 Feb 2021 12:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p14uM1KvaIBQ; Thu,  4 Feb 2021 12:38:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AAF2B86187;
	Thu,  4 Feb 2021 12:38:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 98DEB1BF3BD
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 12:38:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 928EE86187
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 12:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iyd+ztUfCd6F for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 12:38:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9193785C8C
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 12:38:14 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A06BB64F3F;
 Thu,  4 Feb 2021 12:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612442294;
 bh=ptP+TrH3YLzcQ6n8ECnHcrml1qaBiMczx4NSoapAXQ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pjmEpZvETDIdivoCPdp3ij1SvU9KH9NBxaL+qPckwMA0C+T+S9OnT+MsLwYCL2Vru
 bNl913ww9NtKkjPeoPax8qw0meF3jO9c530p5pSU+naZVsYe/0F6m0peXWc/6+uVQY
 HI2ziWTVAiQxDtK0EfhMAxODhmLyQ/zEF6lniAq0=
Date: Thu, 4 Feb 2021 13:38:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ayush <ayush@disroot.org>
Subject: Re: [PATCH RFC] staging: comedi: fix coding style issues
Message-ID: <YBvqs/2bQAS18wbK@kroah.com>
References: <20210204121337.32986-1-ayush@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210204121337.32986-1-ayush@disroot.org>
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
Cc: devel@driverdev.osuosl.org, abbotti@mev.co.uk, grandmaster@al2klimov.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 04, 2021 at 05:43:37PM +0530, Ayush wrote:
> fix IF_0 and IF_1 warnings by checkpatch.pl

What is that?

> Signed-off-by: Ayush <ayush@disroot.org>
> ---
> compile tested only.

When you send something with "RFC" that means you do not think it is
good enough to be merged, and so I will just delete it.  Also, you did
not ask a question that you want to be answered, so why is this RFC?

> 
>  drivers/staging/comedi/drivers/dt2801.c | 29 -------------------------
>  1 file changed, 29 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/dt2801.c b/drivers/staging/comedi/drivers/dt2801.c
> index 0d571d817b4e..bb01416084e4 100644
> --- a/drivers/staging/comedi/drivers/dt2801.c
> +++ b/drivers/staging/comedi/drivers/dt2801.c
> @@ -87,17 +87,6 @@
>  #define DT2801_STATUS		1
>  #define DT2801_CMD		1
>  
> -#if 0
> -/* ignore 'defined but not used' warning */
> -static const struct comedi_lrange range_dt2801_ai_pgh_bipolar = {
> -	4, {
> -		BIP_RANGE(10),
> -		BIP_RANGE(5),
> -		BIP_RANGE(2.5),
> -		BIP_RANGE(1.25)
> -	}
> -};
> -#endif

Please leave these alone, it's good documentation.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
