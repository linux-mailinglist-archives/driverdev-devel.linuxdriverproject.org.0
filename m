Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB0712128
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 May 2019 19:39:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5EBC0881E1;
	Thu,  2 May 2019 17:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wqdwCK+Kq68O; Thu,  2 May 2019 17:39:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C7CDB87C66;
	Thu,  2 May 2019 17:39:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 754531BF968
 for <devel@linuxdriverproject.org>; Thu,  2 May 2019 17:39:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7102A30DFC
 for <devel@linuxdriverproject.org>; Thu,  2 May 2019 17:39:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rkyIsphJR1hf for <devel@linuxdriverproject.org>;
 Thu,  2 May 2019 17:39:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 98CBE30C5C
 for <devel@driverdev.osuosl.org>; Thu,  2 May 2019 17:39:22 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E8CB920652;
 Thu,  2 May 2019 17:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556818762;
 bh=pi7lOUBAQB9xKDXZB87/kDUBWEnbEXpxofFy5jrI20w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ueM4ebg5htP06iOobY+ZZ0t0UuieLbUnWR8EYWcvbQKpNyfZqKWF9vEkTR9hWhp/T
 3+8942Z4lASCPoGQhcAwXyX5pwEYxuVPL/INObpIPYOBCmaE56l14QwSujXg1TRCBm
 DQbfmOPUPSo07xebi91eDK6h5GADsEtnNgpm5Y2Y=
Date: Thu, 2 May 2019 19:39:20 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Eugeniu Rosca <erosca@de.adit-jv.com>
Subject: Re: [PATCH] staging: most: cdev: fix chrdev_region leak in mod_exit
Message-ID: <20190502173920.GA14304@kroah.com>
References: <20190424192343.15418-1-erosca@de.adit-jv.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190424192343.15418-1-erosca@de.adit-jv.com>
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
Cc: devel@driverdev.osuosl.org, Eugeniu Rosca <roscaeugeniu@gmail.com>,
 Takashi Iwai <tiwai@suse.de>, linux-kernel@vger.kernel.org,
 Marcin Ciupak <marcin.s.ciupak@gmail.com>,
 Suresh Udipi <sudipi@jp.adit-jv.com>,
 Colin Ian King <colin.king@canonical.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 24, 2019 at 09:23:43PM +0200, Eugeniu Rosca wrote:
> From: Suresh Udipi <sudipi@jp.adit-jv.com>
> 
> It looks like v4.18-rc1 commit [0] which upstreams mld-1.8.0
> commit [1] missed to fix the memory leak in mod_exit function.
> 
> Do it now.
> 
> [0] aba258b7310167 ("staging: most: cdev: fix chrdev_region leak")
> [1] https://github.com/microchip-ais/linux/commit/a2d8f7ae7ea381
>     ("staging: most: cdev: fix leak for chrdev_region")
> 
> Signed-off-by: Suresh Udipi <sudipi@jp.adit-jv.com>
> Signed-off-by: Eugeniu Rosca <erosca@de.adit-jv.com>
> Acked-by: Christian Gromm <christian.gromm@microchip.com>

In the future, please use the "correct" way to mark a fixup patch.  For
this, it would be:
Fixes: aba258b73101 ("staging: most: cdev: fix chrdev_region leak")

I'll go add it, and the needed stable tag to the patch when applying it.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
