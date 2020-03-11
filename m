Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C19FB181773
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 13:05:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D066B88754;
	Wed, 11 Mar 2020 12:05:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UOPxY1gIrSKE; Wed, 11 Mar 2020 12:05:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E00C88055;
	Wed, 11 Mar 2020 12:05:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA9631BF599
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 12:05:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A684286591
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 12:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lE_1an2YE7v3 for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 12:05:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2DFCA86505
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 12:05:52 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 785F421655;
 Wed, 11 Mar 2020 12:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583928352;
 bh=BPHaWjg6587a5T0Mvx0zEB0ljqLxgY6uyCgYbogdwXc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dOzItMQyR9PScuscKHGb1Bmz4d3c4WWbrd81LPFhy6i32RGNUfU2APundDziWZIl/
 Zg8AVeqFxDSuCQC0eF6PFckXvP6MbLfwl/6aBo8zO2cE3F8R42XmG3PPD/e3zYg+jK
 GN2xvKoPwggOfV+QTe8BuIcbkktHzdPPXsIysGgo=
Date: Wed, 11 Mar 2020 13:05:47 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.mitsubishielectric.co.jp>
Subject: Re: [PATCH 1/5] staging: exfat: conform 'pbr_sector_t' definition to
 exFAT specification
Message-ID: <20200311120547.GA3757838@kroah.com>
References: <20200311105245.125564-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311105245.125564-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Mori.Takahiro@ab.mitsubishielectric.co.jp, linux-kernel@vger.kernel.org,
 motai.hirotaka@aj.mitsubishielectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 11, 2020 at 07:52:41PM +0900, Tetsuhiro Kohada wrote:
> Redefine 'pbr_sector_t' as 'boot_sector_t' to comply with exFAT specification.
>  - Redefine 'pbr_sector_t' as 'boot_sector_t'.
>  - Rename variable names including 'pbr'.
>  - Replace GET**()/SET**() macro with cpu_to_le**()/le**_ to_cpu().
>  - Remove fs_info_t.PBR_sector (always 0).
>  - Remove unused definitions.
> 
> Reviewed-by: Takahiro Mori <Mori.Takahiro@ab.MitsubishiElectric.co.jp>
> Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
> ---
>  drivers/staging/exfat/exfat.h       | 139 +++++++---------------------
>  drivers/staging/exfat/exfat_core.c  |  62 ++++++-------
>  drivers/staging/exfat/exfat_super.c |  14 ++-
>  3 files changed, 65 insertions(+), 150 deletions(-)

The drivers/staging/exfat/ tree is now gone from my staging-next branch
as there is a "real" version of exfat now in linux-next from the vfs
tree.

I suggest you start working on the fs/extfat/ code.

thanks,


greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
