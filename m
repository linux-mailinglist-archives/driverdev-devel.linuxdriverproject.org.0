Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 805A01E76E8
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 09:38:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9440A25D1D;
	Fri, 29 May 2020 07:38:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eJtrUgrw9YKR; Fri, 29 May 2020 07:38:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AF89925D10;
	Fri, 29 May 2020 07:38:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 344451BF366
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 07:38:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2FC4388366
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 07:38:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jFf44YHAOfhZ for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 07:38:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from hqnvemgate25.nvidia.com (hqnvemgate25.nvidia.com
 [216.228.121.64])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5C7CF88372
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 07:38:21 +0000 (UTC)
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ed0bb980002>; Fri, 29 May 2020 00:36:56 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Fri, 29 May 2020 00:38:20 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Fri, 29 May 2020 00:38:20 -0700
Received: from [10.2.62.53] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 29 May
 2020 07:38:20 +0000
Subject: Re: [PATCH] staging: gasket: Convert get_user_pages*() -->
 pin_user_pages*()
To: Souptick Joarder <jrdr.linux@gmail.com>, Dan Carpenter
 <dan.carpenter@oracle.com>
References: <1590613362-27495-1-git-send-email-jrdr.linux@gmail.com>
 <20200528110408.GJ30374@kadam>
 <CAFqt6zaKWBQTy9XfvxwVAvzGS+gz9Qv1gL8Bv1VxLq+THYf+Aw@mail.gmail.com>
 <CAFqt6zbtg0NWbAnDGPC0ZddEiTeohz=8JN+S_KxqM0bnnvar3g@mail.gmail.com>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <52f75ec4-a2a0-f979-a3b9-ef016b88907c@nvidia.com>
Date: Fri, 29 May 2020 00:38:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <CAFqt6zbtg0NWbAnDGPC0ZddEiTeohz=8JN+S_KxqM0bnnvar3g@mail.gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1590737816; bh=XWCdO8mYOyEYgSPs/AOwnpRK3mO1gnW/W16YV5NbFoI=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=LpUx1Wncnmb399lTdHKiChW4/LIM/4KS90LFgdoM3OW6sX5VfId8KEPOTovNg/NKD
 e98V/5wu2deHhZOAfccSC4jlEHLf3K/ZDbRg7s6b1xkuN+Xw1ko1+pUogIi4nDHe2c
 N3jXmEhUoHB3tqGc/WjC1cYYv6XpDeEobHRH66FaDOT6/C9rRqG3AVbjTovluE0jcu
 4elCV1sbxRwbg9R354aIkaKBxrjHwffvXUBicyehr0YDFOtd2erEeK+EqqCRCBW/vy
 0ZrmJKVnl/OPnO8vNTMMdBn8fWW9JyBhuMhXkgVSNlmYQWF+Po+3iwMgS7nyZ31RMe
 X40kvrJCuDxtQ==
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
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-05-28 23:27, Souptick Joarder wrote:
> On Fri, May 29, 2020 at 11:46 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
>>
>> On Thu, May 28, 2020 at 4:34 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>>>
>>> On Thu, May 28, 2020 at 02:32:42AM +0530, Souptick Joarder wrote:
>>>> This code was using get_user_pages_fast(), in a "Case 2" scenario
>>>> (DMA/RDMA), using the categorization from [1]. That means that it's
>>>> time to convert the get_user_pages_fast() + put_page() calls to
>>>> pin_user_pages_fast() + unpin_user_page() calls.
>>>
>>> You are saying that the page is used for DIO and not DMA, but it sure
>>> looks to me like it is used for DMA.
>>
>> No, I was referring to "Case 2" scenario in change log which means  it is
>> used for DMA, not DIO.

Hi,

Dan, I also uncertain as to how you read this as referring to DIO. Case 2 is
DMA or RDMA, and in fact the proposed commit log says both of those things:
Case 2 and DMA/RDMA. I don't see "DIO" anywhere here...


>>
>>>
>>>     503                          /* Map the page into DMA space. */
>>>     504                          ptes[i].dma_addr =
>>>     505                                  dma_map_page(pg_tbl->device, page, 0, PAGE_SIZE,
>>>     506                                               DMA_BIDIRECTIONAL);
>>>
>>> To be honest, that starting paragraph was confusing.  At first I thought
>>> you were saying gasket was an RDMA driver. :P  I shouldn't have to read
>>> a different document to understand the commit message.  It should be
>>> summarized enough and the other documentation is supplemental.
>>>
>>> "In 2019 we introduced pin_user_pages() and now we are converting
>>> get_user_pages() to the new API as appropriate".
>>
>> As all other similar conversion have similar change logs, so I was trying
>> to maintain the same. John might have a different opinion on this.
> 
> For example, I was referring to few recent similar commits for change logs.
> 
> http://lkml.kernel.org/r/20200519002124.2025955-5-jhubbard@nvidia.com
> https://lore.kernel.org/r/20200518015237.1568940-1-jhubbard@nvidia.com
> 
> 
>>
>> John, Any further opinion ??


Well, I've gotten away with the current wording for quite a few patches so
far, but that sure doesn't mean it's perfect! :)

Maybe adding the words that Dan suggests, above, will suffice? Here:

 >>> "In 2019 we introduced pin_user_pages() and now we are converting
 >>> get_user_pages() to the new API as appropriate".


thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
