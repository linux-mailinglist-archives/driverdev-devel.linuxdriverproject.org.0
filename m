Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE35740B0
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 23:12:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BE9485FB9;
	Wed, 24 Jul 2019 21:12:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xyCKNm9rkFRk; Wed, 24 Jul 2019 21:12:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CCDEB85FA8;
	Wed, 24 Jul 2019 21:12:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1E0481BF31F
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 21:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1AFB2866BD
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 21:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rw+EXf4YF4dW for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 21:12:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2ED8E85039
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 21:12:03 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 265871543A186;
 Wed, 24 Jul 2019 14:12:03 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:12:02 -0700 (PDT)
Message-Id: <20190724.141202.10100086363454182.davem@davemloft.net>
To: yuehaibing@huawei.com
Subject: Re: [PATCH] qlge: Fix build error without CONFIG_ETHERNET
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190724130126.53532-1-yuehaibing@huawei.com>
References: <20190724130126.53532-1-yuehaibing@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 24 Jul 2019 14:12:03 -0700 (PDT)
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
Cc: bpoirier@suse.com, devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: YueHaibing <yuehaibing@huawei.com>
Date: Wed, 24 Jul 2019 21:01:26 +0800

> Now if CONFIG_ETHERNET is not set, QLGE driver
> building fails:
> 
> drivers/staging/qlge/qlge_main.o: In function `qlge_remove':
> drivers/staging/qlge/qlge_main.c:4831: undefined reference to `unregister_netdev'
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: 955315b0dc8c ("qlge: Move drivers/net/ethernet/qlogic/qlge/ to drivers/staging/qlge/")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

I'll let Greg take this.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
