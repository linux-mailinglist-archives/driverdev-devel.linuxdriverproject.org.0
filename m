Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 684384739D
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 09:21:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85BEE878E3;
	Sun, 16 Jun 2019 07:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dx+YZfdcgYbT; Sun, 16 Jun 2019 07:21:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1539C8666D;
	Sun, 16 Jun 2019 07:21:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 005C51BF2FA
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 07:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ED2E986193
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 07:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LHjqM2GVtkiA for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 07:21:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4CCEA8614D
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 07:21:46 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5A8BF53647C697CF2FA8;
 Sun, 16 Jun 2019 15:21:38 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.203) with Microsoft SMTP Server (TLS) id 14.3.439.0; Sun, 16 Jun
 2019 15:21:32 +0800
Subject: Re: [PATCH v3 1/2] staging: erofs: add requirements field in
 superblock
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190611024220.86121-1-gaoxiang25@huawei.com>
 <20190613083541.67091-1-gaoxiang25@huawei.com>
 <a4d587eb-c4f0-b9e5-7ece-1ac38c2735f3@huawei.com>
 <20190616071439.GA11880@kroah.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <b2608d35-1d9f-0747-ce3c-ddfd6273e865@huawei.com>
Date: Sun, 16 Jun 2019 15:21:12 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190616071439.GA11880@kroah.com>
X-Originating-IP: [10.151.23.176]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, Chao Yu <yuchao0@huawei.com>,
 Miao Xie <miaoxie@huawei.com>, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 2019/6/16 15:14, Greg Kroah-Hartman wrote:
> On Sun, Jun 16, 2019 at 03:00:38PM +0800, Gao Xiang wrote:
>> Hi Greg,
>>
>> Sorry for annoying... Could you help merge these two fixes? Thanks in advance...
> 
> It was only 3 days, please give me at the very least, a week or so for
> staging patches.
> 
>> decompression inplace optimization needs these two patches and I will integrate
>> erofs decompression inplace optimization later for linux-next 5.3, and try to start 
>> making effort on moving to fs/ directory on kernel 5.4...
> 
> You can always send follow-on patches, I apply them in the correct
> order.  I will get to these next week, thanks.

OK, I was actually just afraid of the appling order. I was thinking of merging
these two patches in advance since the new series has the dependency on these patches.

Thanks,
Gao Xiang

> 
> greg k-h
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
