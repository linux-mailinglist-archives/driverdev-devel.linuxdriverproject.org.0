Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A64446F8D8
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 07:25:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B9E58560E;
	Mon, 22 Jul 2019 05:25:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GM0hhXMJ_imu; Mon, 22 Jul 2019 05:25:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 39B0A855CC;
	Mon, 22 Jul 2019 05:25:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14EC71BF421
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 05:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0C21585ADB
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 05:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DEHRFDXTXEVm for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 05:25:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BBFE085AD6
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 05:25:23 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8750EAB3666A593AD324;
 Mon, 22 Jul 2019 13:25:20 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.212) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 22 Jul
 2019 13:25:13 +0800
Subject: Re: [PATCH v3 01/24] erofs: add on-disk layout
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190722025043.166344-1-gaoxiang25@huawei.com>
 <20190722025043.166344-2-gaoxiang25@huawei.com>
 <20190722132616.60edd141@canb.auug.org.au> <20190722050522.GA11993@kroah.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <98b70190-a7d8-6251-84d9-599ca115f42b@huawei.com>
Date: Mon, 22 Jul 2019 13:24:45 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190722050522.GA11993@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Theodore Ts'o <tytso@mit.edu>, linux-erofs@lists.ozlabs.org,
 Miao Xie <miaoxie@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, Li Guifu <bluce.liguifu@huawei.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On 2019/7/22 13:05, Greg Kroah-Hartman wrote:
> On Mon, Jul 22, 2019 at 01:26:16PM +1000, Stephen Rothwell wrote:
>> Hi Gao,
>>
>> On Mon, 22 Jul 2019 10:50:20 +0800 Gao Xiang <gaoxiang25@huawei.com> wrote:
>>>
>>> diff --git a/fs/erofs/erofs_fs.h b/fs/erofs/erofs_fs.h
>>> new file mode 100644
>>> index 000000000000..e418725abfd6
>>> --- /dev/null
>>> +++ b/fs/erofs/erofs_fs.h
>>> @@ -0,0 +1,316 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 OR Apache-2.0 */
>>
>> I think the preferred tag is now GPL-2.0-only (assuming that is what is
>> intended).
> 
> Either is fine, see the LICENSE/preferred/GPL-2.0 file for the list of
> valid ones.

Yes, I noticed the LICENSE text before and I can do in the either way (use
GPL-2.0 or GPL-2.0-only). This modification won't take too much time...
If it is needed, I am happy to do that... That is fine :)

Thanks,
Gao Xiang
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
