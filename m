Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 013E81D321E
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 16:06:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 30969270EA;
	Thu, 14 May 2020 14:06:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z+BNYSRI2e+O; Thu, 14 May 2020 14:06:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A524026FC9;
	Thu, 14 May 2020 14:06:47 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A33421BF3D6
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 14:06:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9FD5388AA6
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 14:06:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VQK3dgDFkRd0
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 14:06:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E64A388A8F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 14:06:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E1A620671;
 Thu, 14 May 2020 14:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589465199;
 bh=B/i/v1+v8U/tY4KYXpS/Ecj1mgXNzLqiWTHuTkx0BD0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H5D0kl/oJNKD3KyUuGRpBd6qSYcWxxszA8HwtLsCfN5FT4v0EUdng3HaVXu/Cq1ix
 2xbUgzB8J0t9Q0qIBVEekRMDcYNlErNCLn311Md3+QaSaF2uwz7nZguENBH1bo0AX/
 ISx7l52cYY5N8mR97U4ERH/HiajWJB3l5VqUSL/Y=
Date: Thu, 14 May 2020 16:06:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH 3/7] staging: most: usb: check number of reported endpoints
Message-ID: <20200514140637.GE2581983@kroah.com>
References: <1589463989-30029-1-git-send-email-christian.gromm@microchip.com>
 <1589463989-30029-4-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589463989-30029-4-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 14, 2020 at 03:46:25PM +0200, Christian Gromm wrote:
> This patch checks the number of endpoints reported by the USB
> interface descriptor and throws an error if the number exceeds
> MAX_NUM_ENDPOINTS.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/staging/most/usb/usb.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)

This is a bugfix that should get backported to stable kernels, right?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
