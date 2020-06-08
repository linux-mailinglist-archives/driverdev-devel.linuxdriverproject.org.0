Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2961F1FAA
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Jun 2020 21:22:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E857875CA;
	Mon,  8 Jun 2020 19:22:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uVkEfhyglzO4; Mon,  8 Jun 2020 19:22:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 38ACC86439;
	Mon,  8 Jun 2020 19:22:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A6D9D1BF393
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 19:22:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A30A9875BF
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 19:22:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BDr1vMxf+I05 for <devel@linuxdriverproject.org>;
 Mon,  8 Jun 2020 19:22:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from hqnvemgate24.nvidia.com (hqnvemgate24.nvidia.com
 [216.228.121.143])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0B05086FBB
 for <devel@driverdev.osuosl.org>; Mon,  8 Jun 2020 19:22:07 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ede8f840000>; Mon, 08 Jun 2020 12:20:36 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 08 Jun 2020 12:22:06 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 08 Jun 2020 12:22:06 -0700
Received: from [10.2.58.199] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 8 Jun
 2020 19:22:06 +0000
Subject: Re: [PATCH] staging: kpc2000: kpc_dma: Convert get_user_pages() -->
 pin_user_pages()
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <1590947491-11194-1-git-send-email-jrdr.linux@gmail.com>
 <7e725dd0-7423-b85b-ff56-9705419d13b9@nvidia.com>
 <CAFqt6zbsNcHWF-0Na2xMKdJQs2kVkLHTCw=cytvdo+z-axx97Q@mail.gmail.com>
 <5f0c68a0-2cc4-5724-d778-7e9d5fd7dfde@nvidia.com>
 <20200608191635.GA30374@kadam>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <a71c2b68-fc70-a7bf-1d1c-500459639dae@nvidia.com>
Date: Mon, 8 Jun 2020 12:22:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200608191635.GA30374@kadam>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1591644036; bh=M9jnObSRB68t6gXIHyWay4/z8p+apr/yOzEEUHbukOk=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=onJFTihwkiDmWn0fwNOz6NHHGEtz06ewdg9TMRI3wvCU4/QHbSvASc0Mb6jADycOC
 iyTPNU9tvDPIOJekaVGHbaNd929BZ9naGWsgTAAbsNPNhDZlSGm0IYBS0rdBRVFfFF
 TUEnJ3Nf6FZwSjBb1V3UjFYBilTVmauZqCQBkwckfQge/0snTCUCxATNplKaPQ5+on
 5WFO9WGGw939GfIa2coMNDismPpCbs3YmB+aB6213561VHYnSf3ENzTv1oaCtaBiGR
 SVGOqHyAI1ECQdpBIr+Js5aGRyYqiSzf4Gg/C70/t9m3Ij0I8sbpY1C8sz72vXPSGg
 4zl3Y1W7pr5NA==
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
 Souptick Joarder <jrdr.linux@gmail.com>,
 =?UTF-8?Q?Simon_Sandstr=c3=b6m?= <simon@nikanor.nu>, jane.pnx9@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-06-08 12:16, Dan Carpenter wrote:
> On Mon, Jun 08, 2020 at 12:05:57PM -0700, John Hubbard wrote:
>> On 2020-06-08 12:01, Souptick Joarder wrote:
>>> On Mon, Jun 1, 2020 at 7:15 AM John Hubbard <jhubbard@nvidia.com> wrote:
>>>>
>>>> On 2020-05-31 10:51, Souptick Joarder wrote:
>>>>> In 2019, we introduced pin_user_pages*() and now we are converting
>>>>> get_user_pages*() to the new API as appropriate. [1] & [2] could
>>>>> be referred for more information.
>>>>>
>>>>> When pin_user_pages() returns numbers of partially mapped pages,
>>>>> those pages were not unpinned as part of error handling. Fixed
>>>>> it as part of this patch.
>>>>>
>>>>
>>>> Hi Souptick,
>>>>
>>>> btw, Bharath (+cc) attempted to do the "put" side of this, last year.
>>>> That got as far as a v4 patch [1], and then I asked him to let me put
>>>> it into my tree. But then it didn't directly apply anymore after the
>>>> whole design moved to pin+unpin, and so here we are now.
>>>>
>>>>
>>>> If Bharath is still doing kernel work, you might offer him a Co-Developed-by:
>>>> tag (see https://www.kernel.org/doc/html/v4.17/process/submitting-patches.html).
>>>
>>> Sure, will add him as *Co-Developed-by*
>>>>
>>
>>
>> Yes, but it's best to wait and see if he responds, before adding that tag, because
>> it also required a Signed-off-by from him.
> 
> Souptick is porting patches from your tree?  It's not clear to me how
> Bharath actually helped author this patch.


What happened is that Bharath wrote patches very similar to these, last year.
And we spent some time on review and figuring out pre-existing issues in the code.

Anyway, I suspect that he's not actually involved anymore, so I probably shouldn't
have done any more than to just put him on Cc. Sorry for any confusion I created
here.

thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
