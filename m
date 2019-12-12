Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E5F11D707
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 20:25:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CF53925248;
	Thu, 12 Dec 2019 19:25:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fz9hWKk9LvO4; Thu, 12 Dec 2019 19:25:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 94BD42051D;
	Thu, 12 Dec 2019 19:25:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EEDBF1BF340
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 19:25:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 295B588891
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 19:25:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iPBx4hpRb4BS for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 19:25:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9657088754
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 19:25:04 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C1936153E344D;
 Thu, 12 Dec 2019 11:25:03 -0800 (PST)
Date: Thu, 12 Dec 2019 11:25:03 -0800 (PST)
Message-Id: <20191212.112503.2124115964978794401.davem@davemloft.net>
To: schaferjscott@gmail.com
Subject: Re: [PATCH v2 11/23] staging: qlge: Fix CHECK: braces {} should be
 used on all arms of this statement
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191212150200.GA8219@karen>
References: <0e1fc1a16725094676fdab63d3a24a986309a759.1576086080.git.schaferjscott@gmail.com>
 <20191212121206.GB1895@kadam> <20191212150200.GA8219@karen>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 12 Dec 2019 11:25:04 -0800 (PST)
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Scott Schafer <schaferjscott@gmail.com>
Date: Thu, 12 Dec 2019 09:02:00 -0600

> On Thu, Dec 12, 2019 at 03:12:06PM +0300, Dan Carpenter wrote:
>> On Wed, Dec 11, 2019 at 12:12:40PM -0600, Scott Schafer wrote:
>> > @@ -351,8 +352,9 @@ static int ql_aen_lost(struct ql_adapter *qdev, struct mbox_params *mbcp)
>> >  	mbcp->out_count = 6;
>> >  
>> >  	status = ql_get_mb_sts(qdev, mbcp);
>> > -	if (status)
>> > +	if (status) {
>> >  		netif_err(qdev, drv, qdev->ndev, "Lost AEN broken!\n");
>> > +	}
>> >  	else {
>> 
>> The close } should be on the same line as the else.
>> 
>> >  		int i;
>> >  
>> 
>> regards,
>> dan carpenter
> 
> this was fixed in patch 22

It should not be introduced in the first place.  Therefore it needs to be dealt with
in this patch.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
