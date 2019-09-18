Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E248B6EA2
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 23:11:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B1A986A4F;
	Wed, 18 Sep 2019 21:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1NIQ8B7lk1-U; Wed, 18 Sep 2019 21:11:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA74F869D7;
	Wed, 18 Sep 2019 21:11:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C873C1BF304
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 21:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C5D0887D39
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 21:11:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DxuUE4h2u9cG for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 21:11:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic309-21.consmr.mail.gq1.yahoo.com
 (sonic309-21.consmr.mail.gq1.yahoo.com [98.137.65.147])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1F51187D28
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 21:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1568841096; bh=xSHG3EIZ0k+rLhhcL+KETbZod5iOR13q2gPptS/oso0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=hDaUEL0ZTAW4bmKZz+BA7kG2cWwKKLQGdsQ0zTYwgT2odk5LiTwzgqxopfxZS402XI/7UlB2cLY6E2CbbQIQSyiaNKNDXhJ9U67FWDZLehYs3xweydRcQIUJSoB1OoakvybTDSnQVyduEiqZD4kx1ghORt5hbOJ6Pp17nzCsuOFHzc+hSVnWBSMQadaCotCZB3Fp4YJP/wGD3CjPquJulQ38kKfNwA/x0yXEE+tflfX60plD/IB2GMiB9mdPZzmxHIe5vKjFUJrTWRmwFFQzuoeXytbLhw0Er5GbnHIz3VXTxt1Fk75mZqCqi2eyWYJb85vIf82RtRSYk7Rbs4mXQA==
X-YMail-OSG: oJ_59lQVM1kMKsLpLO6akkyoogSCgRXlUQQ.TYWCfVIWWvo4e84ms12E.ocC6F8
 uARyTVOrPeXXFhaZuQishS7DJyfIB7nFNkrBNi4nLjZpgALjM8skxg1NSU9IvUeYlPcvVLFE1KMl
 E.1FIy6EbzPwzAotxmf.6FZQdzak35GkEP2GjktWnkdvmgp7LVy4qUZMRxhwTBZKzQAtWd.0yh77
 .pmzGKR1VRxnQ9Qc33Qf2n8nXcNVpc1rbzjUfHk7xGOp9NqciPIisWKHfOQvu3lE_eZkF4CJ4qp6
 M6OZN7_QDqDRs2YajUh3xkdnT.u76gOVkB5cPsFVOFo4LPbNj5dWcTCJVFY.QTxrD5t.LIpfJdjb
 vx0XYfVZCBdN3xfpX60jvSO4ssKVhi4XVhjal3ecxahEUOWwq.VzXcySZDRrMFN0Jg.l1EdVH9nM
 Hoc.rqlN3sr6X89DqmdJDwr.npU9bTTPAr3.BlN8ogWOoChh6N9uwyJ_ZbabPZTrD8VUbsgZQjha
 TPXQdUQ9e8fd6MDeEwwJHSlQHnlTbqONnRAF5ZsQCSnC68wbAkY7LCv_tXyKxy9qvrN9kHcTgUHn
 v9BRwnLN3Pk8v8l9O7QXrSBsRoqJMrB.jO.zKmQLsTUhLd6cyvLQyM7B_QWFTdyT.NICIrnuKINs
 0IWc730rNg071x2zj5nBToqr80gvB978SjKqClHfMcE39RH11cVuiIJgyKTYaEfV6TslxEiLpZ8_
 m2O2U2s.W3aequUqxyfFv8nIQLmwXaWTISLxnJKLQwTw77ZPeHwrbOZxG6kpTNuG9sdcnOXXQqoT
 9uQHifxVKb3sQk4uL64IcJP94.2ye2JJiDccUD3cK_iMQn2hk1Ix13TMeUblbn2agKk.fjnsGYCA
 _z72ugVvrcxKZS94HWwhKDgI2h77ApmZXf7z4dzDNrAo2J3G8JLGnQIt4VX8Kk_N6XntFUo3vztw
 SKU5bdEIFqn3pCK2z6TGWaVE0maiP7yRwLWBmkLLkauiJpIZc1l7jmbCekhDAsKo5wglkliotX.i
 ZU4Zh98asDrvtMGO.RDhz2TPRRcrQQwM7_FOP6RUclKlR0amTn9FH6SJI4YSIun7aONqh5y.dT9O
 lXiJZYHm2xcWwpNTZf_ZfjZDyhOxPAT8BgvyOjgoSGjHIZsB1V0I7pGEYYZkYuzXq8oDUqCTAKs0
 GtboXHdYu_uIYVGItbBBtA8.UyXIAqpyLUkBCWPL8CKDaRj1CzuHntq4j6kcFozgrt6aQ.UkII94
 Mc4ByY2GDDl0HLCAE2GWOP6Vlk3sPOvanktjLxCO4sjkBCE26KlshNG5Vhu4N.cZaYKBgN.3J8GJ
 W3uJ1bVR2_gMqblv.hseDfFvciVepY11ShbJMh3_mnF39
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.gq1.yahoo.com with HTTP; Wed, 18 Sep 2019 21:11:36 +0000
Received: by smtp425.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 0a9f3fa91ef1e412436c99f74f3086c4; 
 Wed, 18 Sep 2019 21:11:34 +0000 (UTC)
Date: Thu, 19 Sep 2019 05:11:28 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [GIT PULL] Staging/IIO driver patches for 5.4-rc1
Message-ID: <20190918211123.GA22600@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190918114754.GA1899504@kroah.com>
 <20190918182412.GA9924@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918182412.GA9924@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailer: WebService/1.1.14303 hermes Apache-HttpAsyncClient/4.1.4
 (Java/1.8.0_181)
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 devel@linuxdriverproject.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Wed, Sep 18, 2019 at 11:24:12AM -0700, Christoph Hellwig wrote:
> Just as a note of record:  I don't think either file system move
> is a good idea.  erofs still needs a lot of work, especially in
> interacting with the mm code like abusing page->mapping.

I know what you mean, that is a known stuff in the TODO list,
Z_EROFS_MAPPING_STAGING page->mapping just be used as a temporary
page mark since page->private is already pointed to another
structure, It's now be marked as an non-movable and anon pseudo
mapping and most mm code just skip this case.

I think a better way is to use a real address_space structure for
page->mapping to point. It's easy to update but I need some time
to verify. If I am wrong, please point it out...

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
