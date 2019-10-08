Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A29CFA53
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 14:48:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4B7D82270C;
	Tue,  8 Oct 2019 12:48:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1NmXTtpsMZw3; Tue,  8 Oct 2019 12:48:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0984D2049A;
	Tue,  8 Oct 2019 12:48:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 78F0D1BF35A
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:48:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 70BBE8609D
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:48:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r-EB74Rsysp0 for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 12:48:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EDFA28604A
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 12:48:24 +0000 (UTC)
Received: from localhost (unknown [89.205.136.155])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D57A20640;
 Tue,  8 Oct 2019 12:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570538904;
 bh=YP/glgrh+YAw59enKIL/nrYuG60e1X9PEm+FcLItDaU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hELwSujAFX5O4dU4dAObdh4fbF5cHafqRLS3dXxHPYdNbei7n3Bw3syyEodIfQ9Mk
 7EXY+t2gZ9Tkh2ECUm1YvTvyfhq8Q7QVBf+vt1EpdnCuir9+FMWDFLrhIm0tsT6Orr
 F0G9zBIl9aB86oXru5gQKoq23NJ45vMmyxmjW1aY=
Date: Tue, 8 Oct 2019 14:48:21 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: zhengbin <zhengbin13@huawei.com>
Subject: Re: [PATCH v2] staging: rtl8723bs: Remove set but not used variable
 'i'
Message-ID: <20191008124821.GA2804207@kroah.com>
References: <1570497903-37077-1-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570497903-37077-1-git-send-email-zhengbin13@huawei.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 08, 2019 at 09:25:03AM +0800, zhengbin wrote:
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/staging/rtl8723bs/core/rtw_xmit.c: In function update_attrib:
> drivers/staging/rtl8723bs/core/rtw_xmit.c:680:7: warning: variable i set but not used [-Wunused-but-set-variable]
> 
> It is not used since commit 554c0a3abf21 ("staging:
> Add rtl8723bs sdio wifi driver")
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: zhengbin <zhengbin13@huawei.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_xmit.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

What changed from v1?  Always put that below the --- line.

Please fix that up and resend a v3.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
