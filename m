Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA5D97CC3
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 16:24:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B4EEA8884F;
	Wed, 21 Aug 2019 14:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6LrTreh2EqHr; Wed, 21 Aug 2019 14:24:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3BFFD88761;
	Wed, 21 Aug 2019 14:24:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8224C1BF2FA
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 14:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7F3DA887C8
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 14:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9VmuXEtDnaqv for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 14:24:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 16BB488761
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 14:24:29 +0000 (UTC)
Received: from [192.168.0.101] (unknown [180.111.132.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A46DB22D6D;
 Wed, 21 Aug 2019 14:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566397468;
 bh=9ksBVq9fAhzcjSVB61cJ1f0+9AqNBnX70fl6ffNSxOM=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=j20Sm2jz1Cmc2mvnqzcuD6jFCrpjk7WWTUoUgOs4WLl5/tUYXz9HEX5cM4RBVk8MM
 L0n9ZiqxCoNdk+ZcltFzlDnyBGUlRhNm+zXZO3v1Q2PFYhqiq0dknjNY9vqVIjM2Eo
 2inn4NWkmYr1TWDl8VfjXaMs5cM1pHivqiORkjWk=
Subject: Re: [PATCH v2 5/6] staging: erofs: detect potential multiref due to
 corrupted images
To: Gao Xiang <gaoxiang25@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190821021942.GA14087@kroah.com>
 <20190821140152.229648-1-gaoxiang25@huawei.com>
From: Chao Yu <chao@kernel.org>
Message-ID: <e0f76952-2fcf-5d62-d318-f13077913af0@kernel.org>
Date: Wed, 21 Aug 2019 22:24:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190821140152.229648-1-gaoxiang25@huawei.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, Miao Xie <miaoxie@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 weidu.du@huawei.com, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019-8-21 22:01, Gao Xiang wrote:
> As reported by erofs-utils fuzzer, currently, multiref
> (ondisk deduplication) hasn't been supported for now,
> we should forbid it properly.
> 
> Fixes: 3883a79abd02 ("staging: erofs: introduce VLE decompression support")
> Cc: <stable@vger.kernel.org> # 4.19+
> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>

Reviewed-by: Chao Yu <yuchao0@huawei.com>

Thanks,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
