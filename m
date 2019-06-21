Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5274E1F5
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 10:33:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BDEFA86DFF;
	Fri, 21 Jun 2019 08:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Ma57ydSr+sj; Fri, 21 Jun 2019 08:33:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 555C0865C4;
	Fri, 21 Jun 2019 08:33:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4EC951BF2AA
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 08:33:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 480EF87F34
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 08:33:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AdalqyELWwJZ for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 08:33:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F0FF587F1F
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 08:33:06 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C084FA8D8536B19F0AEB;
 Fri, 21 Jun 2019 16:33:01 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 21 Jun
 2019 16:32:52 +0800
Subject: Re: [PATCH v2 3/8] staging: erofs: move per-CPU buffers
 implementation to utils.c
To: Chao Yu <yuchao0@huawei.com>
References: <20190620160719.240682-1-gaoxiang25@huawei.com>
 <20190620160719.240682-4-gaoxiang25@huawei.com>
 <1d296b86-69e2-4888-2ac9-1d77f38ac3e3@huawei.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <abe96e3d-cda7-e71e-68b1-9669fe2f2241@huawei.com>
Date: Fri, 21 Jun 2019 16:32:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1d296b86-69e2-4888-2ac9-1d77f38ac3e3@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Miao Xie <miaoxie@huawei.com>, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Du Wei <weidu.du@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chao,

On 2019/6/21 15:57, Chao Yu wrote:
> On 2019/6/21 0:07, Gao Xiang wrote:
>> +static inline void *erofs_get_pcpubuf(unsigned int pagenr)
>> +{
>> +	return ERR_PTR(-ENOTSUPP);
>> +}
> 
> [snip]
> 
>> +	percpu_data = erofs_get_pcpubuf(0);
> 
> If erofs_get_pcpubuf may return error once EROFS_PCPUBUF_NR_PAGES equals to
> zero, we'd better to check the error number here.

decompressor.c will be built-in only when decompression is enabled
and if decompression is enabled EROFS_PCPUBUF_NR_PAGES is not zero.

But I think introducing some error handling logic is not bad as well.
Will fix in the next version.

Thanks,
Gao Xiang

> 
> Thanks,
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
