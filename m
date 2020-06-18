Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 024EE1FECCE
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 09:48:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03A7886B60;
	Thu, 18 Jun 2020 07:48:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dZ0AW3cElDdW; Thu, 18 Jun 2020 07:48:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFFF586A3D;
	Thu, 18 Jun 2020 07:47:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 418451BF37E
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 07:47:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 38A2786AE3
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 07:47:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m1oyvQSsLQfR for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 07:47:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 86ABF86A3D
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 07:47:57 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD2042166E;
 Thu, 18 Jun 2020 07:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592466477;
 bh=uN0TGa/T7pPRO9EFXsTyPP8pb9QfsOxNueiaH6cBEEI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tLXMoTqzkPPPNMphukDIi+S1xDuWNkqoJpP6PiqTa5/VBfFNnbGTRRdlUFkIZyKrc
 yAggmB0Rf6lkOcF3bzxf4MAld23WB8IsJ7FyWb2H7Qjgk1mmrKf4YqNB+U4WhUSl76
 8qEzGi9pYaojDeglSgKCaAVB73qv9Y0sTGGJ7BKM=
Date: Thu, 18 Jun 2020 09:47:50 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Rodolfo C. Villordo" <rodolfovillordo@gmail.com>
Subject: Re: [PATCH] staging: gasket: replace symbolic permissions
Message-ID: <20200618074750.GA186463@kroah.com>
References: <20200601005240.6315-1-rodolfovillordo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601005240.6315-1-rodolfovillordo@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Richard Yeh <rcy@google.com>,
 Todd Poynor <toddpoynor@google.com>, Rob Springer <rspringer@google.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 01, 2020 at 12:52:40AM +0000, Rodolfo C. Villordo wrote:
> WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
> +               .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> warning detected by checkpatch.pl
> 
> Signed-off-by: Rodolfo C. Villordo <rodolfovillordo@gmail.com>
> ---
>  drivers/staging/gasket/gasket_sysfs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
> index ab5aa351d555..d5e167dfbe76 100644
> --- a/drivers/staging/gasket/gasket_sysfs.h
> +++ b/drivers/staging/gasket/gasket_sysfs.h
> @@ -71,7 +71,7 @@ struct gasket_sysfs_attribute {
>  
>  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
>  	{                                                                      \
> -		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> +		.attr = __ATTR(_name, 0444, _show_function, NULL),          \

What about using __ATTR_RO() instead?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
