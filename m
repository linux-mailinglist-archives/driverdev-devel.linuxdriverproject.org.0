Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F1831F806
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 12:17:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1B5EA8710D;
	Fri, 19 Feb 2021 11:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hGkhxq1Jj6Qv; Fri, 19 Feb 2021 11:17:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9CFAD870B3;
	Fri, 19 Feb 2021 11:17:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 76F6B1BF2C2
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 11:17:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 72CC1870C1
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 11:17:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wNicXy4sRYQU for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 11:17:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D74BF870A3
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 11:17:49 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9CA0864E33;
 Fri, 19 Feb 2021 11:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613733469;
 bh=nsdUiJVetFBT68yde/b+f/aVa7J7zRanGF/7qXn5o0U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fv5L7wpgDHHvvBnnJsrDntdfcMAdCzx0yrs6RYoyGtdbcxD8ggulpXwQeH5ZZ3vDS
 gpJ+EYTp8as8+0LH62ssuoz0FuAVNmLqJcVA5iNpKnOCU86xyhWfP+Ry5sHOOUA1ON
 HKNyytXUbEOn2zd09EMN2KrihQj6vwyHvtBWWesw=
Date: Fri, 19 Feb 2021 12:17:46 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Du Cheng <ducheng2@gmail.com>
Subject: Re: [PATCH v3 2/3] staging: rtl8192u: fixed coding style of
 r8190_rtl8256.c
Message-ID: <YC+eWo09u4pTlVRp@kroah.com>
References: <20210219110755.4993-1-ducheng2@gmail.com>
 <20210219110755.4993-2-ducheng2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219110755.4993-2-ducheng2@gmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 19, 2021 at 07:07:54PM +0800, Du Cheng wrote:
> use MACRO __func__ instead of "phy_rf8256_config_para_file" for RT_TRACE()
> inside phy_rf8256_config_para_file(), reported by scripts/checkpatch.pl.
> 
> Signed-off-by: Du Cheng <ducheng2@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8190_rtl8256.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Why isn't this part of patch 1/3?  It does the same thing, right?

Please fix up and resend the series.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
