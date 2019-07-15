Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D482B69A8F
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 20:10:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5356D85EEF;
	Mon, 15 Jul 2019 18:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ozutuGDkAJtB; Mon, 15 Jul 2019 18:10:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5C7785CAA;
	Mon, 15 Jul 2019 18:10:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A5AA1BF385
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 18:10:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 966D786D08
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 18:10:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tU7Am77Vb7LE for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 18:10:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hqemgate14.nvidia.com (hqemgate14.nvidia.com [216.228.121.143])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EB729827A7
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 18:10:22 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d2cc18d0000>; Mon, 15 Jul 2019 11:10:22 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 15 Jul 2019 11:10:22 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 15 Jul 2019 11:10:22 -0700
Received: from [10.110.48.28] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 15 Jul
 2019 18:10:21 +0000
Subject: Re: [PATCH] mm/gup: Use put_user_page*() instead of put_page*()
To: Bharath Vedartham <linux.bhar@gmail.com>
References: <1563131456-11488-1-git-send-email-linux.bhar@gmail.com>
 <deea584f-2da2-8e1f-5a07-e97bf32c63bb@nvidia.com>
 <20190715065654.GA3716@bharath12345-Inspiron-5559>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <1aeb21d9-6dc6-c7d2-58b6-279b1dfc523b@nvidia.com>
Date: Mon, 15 Jul 2019 11:10:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715065654.GA3716@bharath12345-Inspiron-5559>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563214222; bh=6wwgTZKS6jiJbEQByxUeIS9VuTtgekUJNWGw3cfIDgA=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Ok4pi/aW8U3yjBXqydhqyft24fqK5kLZb9vqN2v2ZscUA+LO0TUEntZeQFXwWM9mI
 LSrTQjPbgBURTVuTHsTSQsCgjCENvKuaFyzKLw2XoaWgUj+WvDafd8mw0VAnM6FcQ+
 +2MQLOvD9ImnAuT4gp9Ms08kG21euR6h30TCsuEWJ6lWOGD9RwjSXqHq846/IAB2oQ
 2xzmb3rUlMkYnUIwMFCjvBWCfVAdsKWykA4pdAEfJW4vFSKPaT2m4A9YAlaep+ltqs
 dnlEdJPni78MkMkdBjFMKskTkkSUDUGV5x/f03KwhrKwKXSc4NX56A3yXabbvoTqDL
 9Z2efhUFKhX1Q==
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>, kvm@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, Alexei Starovoitov <ast@kernel.org>,
 Keith Busch <keith.busch@intel.com>, Max Filippov <jcmvbkbc@gmail.com>,
 devel@driverdev.osuosl.org, Dimitri Sivanich <sivanich@sgi.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org,
 xdp-newbies@vger.kernel.org, Jesper Dangaard Brouer <hawk@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-block@vger.kernel.org,
 Alexios Zavras <alexios.zavras@intel.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, bpf@vger.kernel.org,
 Magnus Karlsson <magnus.karlsson@intel.com>, Jens Axboe <axboe@kernel.dk>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, Enrico Weigelt <info@metux.net>,
 "David S. Miller" <davem@davemloft.net>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/14/19 11:56 PM, Bharath Vedartham wrote:
> On Sun, Jul 14, 2019 at 04:33:42PM -0700, John Hubbard wrote:
>> On 7/14/19 12:08 PM, Bharath Vedartham wrote:
[...]
>> 1. Pull down https://github.com/johnhubbard/linux/commits/gup_dma_core
>> and find missing conversions: look for any additional missing 
>> get_user_pages/put_page conversions. You've already found a couple missing 
>> ones. I haven't re-run a search in a long time, so there's probably even more.
>> 	a) And find more, after I rebase to 5.3-rc1: people probably are adding
>> 	get_user_pages() calls as we speak. :)
> Shouldn't this be documented then? I don't see any docs for using
> put_user_page*() in v5.2.1 in the memory management API section?

Yes, it needs documentation. My first try (which is still in the above git
repo) was reviewed and found badly wanting, so I'm going to rewrite it. Meanwhile,
I agree that an interim note would be helpful, let me put something together.

[...]
>>     https://github.com/johnhubbard/linux/commits/gup_dma_core
>>
>>     a) gets rebased often, and
>>
>>     b) has a bunch of commits (iov_iter and related) that conflict
>>        with the latest linux.git,
>>
>>     c) has some bugs in the bio area, that I'm fixing, so I don't trust
>>        that's it's safely runnable, for a few more days.
> I assume your repo contains only work related to fixing gup issues and
> not the main repo for gup development? i.e where gup changes are merged?

Correct, this is just a private tree, not a maintainer tree. But I'll try to
keep the gup_dma_core branch something that is usable by others, during the
transition over to put_user_page(), because the page-tracking patches are the
main way to test any put_user_page() conversions.

As Ira said, we're using linux-mm as the real (maintainer) tree.


thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
