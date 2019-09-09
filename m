Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 532D3ADCC1
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Sep 2019 18:10:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3D6E920437;
	Mon,  9 Sep 2019 16:10:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6X5PgDXbPkxD; Mon,  9 Sep 2019 16:10:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0EE2B2052D;
	Mon,  9 Sep 2019 16:09:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 42F4B1BF3A7
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 16:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3FE8681FEE
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 16:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yUXvoWnAlrrB for <devel@linuxdriverproject.org>;
 Mon,  9 Sep 2019 16:09:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AB48582022
 for <devel@driverdev.osuosl.org>; Mon,  9 Sep 2019 16:09:55 +0000 (UTC)
Received: from localhost (110.8.30.213.rev.vodafone.pt [213.30.8.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CACEA2082C;
 Mon,  9 Sep 2019 16:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568045395;
 bh=nslVTONxqFVxi0hsm1QBWjVFX7rQyENOoz3iPe0MrJE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qQhLj28ynCVjtUk0tgq/f7uRkVaUrRCE2ktCMkkabT4aXN2AqLG55U5QPUXwnykzf
 5lklwzfx9118WAg9tFzxer/+Dw8zXJs3ugMZoAPi/5EMFCVm8TniYug6ac1n9HjSGy
 2zWD1mC/GmW1wnfqxmBJzCYSp7JgQxPm8Kh05sXQ=
Date: Mon, 9 Sep 2019 17:09:52 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julio Faracco <jcfaracco@gmail.com>
Subject: Re: [PATCH v2] staging: greybus: loopback_test: Adding missing
 brackets into if..else block
Message-ID: <20190909160952.GA9971@kroah.com>
References: <20190909143244.371-1-jcfaracco@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909143244.371-1-jcfaracco@gmail.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, johan@kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 lkcamp@lists.libreplanetbr.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 09, 2019 at 02:32:44PM +0000, Julio Faracco wrote:
> Inside a block of if..else conditional, else structure does not contain
> brackets. This is not following regular policies of kernel coding style.
> All parts of this conditional blocks should respect brackets inclusion.
> This commit removes some blank spaces that are not following brackets
> policies too.

Whenever you say "too" or "also" that's a huge hint that you should
break the patch up into multiple patches.

Please do that here, only do "one logical thing" per patch.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
