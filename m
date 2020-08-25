Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 507EC25152C
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 11:17:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C3806882A3;
	Tue, 25 Aug 2020 09:17:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HZp2mA3lAiss; Tue, 25 Aug 2020 09:17:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3DB8F8820F;
	Tue, 25 Aug 2020 09:17:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 127101BF2B0
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 09:17:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0707122049
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 09:17:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F3NGufkfJFw8 for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 09:17:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 3A1132202E
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 09:17:38 +0000 (UTC)
Received: from coco.lan (ip5f5ad5a4.dynamic.kabel-deutschland.de
 [95.90.213.164])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6BD92068F;
 Tue, 25 Aug 2020 09:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598347058;
 bh=9QeGB1fXHAQSQh1eR70hPqgCS2Tc/JeiZO9IWAi9qPI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QG7lkNYwhNzmsuyMt4/05k2/nQtRbBggtJoeFDNh43HKu1cyq/RW+kDL/sSos3BjP
 10aD46wy0Ay6dlEnwr/KfVlcIXcJCt/eFBMr4imMKhwDAYwvnausAPPsO+CYy7mlV/
 ZQHB0va3N/VTA1WXmQtBZoSLZIgS74HDyhUHkGwI=
Date: Tue, 25 Aug 2020 11:17:34 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] staging: spmi: hisi-spmi-controller: fix spelling
 mistake "controlller" -> "controller"
Message-ID: <20200825111734.40c13380@coco.lan>
In-Reply-To: <20200820075136.186199-1-colin.king@canonical.com>
References: <20200820075136.186199-1-colin.king@canonical.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Thu, 20 Aug 2020 08:51:36 +0100
Colin King <colin.king@canonical.com> escreveu:

> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in the MODULE_ALIAS, fix it.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
Reviewed-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

> ---
>  drivers/staging/hikey9xx/hisi-spmi-controller.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
> index 66a0b296e06f..b132b2a5d939 100644
> --- a/drivers/staging/hikey9xx/hisi-spmi-controller.c
> +++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
> @@ -354,4 +354,4 @@ module_exit(spmi_controller_exit);
>  
>  MODULE_LICENSE("GPL v2");
>  MODULE_VERSION("1.0");
> -MODULE_ALIAS("platform:spmi_controlller");
> +MODULE_ALIAS("platform:spmi_controller");



Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
