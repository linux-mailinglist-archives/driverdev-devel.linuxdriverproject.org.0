Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D2D740B3
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 23:12:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08DA886A7C;
	Wed, 24 Jul 2019 21:12:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7WymMES9T9yd; Wed, 24 Jul 2019 21:12:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 208DF86866;
	Wed, 24 Jul 2019 21:12:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2AA761BF31F
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 21:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 26F1E87118
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 21:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CHrazCeyUTgT for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 21:12:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CEEEC86D7A
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 21:12:29 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1BF0B1543A188;
 Wed, 24 Jul 2019 14:12:29 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:12:28 -0700 (PDT)
Message-Id: <20190724.141228.454330962921320879.davem@davemloft.net>
To: yuehaibing@huawei.com
Subject: Re: [PATCH] qlge: Fix build error without CONFIG_ETHERNET
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190724.141202.10100086363454182.davem@davemloft.net>
References: <20190724130126.53532-1-yuehaibing@huawei.com>
 <20190724.141202.10100086363454182.davem@davemloft.net>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 24 Jul 2019 14:12:29 -0700 (PDT)
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

From: David Miller <davem@davemloft.net>
Date: Wed, 24 Jul 2019 14:12:02 -0700 (PDT)

> From: YueHaibing <yuehaibing@huawei.com>
> Date: Wed, 24 Jul 2019 21:01:26 +0800
> 
>> Now if CONFIG_ETHERNET is not set, QLGE driver
>> building fails:
>> 
>> drivers/staging/qlge/qlge_main.o: In function `qlge_remove':
>> drivers/staging/qlge/qlge_main.c:4831: undefined reference to `unregister_netdev'
>> 
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Fixes: 955315b0dc8c ("qlge: Move drivers/net/ethernet/qlogic/qlge/ to drivers/staging/qlge/")
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> 
> I'll let Greg take this.

Actually, I take that back.

Since the move to staging happened in my tree I will take this ;-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
