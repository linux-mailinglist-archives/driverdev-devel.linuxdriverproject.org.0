Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CBA22DD36
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 10:26:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 756A387BB8;
	Sun, 26 Jul 2020 08:26:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uR7Pp6J9NbdC; Sun, 26 Jul 2020 08:26:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 574E687B5E;
	Sun, 26 Jul 2020 08:26:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C30A51BF568
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 08:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9CDE92049C
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 08:26:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id boyFWePlIUN9 for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 08:26:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0F5D72037E
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 08:26:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F29E206F6;
 Sun, 26 Jul 2020 08:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595751998;
 bh=+uk7MIIMPHgiZ/Vvk6Ik8YDGvxAcPrqQ5e2EgEoj2w4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DlkvWHEm2ut0XyRhMxCTFTHz9gNwFUG/DlNUO5f5kYbij/7FmUpn5WRyl5HM7Ecb1
 EVUbSCbn6cweIcTxCAqhvV3d2Ba6DM5HJkdUM4Hdj7rDE+q77gpqQlPzh5FhJ2WtZr
 n90JshAE4sA1aPKtXYBr9qnwLR6YaQS3kt2GBW+k=
Date: Sun, 26 Jul 2020 10:26:36 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: include: Fix coding style errors
Message-ID: <20200726082636.GA447282@kroah.com>
References: <20200726080215.41501-1-aditya.jainadityajain.jain@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200726080215.41501-1-aditya.jainadityajain.jain@gmail.com>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 26, 2020 at 01:32:15PM +0530, Aditya Jain wrote:
> Fixing ERROR: "foo *	bar" should be "foo *bar" in hal_phy_cfg.h
> as reported by checkpatch.pl
> 
> Signed-off-by: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
> ---
>  .../staging/rtl8723bs/include/hal_phy_cfg.h    | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
> index 419ddb0733aa..fd5f377bad4f 100644
> --- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
> +++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
> @@ -42,7 +42,7 @@ u32 	Data
>  
>  u32
>  PHY_QueryRFReg_8723B(
> -struct adapter *		Adapter,
> +struct adapter 		*Adapter,
>  u8 		eRFPath,
>  u32 			RegAddr,
>  u32 			BitMask

Ick, these are all horrid.  How about just making these all on a single
line like most functions have them instead of this one cleanup?

Same for the other changes you made in this file.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
