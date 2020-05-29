Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 763C81E779B
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 10:00:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B05E873CE;
	Fri, 29 May 2020 08:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b4npyHTNHtlS; Fri, 29 May 2020 08:00:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 944628719A;
	Fri, 29 May 2020 08:00:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C208C1BF9BF
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 08:00:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B24CE8841D
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 08:00:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Olx1VUiu09yz for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 08:00:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from hqnvemgate26.nvidia.com (hqnvemgate26.nvidia.com
 [216.228.121.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 671E188392
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 08:00:23 +0000 (UTC)
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ed0c10b0000>; Fri, 29 May 2020 01:00:11 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Fri, 29 May 2020 01:00:22 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Fri, 29 May 2020 01:00:22 -0700
Received: from [10.2.62.53] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 29 May
 2020 08:00:22 +0000
Subject: Re: [PATCH] staging: gasket: Convert get_user_pages*() -->
 pin_user_pages*()
To: Dan Carpenter <dan.carpenter@oracle.com>, Souptick Joarder
 <jrdr.linux@gmail.com>
References: <1590613362-27495-1-git-send-email-jrdr.linux@gmail.com>
 <20200528110408.GJ30374@kadam>
 <CAFqt6zaKWBQTy9XfvxwVAvzGS+gz9Qv1gL8Bv1VxLq+THYf+Aw@mail.gmail.com>
 <CAFqt6zbtg0NWbAnDGPC0ZddEiTeohz=8JN+S_KxqM0bnnvar3g@mail.gmail.com>
 <20200529074658.GM30374@kadam>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <88daa048-7fc3-2d46-d582-02a7aaa7a970@nvidia.com>
Date: Fri, 29 May 2020 01:00:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200529074658.GM30374@kadam>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1590739211; bh=vhBpXVZGiT9PxDZjUGkjOLEAXZrix22qc70Hb8992VU=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=DRyH6k0vexcFUfjYgZogoJtWjLGPUbkTK/d6PJ7MTCCKtYPBrQ6VI1CkcSD/ds4BO
 rrHYsDx0XrTYx/Xv20LQkHyw1cNrMDCDPo94rBT4SkkcwCxh4AqUu3gqN9zkTFFMS3
 f6LzBkDYj31XG5Ed+WEb6FBKxQCeLf1lJ8OmECo6kDKPRfOIeER6yBo6kvdcKc2i4l
 YnxGFdVJoSf/KOlk/lj1KQcC9XKMK6r/s9QgHVbhiJvW5cE/ALVs1s5ozTt+Y7Ocqy
 4pS9eJqcWJJknpENobGsj+d/lSmIz88lbQHyBo1kdiEBaJ8FTZXDsdw0SdJsM7fcM+
 s6x6G/187YRzA==
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
 Greg KH <gregkh@linuxfoundation.org>, Todd Poynor <toddpoynor@google.com>,
 Rob Springer <rspringer@google.com>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-05-29 00:46, Dan Carpenter wrote:
> On Fri, May 29, 2020 at 11:57:09AM +0530, Souptick Joarder wrote:
>> On Fri, May 29, 2020 at 11:46 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
>>>
>>> On Thu, May 28, 2020 at 4:34 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>>>>
>>>> On Thu, May 28, 2020 at 02:32:42AM +0530, Souptick Joarder wrote:
>>>>> This code was using get_user_pages_fast(), in a "Case 2" scenario
>>>>> (DMA/RDMA), using the categorization from [1]. That means that it's
>>>>> time to convert the get_user_pages_fast() + put_page() calls to
>>>>> pin_user_pages_fast() + unpin_user_page() calls.
>>>>
>>>> You are saying that the page is used for DIO and not DMA, but it sure
>>>> looks to me like it is used for DMA.
>>>
>>> No, I was referring to "Case 2" scenario in change log which means  it is
>>> used for DMA, not DIO.
> 
> You can't use pin_user_pages() for DMA.  This was second reason that I
> was confused.


OK, now it is getting interesting!


> 
> mm/gup.c
>    2863  /**
>    2864   * pin_user_pages_fast() - pin user pages in memory without taking locks
>    2865   *
>    2866   * @start:      starting user address
>    2867   * @nr_pages:   number of pages from start to pin
>    2868   * @gup_flags:  flags modifying pin behaviour
>    2869   * @pages:      array that receives pointers to the pages pinned.
>    2870   *              Should be at least nr_pages long.
>    2871   *
>    2872   * Nearly the same as get_user_pages_fast(), except that FOLL_PIN is set. See
>    2873   * get_user_pages_fast() for documentation on the function arguments, because
>    2874   * the arguments here are identical.
>    2875   *
>    2876   * FOLL_PIN means that the pages must be released via unpin_user_page(). Please
>    2877   * see Documentation/core-api/pin_user_pages.rst for further details.
>    2878   *
>    2879   * This is intended for Case 1 (DIO) in Documentation/core-api/pin_user_pages.rst. It
>             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>    2880   * is NOT intended for Case 2 (RDMA: long-term pins).
>             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


I'm trying to figure out why I wrote that. It seems just wrong, because once the
page is dma-pinned, it will work just fine for either Case 1 or Case 2. hmmm, I
think this was from a few design ideas ago, when we were still working through the
FOLL_LONGTERM and FOLL_PIN thoughts and how the pin_user_pages*() API set should
look.

At this point, it's looking very much like a (my) documentation bug: all 4 of the
"intended for Case 1 (DIO)" comments in mm/gup.c probably need to be simply deleted.
Good catch.



>    2881   */
>    2882  int pin_user_pages_fast(unsigned long start, int nr_pages,
>    2883                          unsigned int gup_flags, struct page **pages)
>    2884  {
>    2885          /* FOLL_GET and FOLL_PIN are mutually exclusive. */
>    2886          if (WARN_ON_ONCE(gup_flags & FOLL_GET))
>    2887                  return -EINVAL;
>    2888
>    2889          gup_flags |= FOLL_PIN;
>    2890          return internal_get_user_pages_fast(start, nr_pages, gup_flags, pages);
>    2891  }
>    2892  EXPORT_SYMBOL_GPL(pin_user_pages_fast);
> 
> regards,
> dan carpenter
> 

thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
