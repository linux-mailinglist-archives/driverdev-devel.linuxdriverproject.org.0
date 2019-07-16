Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4476AE1D
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 20:02:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B7FCF2201C;
	Tue, 16 Jul 2019 18:02:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GwTnfNIpvjjz; Tue, 16 Jul 2019 18:02:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A256821577;
	Tue, 16 Jul 2019 18:02:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F42A1BF414
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 18:02:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 098E686A3C
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 18:02:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U9iEYC0UWXEp for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 18:02:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hqemgate15.nvidia.com (hqemgate15.nvidia.com [216.228.121.64])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0F1A586C1A
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 18:02:32 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d2e113d0001>; Tue, 16 Jul 2019 11:02:37 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 16 Jul 2019 11:02:31 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 16 Jul 2019 11:02:31 -0700
Received: from [10.110.48.28] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 16 Jul
 2019 18:02:30 +0000
Subject: Re: [PATCH] staging: kpc2000: whitespace and line length cleanup
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, <john.hubbard@gmail.com>
References: <20190715212123.432-1-jhubbard@nvidia.com>
 <20190715212123.432-2-jhubbard@nvidia.com> <20190716083653.GB26457@kroah.com>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <76dbf8b5-6819-46d6-3e88-6efd3e65c10f@nvidia.com>
Date: Tue, 16 Jul 2019 11:02:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716083653.GB26457@kroah.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL106.nvidia.com (172.18.146.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563300157; bh=5fT2Sa0tylwiO7vAH/6/Aymz36jmgXXUwd3MqBCptko=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=I7GAV+LixPo0fAlyKVKc68DeJz8F8xuarg+JJYGejm6DEBJUGFQ1gz7cv+HNyfMlW
 MwPeoLK74ZW6kKLHrdAmmiBn1H++2nwSrJX9cJz5mGQWW7e0Qyhy3ttDRCwYYSi0SA
 qS7vlZJN0+ebY7E40ExOdDZP1v+MDlPALhjntfXH7UILezDbzeHvhWGvZFWX6aolht
 ri5QM8xDV0xujSWuApj7Sz/abbMCORSM0R0Ern8zGGqN+YpexQZwQEbPHj3asJSkNR
 r3PljX2ATEArr4keLaz9K/mTTMF894eJjFLVQsB6aK2YNvT1UJcVnBBERV45JqT7u1
 t+WY1+CWPa+Qw==
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
Cc: devel@driverdev.osuosl.org, Bharath Vedartham <linux.bhar@gmail.com>,
 Geordan Neukum <gneukum1@gmail.com>, Vandana BN <bnvandana@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Simon_Sandstr=c3=b6m?= <simon@nikanor.nu>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/16/19 1:36 AM, Greg Kroah-Hartman wrote:
> On Mon, Jul 15, 2019 at 02:21:23PM -0700, john.hubbard@gmail.com wrote:
>> From: John Hubbard <jhubbard@nvidia.com>
...
>>  drivers/staging/kpc2000/kpc2000_i2c.c         | 189 +++++++++++------
>>  drivers/staging/kpc2000/kpc2000_spi.c         | 116 +++++-----
>>  drivers/staging/kpc2000/kpc_dma/dma.c         | 109 ++++++----
>>  drivers/staging/kpc2000/kpc_dma/fileops.c     | 199 +++++++++++-------
>>  .../staging/kpc2000/kpc_dma/kpc_dma_driver.c  | 113 +++++-----
>>  .../staging/kpc2000/kpc_dma/kpc_dma_driver.h  | 156 +++++++-------
>>  6 files changed, 509 insertions(+), 373 deletions(-)
> 
> THat's way too many different types of changes to do all at once, and
> some of these are making the code look worse, not better.
> 
> There's a reason we don't run lindent :)

Yes, I am seeing that very clearly now. :)

> 
> If you want to do one-type-of-fix-per-patch, I'll gladly take these,
> otherwise, I recommend leaving this for those people learning how to do
> development to do.
> 

OK, I'm going to pretend that I'm not one of those people, despite recent
hard evidence to the contrary here. haha. Anyway, this does present a
nice set of things for new developers to get started on. So I'll leave
it as is.

thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
