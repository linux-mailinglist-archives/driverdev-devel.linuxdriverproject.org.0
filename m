Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC011F8D41
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jun 2020 07:22:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7553D24723;
	Mon, 15 Jun 2020 05:22:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o4Zjp2SJjr5j; Mon, 15 Jun 2020 05:22:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 065C42318D;
	Mon, 15 Jun 2020 05:22:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FAE71BF59B
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 05:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 17046895B3
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 05:22:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1fMEWbsy+hEr for <devel@linuxdriverproject.org>;
 Mon, 15 Jun 2020 05:21:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 97CE489594
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 05:21:59 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E5F6206E2;
 Mon, 15 Jun 2020 05:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592198519;
 bh=LHA+tmbnwM8Im496GnSRSe8+1Kp5tFVwTUHmla8PZtE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=YaW9xe59UAlrllR6xuiRMvAlMx+h+SnNpUbysjAUkO2r/znBWAjFnrs5oTOplmJDE
 nYgWLmX142coKdFzMYWcmQobWB7d2OTBs4JtwIf74ygMHEi94n/Qw5sQdKdTlXFM3O
 u4hvifv/jtnLsUC40Vyum0wuZHhL0ebLfQel85d0=
Date: Mon, 15 Jun 2020 07:21:55 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [PATCH 1/2] media: cec: don't use the deprecated help tag
Message-ID: <20200615072155.28981060@coco.lan>
In-Reply-To: <d94e7bff13e8a361353360e4cdbf637bfb701bed.1592198305.git.mchehab+huawei@kernel.org>
References: <d94e7bff13e8a361353360e4cdbf637bfb701bed.1592198305.git.mchehab+huawei@kernel.org>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Mon, 15 Jun 2020 07:18:33 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> According with changeset 3e1ad4054b8d ("doc: don't use deprecated "---help---" markers in target docs"),
> We want to get rid of the old ---help--- tag.
> 
> There's just the cec/Kconfig file under drivers/media using it.
> Replace it.

Just ignore it. A treewide patch already changed it:

	a7f7f6248d97 ("treewide: replace '---help---' in Kconfig files with 'help'")

> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/staging/media/atomisp/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/atomisp/Kconfig b/drivers/staging/media/atomisp/Kconfig
> index f75765cb0fc8..fea06cb0eb48 100644
> --- a/drivers/staging/media/atomisp/Kconfig
> +++ b/drivers/staging/media/atomisp/Kconfig
> @@ -15,7 +15,7 @@ config VIDEO_ATOMISP
>  	depends on PMIC_OPREGION
>  	select IOSF_MBI
>  	select VIDEOBUF_VMALLOC
> -	---help---
> +	help
>  	  Say Y here if your platform supports Intel Atom SoC
>  	  camera imaging subsystem.
>  	  To compile this driver as a module, choose M here: the



Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
