Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D519C263C6
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 14:27:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 617AD30AA7;
	Wed, 22 May 2019 12:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1PKAxwW2+cNJ; Wed, 22 May 2019 12:27:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5CF233059A;
	Wed, 22 May 2019 12:27:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F9701BF4D8
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:27:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8C78A87917
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3X7WxvCn38cR for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:27:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 30A7186003
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 12:27:17 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 841F42173C;
 Wed, 22 May 2019 12:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558528037;
 bh=+GF+6gGeAQLWS1PYEAHsBHfgN/elXRl0cT8VNN1Tgx0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=syKJ/UmP+vT0+IRYzgr2Wo3ixVdN4xYncKvArjFwyMD41phUE0QTjx/8ziCeFWhLv
 g930YWcEFQZqxD42eMd5igKRZmDQhNr5qNugSAym1pFDD/A/UMU0jDNWVuGRilv1O0
 Yh+I/8tDVW7i+/diu55IaQd/PoyJwn/kp/HZbLkE=
Date: Wed, 22 May 2019 14:27:14 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geordan Neukum <gneukum1@gmail.com>
Subject: Re: [PATCH 1/6] staging: kpc2000: make kconfig symbol 'KPC2000'
 select dependencies
Message-ID: <20190522122714.GA2270@kroah.com>
References: <cover.1558526487.git.gneukum1@gmail.com>
 <932843299b814f3a22dd176771b46be14ceefeea.1558526487.git.gneukum1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <932843299b814f3a22dd176771b46be14ceefeea.1558526487.git.gneukum1@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 22, 2019 at 12:13:57PM +0000, Geordan Neukum wrote:
> The kpc2000 core makes calls against functions which are conditionally
> exported upon the kconfig symbols 'MFD_CORE' and 'UIO' being selected
> Therefore, in order to guarantee correct compilation, the 'KPC2000'
> kconfig symbol (which brings in that code) must explicitly select its
> hard dependencies.
> 
> Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
> ---
>  drivers/staging/kpc2000/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/kpc2000/Kconfig b/drivers/staging/kpc2000/Kconfig
> index fb5922928f47..8992dc67ff37 100644
> --- a/drivers/staging/kpc2000/Kconfig
> +++ b/drivers/staging/kpc2000/Kconfig
> @@ -3,6 +3,8 @@
>  config KPC2000
>  	bool "Daktronics KPC Device support"
>  	depends on PCI
> +	select MFD_CORE
> +	select UIO

depends on is better than select.  There's a change to depend on UIO for
this code already in my -linus branch which will show up in Linus's tree
in a week or so.

Are you sure we need MFD_CORE as well for this code?  Why hasn't that
been seen on any build errors?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
