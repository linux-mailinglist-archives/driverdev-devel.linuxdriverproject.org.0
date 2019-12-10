Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 068FA118B61
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 15:45:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 458B486AAC;
	Tue, 10 Dec 2019 14:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kNSEBydjl3fK; Tue, 10 Dec 2019 14:45:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9FD0486A8F;
	Tue, 10 Dec 2019 14:45:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DDB0B1BF3AB
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 14:45:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BDEFC877CE
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 14:45:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lOfqAtxp+rme for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 14:45:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 43F4887866
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 14:45:33 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AFE520637;
 Tue, 10 Dec 2019 14:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575989133;
 bh=wa7yJNfjIp5sDx/0cLfRUnYkDGTvPydEo/wUmksPNeo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s3p9V088l5UmQvrRyPLPOrKWzwU/zsvbdfsKo4WnpFFD4Mq2lkzl4d4DYaE/fEAmI
 /uziwZkVLDE5olHJsXW85E734u/ocjpb4YuCrcs0NvYbH5OgDTr2DtZdnG1Rf7hFCc
 A2esX/iIwdlZ/XqpMe7IdPheuv8Za9MRufEp/Rds=
Date: Tue, 10 Dec 2019 15:45:30 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julian Preis <julian.preis@fau.de>
Subject: Re: [PATCH] drivers/staging/exfat: Fix spelling mistakes
Message-ID: <20191210144530.GA3975980@kroah.com>
References: <n>
 <20191210140430.5000-1-julian.preis@fau.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210140430.5000-1-julian.preis@fau.de>
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
Cc: devel@driverdev.osuosl.org, Johannes Weidner <johannes.weidner@fau.de>,
 valdis.kletnieks@vt.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 10, 2019 at 03:04:30PM +0100, Julian Preis wrote:
> Fix spelling mistakes in exfat_core.c and exfat_super.c.
> 
> Co-developed-by: Johannes Weidner <johannes.weidner@fau.de>
> Signed-off-by: Johannes Weidner <johannes.weidner@fau.de>
> Signed-off-by: Julian Preis <julian.preis@fau.de>
> ---
>  drivers/staging/exfat/exfat_core.c  |  6 +++---
>  drivers/staging/exfat/exfat_super.c | 10 +++++-----
>  2 files changed, 8 insertions(+), 8 deletions(-)


What changed from the previous version(s) of this patch?  Always
properly version your patch and describe what changed from the previous
version below the --- line as is documented.

Why the odd email threading?

And why are you not using the output of get_maintainer.pl to figure out
who to cc:?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
