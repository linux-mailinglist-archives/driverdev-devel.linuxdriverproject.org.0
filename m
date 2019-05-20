Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 230B2229ED
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 04:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D10C84266;
	Mon, 20 May 2019 02:19:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uN2mUgej9zc6; Mon, 20 May 2019 02:19:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D3AA18306B;
	Mon, 20 May 2019 02:19:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C32E1BF860
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 02:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 72BC722128
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 02:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WfNtELgFZu6x for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 02:19:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by silver.osuosl.org (Postfix) with ESMTPS id 8842C2152B
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 02:19:34 +0000 (UTC)
Received: from DGGEMM404-HUB.china.huawei.com (unknown [172.30.72.57])
 by Forcepoint Email with ESMTP id 33258A94430EA34FB044;
 Mon, 20 May 2019 10:19:31 +0800 (CST)
Received: from dggeme763-chm.china.huawei.com (10.3.19.109) by
 DGGEMM404-HUB.china.huawei.com (10.3.20.212) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 20 May 2019 10:19:24 +0800
Received: from [10.134.22.195] (10.134.22.195) by
 dggeme763-chm.china.huawei.com (10.3.19.109) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 20 May 2019 10:19:23 +0800
Subject: Re: [PATCH v2] staging: erofs: fix Warning Use BUG_ON instead of if
 condition followed by BUG
To: Gao Xiang <hsiangkao@aol.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
References: <20190518173331.GA1069@hari-Inspiron-1545>
 <20190519093557.20982-1-hsiangkao@aol.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <fbda7165-1276-1fca-0206-de603d48b309@huawei.com>
Date: Mon, 20 May 2019 10:19:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190519093557.20982-1-hsiangkao@aol.com>
Content-Language: en-US
X-Originating-IP: [10.134.22.195]
X-ClientProxiedBy: dggeme720-chm.china.huawei.com (10.1.199.116) To
 dggeme763-chm.china.huawei.com (10.3.19.109)
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019/5/19 17:35, Gao Xiang wrote:
> From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> 
> fix below warning reported by  coccicheck
> 
> drivers/staging/erofs/unzip_pagevec.h:74:2-5: WARNING: Use BUG_ON
> instead of if condition followed by BUG.
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> [ Gao Xiang: use DBG_BUGON instead of BUG_ON for eng version only. ]
> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>

Reviewed-by: Chao Yu <yuchao0@huawei.com>

Thanks,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
