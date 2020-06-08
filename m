Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D3B1F1F78
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Jun 2020 21:06:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 61F7C22128;
	Mon,  8 Jun 2020 19:06:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x6Vmg2vbhXPf; Mon,  8 Jun 2020 19:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D6C1A20784;
	Mon,  8 Jun 2020 19:06:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 397F21BF393
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 19:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 30E90861E7
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 19:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LE5zioDpLLSJ for <devel@linuxdriverproject.org>;
 Mon,  8 Jun 2020 19:05:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from hqnvemgate24.nvidia.com (hqnvemgate24.nvidia.com
 [216.228.121.143])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 79A1C860A3
 for <devel@driverdev.osuosl.org>; Mon,  8 Jun 2020 19:05:58 +0000 (UTC)
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ede8bbb0000>; Mon, 08 Jun 2020 12:04:27 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Mon, 08 Jun 2020 12:05:57 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Mon, 08 Jun 2020 12:05:57 -0700
Received: from [10.2.58.199] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 8 Jun
 2020 19:05:57 +0000
Subject: Re: [PATCH] staging: kpc2000: kpc_dma: Convert get_user_pages() -->
 pin_user_pages()
To: Souptick Joarder <jrdr.linux@gmail.com>
References: <1590947491-11194-1-git-send-email-jrdr.linux@gmail.com>
 <7e725dd0-7423-b85b-ff56-9705419d13b9@nvidia.com>
 <CAFqt6zbsNcHWF-0Na2xMKdJQs2kVkLHTCw=cytvdo+z-axx97Q@mail.gmail.com>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <5f0c68a0-2cc4-5724-d778-7e9d5fd7dfde@nvidia.com>
Date: Mon, 8 Jun 2020 12:05:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAFqt6zbsNcHWF-0Na2xMKdJQs2kVkLHTCw=cytvdo+z-axx97Q@mail.gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1591643067; bh=y9FC9kMwMYaUWl45KqVZDyvjd+9HlOT1/8zsf7RZB5U=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=oFLvfohf3AKnS3anENkJNIC0l8M3zdb+SYF9UVO3JTgFrLfvGjf+hhnHP23BcwUms
 MuwvsLTXdzmh2OS9K0m3fHi9yKVlaDO5W4YVHp0nejCjbQK1hCtabZFZHZxdDSXU38
 rfDFZNKbb++t7poQgACm5qfWUtAIB/TqvV4lWGj8MTZE5VBC0Q/1J0MjTxhpUAssDq
 8oUVmygK7C+DxlBfNfUKpAOP/bZYWaLBNSVTCyKIdKr8Rrkf2M44LFT4J8ZOmtF3WD
 LKp0bQR89v6EehNzUnPVEw1MWt/v3JZlM0GTt8FrMg5+P1JphpQFXRizVKtQk12vwk
 5RWISd7FAjPuw==
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Bharath Vedartham <linux.bhar@gmail.com>, harshjain32@gmail.com,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Simon_Sandstr=c3=b6m?= <simon@nikanor.nu>, jane.pnx9@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-06-08 12:01, Souptick Joarder wrote:
> On Mon, Jun 1, 2020 at 7:15 AM John Hubbard <jhubbard@nvidia.com> wrote:
>>
>> On 2020-05-31 10:51, Souptick Joarder wrote:
>>> In 2019, we introduced pin_user_pages*() and now we are converting
>>> get_user_pages*() to the new API as appropriate. [1] & [2] could
>>> be referred for more information.
>>>
>>> When pin_user_pages() returns numbers of partially mapped pages,
>>> those pages were not unpinned as part of error handling. Fixed
>>> it as part of this patch.
>>>
>>
>> Hi Souptick,
>>
>> btw, Bharath (+cc) attempted to do the "put" side of this, last year.
>> That got as far as a v4 patch [1], and then I asked him to let me put
>> it into my tree. But then it didn't directly apply anymore after the
>> whole design moved to pin+unpin, and so here we are now.
>>
>>
>> If Bharath is still doing kernel work, you might offer him a Co-Developed-by:
>> tag (see https://www.kernel.org/doc/html/v4.17/process/submitting-patches.html).
> 
> Sure, will add him as *Co-Developed-by*
>>


Yes, but it's best to wait and see if he responds, before adding that tag, because
it also required a Signed-off-by from him.

thanks,
-- 
John Hubbard
NVIDIA

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
