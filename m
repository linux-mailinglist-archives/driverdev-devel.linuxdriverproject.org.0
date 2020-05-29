Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6FB1E88E5
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 22:28:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3EDBF8944A;
	Fri, 29 May 2020 20:28:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Pk8eFuu6Tp6; Fri, 29 May 2020 20:28:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8862788C30;
	Fri, 29 May 2020 20:28:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 31A281BF346
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:28:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2DD4988551
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:28:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ky+3kdvb9ng for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 20:28:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from hqnvemgate25.nvidia.com (hqnvemgate25.nvidia.com
 [216.228.121.64])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C2FD888550
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 20:28:42 +0000 (UTC)
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ed170250000>; Fri, 29 May 2020 13:27:17 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Fri, 29 May 2020 13:28:42 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Fri, 29 May 2020 13:28:42 -0700
Received: from [10.2.87.173] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 29 May
 2020 20:28:41 +0000
Subject: Re: [PATCH] staging: gasket: Convert get_user_pages*() -->
 pin_user_pages*()
To: Dan Carpenter <dan.carpenter@oracle.com>, Souptick Joarder
 <jrdr.linux@gmail.com>
References: <1590613362-27495-1-git-send-email-jrdr.linux@gmail.com>
 <20200528110408.GJ30374@kadam> <20200529115330.GO30374@kadam>
From: John Hubbard <jhubbard@nvidia.com>
X-Nvconfidentiality: public
Message-ID: <bd1064bf-65ae-2c5f-0dad-b52ae12c2ece@nvidia.com>
Date: Fri, 29 May 2020 13:28:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200529115330.GO30374@kadam>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1590784037; bh=/zEeOofiTZp0ZN4TMVdNueb74rWQtstcMaq8AqpNAXo=;
 h=X-PGP-Universal:Subject:To:CC:References:From:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=TNx4pfV1Oa5Gt92dyvF6CRTaALmkT1IqZLtRev4uhQqtIZ+IAVkhIXy4c/Ktu6Wjk
 3RnO4Goto2RAnvTjfqV+DXrgpiTlBVU6LqoH9louFwwgn/Y72hijNJeeC4Yg6cV7+c
 2WiBK1iZmAjABwfMmFeM5FbeOItOax32HVaTLJvlfxH38v3QjK8pzMDVHK3BzhNdht
 gEPGLsWkNT/2jmvGUFQqlC+KPm/3uVvgbdzWlykBAiRiI+r4/S9wZAUnmm/Pxv7svm
 5ISgugk4zGmuDa8pt3c9viPzCcKg3JPaEPkG3CRoV1ftf6P2vdv9ryHTgf6sVY5nI6
 +1uHGUPhExX6Q==
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 toddpoynor@google.com, rspringer@google.com, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-05-29 04:53, Dan Carpenter wrote:
...
> What are the runtime implications of this patch?  I'm still not clear on
> that honestly.

Instead of incrementing each page's refcount by 1 (with get_user_pages()),
pin_user_pages*() will increment by GUP_PIN_COUNTING_BIAS, which is 1024.
That by itself should not have any performance impact, of course, but
there's a couple more things:

For compound pages of more than 2 page size, it will also increment
a separate struct page's field, via hpage_pincount_add().

And finally, it will update /proc/vmstat counters on pin and unpin, via
the optimized mod_node_page_state() call.

So it's expected to be very light. And, for DMA (as opposed to DIO)
situations, the DMA setup time is inevitably much greater than any of
the above overheads, so I expect that this patch will be completely
invisible from a performance point of view.

It would be a "nice to have", though, if anyone were able to do a
performance comparison on the gasket driver for this patch, and/or
basic runtime verification, since I'm sure it's a specialized setup.


thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
