Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C326924E7D6
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Aug 2020 16:22:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E4A5E884B9;
	Sat, 22 Aug 2020 14:22:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d+uS5Km1f4h1; Sat, 22 Aug 2020 14:22:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4D263884B5;
	Sat, 22 Aug 2020 14:22:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 26F4E1BF3D9
 for <devel@linuxdriverproject.org>; Sat, 22 Aug 2020 14:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 23DBB88111
 for <devel@linuxdriverproject.org>; Sat, 22 Aug 2020 14:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pBPdPsS3Pyz8 for <devel@linuxdriverproject.org>;
 Sat, 22 Aug 2020 14:22:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 43683880FB
 for <devel@driverdev.osuosl.org>; Sat, 22 Aug 2020 14:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=Behx2+G7awWW4jnBTF/jygxIW6A3yPzIrp17SFRqVqc=; b=hjDRi5edBluxfwJnws6LF5Hqkx
 ZTKxJ5/rFm0fWjLxc1LSoVcwFKhALO56BKFsn4ngrPkIq8OlHByhYY0FGaR3mhQpuAJTuuAd63XWi
 GAI1447k0v4cDPECfEt18s7zRZeJbICKeiWX9/JLUtty2adx1yjslFZEngLy2QI0XPukqp9SldhxD
 LE/RScFZZs1TsMgBjY+lZz3B2sdCF1yaPf+6ga352d7BO3RJitBRGgBBSt9hCLD32gF3OdWQ4pQL6
 BR0Dsmy9FZ1ECXYEj6f5qR02okh9uKDFgplRV5SkYzgqzqhFH45n9yYlM+6Pl7GOqpAb85b8HfVzT
 mIu2PylA==;
Received: from [2601:1c0:6280:3f0::19c2]
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k9UPf-0000QB-Lx; Sat, 22 Aug 2020 14:22:31 +0000
Subject: Re: [PATCH v4 2/2] staging: android: Remove BUG from ion_system_heap.c
To: Tomer Samara <tomersamara98@gmail.com>
References: <cover.1598023523.git.tomersamara98@gmail.com>
 <a39407f84031eaeed5e65a7aab515a079edf5fcc.1598023524.git.tomersamara98@gmail.com>
 <3eba90dc-128f-49da-41a6-81494653d535@infradead.org>
 <20200822093421.GA6631@tsnow>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <39092d50-d0fc-d142-1775-4b40194b02f5@infradead.org>
Date: Sat, 22 Aug 2020 07:22:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200822093421.GA6631@tsnow>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Riley Andrews <riandrews@android.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?Q?Arve_Hj=c3=b8nnev=c3=a5g?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Laura Abbott <labbott@redhat.com>,
 Martijn Coenen <maco@android.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/22/20 2:34 AM, Tomer Samara wrote:
> On Fri, Aug 21, 2020 at 09:25:26AM -0700, Randy Dunlap wrote:
>> On 8/21/20 8:28 AM, Tomer Samara wrote:
>>> Remove BUG() from ion_sytem_heap.c
>>>
>>> this fix the following checkpatch issue:
>>> Avoid crashing the kernel - try using WARN_ON &
>>> recovery code ratherthan BUG() or BUG_ON().
>>>
>>> Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
>>> ---
>>>  drivers/staging/android/ion/ion_system_heap.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
>>> index eac0632ab4e8..00d6154aec34 100644
>>> --- a/drivers/staging/android/ion/ion_system_heap.c
>>> +++ b/drivers/staging/android/ion/ion_system_heap.c
>>> @@ -30,7 +30,7 @@ static int order_to_index(unsigned int order)
>>>  	for (i = 0; i < NUM_ORDERS; i++)
>>>  		if (order == orders[i])
>>>  			return i;
>>> -	BUG();
>>> +	/* This is impossible. */
>>>  	return -1;
>>>  }
>>
>> Hi,
>> Please explain why this is impossible.
>>
>> If some caller calls order_to_index(5), it will return -1, yes?
>>
>> -- 
>> ~Randy
>>
> 
> As Dan Carpenter says here https://lkml.kernel.org/lkml/cover.1597865771.git.tomersamara98@gmail.com/T/#mc790b91029565b1bb0cb87997b39007d9edb6e04.
> After looking at callers we see that order_to_index called from 2 functions:
> - alloc_buffer_page called from alloc_largest_available which 
>   loop over all legit order nubmers
>   ( Flow:
>    alloc_largest_available-->alloc_buffer_page-->order_to_index
>   )
> 
> - free_buffer_page takes the order using compound_order, which return 0 or
>   the order number for the page, this function has 2 callers too,
>   ion_system_heap_allocate (which called it in case of failure at sg_alloc_table,
>   thus calling from this flow will no casue error) and ion_system_heap_free
>   (which will be called on every sg table in the buffer that allocated good,
>   meaning from this flow also error will not be created).
>   ( Flows:
>    ion_system_heap_free     --> free_buffer_page --> order_to_index
>    ion_system_heap_allocate --> free_buffer_page --> order_to_index
>   )
> 
> Of course if some user will use this function with wrong order number he will be able to get this -1.
> So should I remove this comment and resotre the error checks?

I think so, but that's just an opinion.

> Btw, this is the same reason that I dropped the error check at ion_page_pool_shrink, so should I restore here also?

IMO yes.

Getting rid of BUG()s is a good goal, but usually it's not so easy.

thanks.
-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
