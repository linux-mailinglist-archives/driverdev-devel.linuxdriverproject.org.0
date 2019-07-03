Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3D65E8A7
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jul 2019 18:20:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D2C1386099;
	Wed,  3 Jul 2019 16:20:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wz4l_6BnIlmR; Wed,  3 Jul 2019 16:20:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ECD1F85FAC;
	Wed,  3 Jul 2019 16:20:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F204E1BF377
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 16:20:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EB38820459
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 16:20:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VOJoF65+L94x for <devel@linuxdriverproject.org>;
 Wed,  3 Jul 2019 16:20:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 7723F2039F
 for <devel@driverdev.osuosl.org>; Wed,  3 Jul 2019 16:20:41 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C8BEF21882;
 Wed,  3 Jul 2019 16:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562170841;
 bh=QZTPaJThXyCvilVBec9jdvthL4N/0KWr9NeInDRs86I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tfpGpXQqZjJsZny78dtBwtSQTqC1dHZjhi8Hrif6Avo5MfSEozLRGTIE9B1x64R8i
 mew4YG2xBl8Wwk5N+AtUJuHbjQjlAlDWM1cldJIKfPMs2rg/bSKWtvfzs14BCplYCF
 /C18P3Lbt0894GMMkrWmnwOu66TSWAhruJauTaH0=
Date: Wed, 3 Jul 2019 18:20:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Yue Hu <zbestahu@gmail.com>
Subject: Re: [PATCH RESEND v3] staging: erofs: remove unsupported ->datamode
 check in fill_inline_data()
Message-ID: <20190703162038.GA31307@kroah.com>
References: <20190702025601.7976-1-zbestahu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702025601.7976-1-zbestahu@gmail.com>
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
Cc: devel@driverdev.osuosl.org, yuchao0@huawei.com,
 linux-kernel@vger.kernel.org, huyue2@yulong.com, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 02, 2019 at 10:56:01AM +0800, Yue Hu wrote:
> From: Yue Hu <huyue2@yulong.com>
> 
> Already check if ->datamode is supported in read_inode(), no need to check
> again in the next fill_inline_data() only called by fill_inode().
> 
> Signed-off-by: Yue Hu <huyue2@yulong.com>
> Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>
> Reviewed-by: Chao Yu <yuchao0@huawei.com>
> ---
> no change
> 
>  drivers/staging/erofs/inode.c | 2 --
>  1 file changed, 2 deletions(-)

This is already in my tree, right?

confused,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
