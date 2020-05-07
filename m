Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 777EB1C9986
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 May 2020 20:44:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA4FF89685;
	Thu,  7 May 2020 18:44:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SBHoqSSbWPSM; Thu,  7 May 2020 18:44:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E4CC89669;
	Thu,  7 May 2020 18:44:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4D5F51BF407
 for <devel@linuxdriverproject.org>; Thu,  7 May 2020 18:44:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4A15487708
 for <devel@linuxdriverproject.org>; Thu,  7 May 2020 18:44:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4vhwpLHVwJuJ for <devel@linuxdriverproject.org>;
 Thu,  7 May 2020 18:44:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from hqnvemgate25.nvidia.com (hqnvemgate25.nvidia.com
 [216.228.121.64])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6C34D86E69
 for <devel@driverdev.osuosl.org>; Thu,  7 May 2020 18:44:24 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5eb456c00000>; Thu, 07 May 2020 11:43:12 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 07 May 2020 11:44:23 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 07 May 2020 11:44:23 -0700
Received: from [10.2.55.176] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 7 May
 2020 18:44:23 +0000
Subject: Re: [RFC] mm/gup.c: Updated return value of
 {get|pin}_user_pages_fast()
To: Souptick Joarder <jrdr.linux@gmail.com>, Jan Kara <jack@suse.cz>
References: <1588706059-4208-1-git-send-email-jrdr.linux@gmail.com>
 <0bfe4a8a-0d91-ef9b-066f-2ea7c68571b3@nvidia.com>
 <CAFqt6zZMsQkOdjAb2k1EjwX=DtZ8gKfbRzwvreHOX-0vJLngNg@mail.gmail.com>
 <20200506100649.GI17863@quack2.suse.cz>
 <CAFqt6zYaNkJ4AfVzutXS=JsN4fE41ZAvnw03vHWpdyiRHY1m_w@mail.gmail.com>
 <20200506125930.GJ17863@quack2.suse.cz>
 <CAFqt6zZztn_AiaGAhV+_uwrnVdKY-xLsxOwYBt-zGmLaat+OhQ@mail.gmail.com>
 <20200507101322.GB30922@quack2.suse.cz>
 <CAFqt6zZ2pj_6q=5kf9dxOsSkHc7vJEHgCjuRmSELQF9KnoKCxA@mail.gmail.com>
From: John Hubbard <jhubbard@nvidia.com>
X-Nvconfidentiality: public
Message-ID: <03bbc0f3-8edc-6110-6391-e540f773954c@nvidia.com>
Date: Thu, 7 May 2020 11:44:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAFqt6zZ2pj_6q=5kf9dxOsSkHc7vJEHgCjuRmSELQF9KnoKCxA@mail.gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1588876992; bh=s0GB/xjC+YXiEqpbpZ38ACIIfPDrfZoEl489zOuwW70=;
 h=X-PGP-Universal:Subject:To:CC:References:From:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=FkNbon+/lZBBjz9hvkzpf8XLqnxFhTzELzTdyEKvRurk0aqMSHwD85ZQ4E7KrBaQR
 yvRSZEof1rMLcBARCOie6dDXHCRtJ6bX5o0M/30EtLT8wkidpsRgm1sAq5o8X1AYEf
 ig/myAgWJBZambQrAm4QfpVWNRzk5lA/cuF17BMOs/H00NIHnt/EiCv2Mi0MJgUaW8
 h/Tgfv4rUsuFQMKZC8/Z5izGkLhmkLb136CD93D+e6sy5bQZdnUnwN6nDSEOWnLbny
 Lxw9pZdGOYtcDe5ymjtNUpKpBQUA87UMJMZ88DSlXVfnnIQYcIsGYSNMo4qeVJRrUS
 szSLg14PEX/NQ==
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
Cc: "open
 list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>, fenghua.yu@intel.com,
 rds-devel@oss.oracle.com, Tony Luck <tony.luck@intel.com>,
 "David S. Miller" <davem@davemloft.net>, linux-rdma@vger.kernel.org,
 Greg KH <gregkh@linuxfoundation.org>, santosh.shilimkar@oracle.com,
 linux-kernel@vger.kernel.org, Jens Wiklander <jens.wiklander@linaro.org>,
 tee-dev@lists.linaro.org, Linux-MM <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 inux-ia64@vger.kernel.org, Rob Springer <rspringer@google.com>,
 netdev@vger.kernel.org, kuba@kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Todd Poynor <toddpoynor@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-05-07 03:32, Souptick Joarder wrote:
...
>> OK, so no real problem with any of these callers. I still don't see a
>> justification for the churn you suggest... Auditting all those code sites
>> is going to be pretty tedious.
> 
> I try to audit all 42 callers of {get|pin}_user_pages_fast() and
> figure out these 5 callers
> which need to be updated and I think, other callers of
> {get|pin}_user_pages_fast() will not be
> effected.
> 
> But I didn't go through other variants of gup/pup except
> {get|pin}_user_pages_fast().


I feel the need to apologize for suggesting that a change to -EINVAL
would help. :)

If you change what the return value means, but only apply it the
gup/pup _fast() variants of this API set, that would make
the API significantly *worse*.

Also, no one has been able to come up with a scenario in which the call
sites actually have a problem handling return values of zero. In fact,
on the contrary: there are call site where returning 0 after being
requested to pin zero pages, helps simplify the code. For example, if
they're just doing math such as "if(nr_expected != nr_pages_pinned) ...".


This looks like a complete dead end, sorry.

thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
