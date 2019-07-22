Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B6A6F7FA
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 05:30:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C453E203D6;
	Mon, 22 Jul 2019 03:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id utCWWAkKfriw; Mon, 22 Jul 2019 03:30:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B004E203C1;
	Mon, 22 Jul 2019 03:30:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4BF131BF957
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 03:30:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 48A58857EB
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 03:30:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ESXqx6HL2qp8 for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 03:29:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E73FB853B9
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 03:29:58 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 8B5CF8303BF188C45117;
 Mon, 22 Jul 2019 11:29:55 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.201) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 22 Jul
 2019 11:29:48 +0800
Subject: Re: [PATCH v3 01/24] erofs: add on-disk layout
To: Stephen Rothwell <sfr@canb.auug.org.au>
References: <20190722025043.166344-1-gaoxiang25@huawei.com>
 <20190722025043.166344-2-gaoxiang25@huawei.com>
 <20190722132616.60edd141@canb.auug.org.au>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <b1ff773b-eb15-9fdc-77aa-f7446471a1d4@huawei.com>
Date: Mon, 22 Jul 2019 11:29:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190722132616.60edd141@canb.auug.org.au>
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
Cc: devel@driverdev.osuosl.org, Theodore Ts'o <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, linux-erofs@lists.ozlabs.org,
 LKML <linux-kernel@vger.kernel.org>, Li Guifu <bluce.liguifu@huawei.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Stephen,

On 2019/7/22 11:26, Stephen Rothwell wrote:
> Hi Gao,
> 
> On Mon, 22 Jul 2019 10:50:20 +0800 Gao Xiang <gaoxiang25@huawei.com> wrote:
>>
>> diff --git a/fs/erofs/erofs_fs.h b/fs/erofs/erofs_fs.h
>> new file mode 100644
>> index 000000000000..e418725abfd6
>> --- /dev/null
>> +++ b/fs/erofs/erofs_fs.h
>> @@ -0,0 +1,316 @@
>> +/* SPDX-License-Identifier: GPL-2.0 OR Apache-2.0 */
> 
> I think the preferred tag is now GPL-2.0-only (assuming that is what is
> intended).

OK, GPL-2.0-only is much better.
I will change these tags in the next version :)

Thanks,
Gao Xiang

> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
