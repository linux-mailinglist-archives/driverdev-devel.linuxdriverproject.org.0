Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1678A5B66F
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:11:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A53B287A33;
	Mon,  1 Jul 2019 08:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TmhcIuwx38j2; Mon,  1 Jul 2019 08:11:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5EC887A15;
	Mon,  1 Jul 2019 08:11:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E52501BF5A0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:49:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E2F9B20198
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:49:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hHlDPZMqc3vf for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 06:49:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8D8921FB6B
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 06:49:47 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEF362145D;
 Mon,  1 Jul 2019 06:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561963787;
 bh=wrSf4o1WdpgKsQMTgK0KMXYEnmfNXIMdPisDKV6pGzg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ezMbsk5ebL4ImCvg07v/tY0LfLDdTdOh61dMN+pVJpFdMultHlCIlFq9tZRte6ebs
 3735hBX9IZjMzzv6oLmtc3FZBdG7rhtpwn8bBdAN4QGnldiCuUYdCOBWEstZJuwjZR
 wX29Zc+/yGkGz77R3I2LQviFltehEs9k1dSVPBYo=
Date: Mon, 1 Jul 2019 08:49:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 1/3] staging: comedi: Remove function clk_sce()
Message-ID: <20190701064945.GB12135@kroah.com>
References: <20190626065404.3330-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626065404.3330-1-nishkadg.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, abboti@mev.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 26, 2019 at 12:24:02PM +0530, Nishka Dasgupta wrote:
> Remove function clk_sce as all it does is call clk_gat_sce.
> Modify call site of clk_sce to call clk_gat_sce instead.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/comedi/drivers/amplc_dio200_common.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)

Please put the driver name in the subject, this one would be:
	staging: comedi: amplc_dio200: Remove...

Same for the other 2 patches in this series.

Please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
