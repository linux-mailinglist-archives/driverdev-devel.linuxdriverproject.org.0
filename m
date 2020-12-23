Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E672F2E1D3C
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 15:17:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1495885BF2;
	Wed, 23 Dec 2020 14:17:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ukY9UF50YQe8; Wed, 23 Dec 2020 14:17:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05E0385BD0;
	Wed, 23 Dec 2020 14:17:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 44ADF1BF4D6
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 14:17:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4151685BD0
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 14:17:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WgCdvms_cHMd for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 14:17:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E248785BC8
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 14:17:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2C7D123159;
 Wed, 23 Dec 2020 14:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1608733047;
 bh=KbpO1F0hOo1WD53ODuHgeuiufcJnqdQBqUPRnCSPzv0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b/JHK7B/vuULH9Af/X94IYnajoshkHA4zz7DqIpIfk9/u/a6wKaPirSOcp6yL8ugG
 VZIFZsee0W0Q99/toI8BLUw/4nB9Xs/0bRGX6/S0f4bcCgSZvXidTbJGGCjbMirMnn
 2YNup0PpBrwLYhCLke1uT7YJjwJzIZ3uuFojbQoE=
Date: Wed, 23 Dec 2020 15:18:38 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Zheng Yongjun <zhengyongjun3@huawei.com>
Subject: Re: [PATCH -next] staging: most: use DEFINE_MUTEX (and mutex_init()
 had been too late)
Message-ID: <X+NRvs+FdjB9W9Z8@kroah.com>
References: <20201223141138.32456-1-zhengyongjun3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201223141138.32456-1-zhengyongjun3@huawei.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 23, 2020 at 10:11:38PM +0800, Zheng Yongjun wrote:
> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> ---
>  drivers/staging/most/net/net.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Again, no changelog text?

And why are you not cc:ing the developers and maintainers of the code
you are sending patches out for?  Please always use
scripts/get_maintainer.pl.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
