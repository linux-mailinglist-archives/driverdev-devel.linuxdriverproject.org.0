Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C71136D4E
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jan 2020 13:48:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9318E86B4E;
	Fri, 10 Jan 2020 12:48:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SFQYl7Qql3UF; Fri, 10 Jan 2020 12:48:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 433C186B39;
	Fri, 10 Jan 2020 12:48:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3A4EB1BF2EF
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 12:48:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 36A2A88183
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 12:48:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J708LxyjVH7C for <devel@linuxdriverproject.org>;
 Fri, 10 Jan 2020 12:48:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8046587F71
 for <devel@driverdev.osuosl.org>; Fri, 10 Jan 2020 12:48:34 +0000 (UTC)
Received: from localhost (83-84-126-242.cable.dynamic.v4.ziggo.nl
 [83.84.126.242])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D6AD220721;
 Fri, 10 Jan 2020 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578660514;
 bh=PrOwLV4tQ+lI1OTRTBOIvMq4rzUtK4hs298T1zbtacE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SqTugStLNX+pRuf7gCMwoCYvksuMTTptT58RIF20ZMu0BuGuSKdAgAOCm2EpLitWS
 vOKTErvPU5Vix3nOBAjLY2i/QSuzMn9A8/SjgDVkeP91isX2HSNZxtKNab0JneFEDr
 0PKqLX4fOdY06u/Xr50selEkwSjtOc5hITYJORCc=
Date: Fri, 10 Jan 2020 13:48:32 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander X Sverdlin <alexander.sverdlin@nokia.com>
Subject: Re: [PATCH] staging: octeon: Drop on uncorrectable alignment or FCS
 error
Message-ID: <20200110124832.GA1090147@kroah.com>
References: <20200108161042.253618-1-alexander.sverdlin@nokia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108161042.253618-1-alexander.sverdlin@nokia.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Ralf Baechle <ralf@linux-mips.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 08, 2020 at 05:10:42PM +0100, Alexander X Sverdlin wrote:
> From: Alexander Sverdlin <alexander.sverdlin@nokia.com>
> 
> Currently in case of alignment or FCS error if the packet cannot be
> corrected it's still not dropped. Report the error properly and drop the
> packet while making the code around a little bit more readable.
> 
> Fixes: 80ff0fd3ab ("Staging: Add octeon-ethernet driver files.")
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@nokia.com>
> ---
>  drivers/staging/octeon/ethernet-rx.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)

This driver is now deleted from the tree, sorry.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
