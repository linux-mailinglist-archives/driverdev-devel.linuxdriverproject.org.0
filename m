Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A0A9278B
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 16:51:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 124C585F72;
	Mon, 19 Aug 2019 14:51:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ngowshmA3b1; Mon, 19 Aug 2019 14:51:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C4FAC85F5D;
	Mon, 19 Aug 2019 14:51:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 113F81BF36B
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 14:50:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0DFDD22001
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 14:50:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BpdA8xHSXoCu for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 14:50:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 6883F21FFB
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 14:50:23 +0000 (UTC)
Received: from [192.168.0.101] (unknown [180.111.132.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B2752070D;
 Mon, 19 Aug 2019 14:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566226223;
 bh=ymw3Kw+8cxX+oQfkPPvxyyrMYifjiGJnCyi5QOBej5E=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=szZD7vvv8SeH6gvjnceD6e8J8UL1NpP2W6v04Sz7qhA37WjawDfGvmZY+gMo01R9+
 oPhpZN26USZIyWiUJN3WrHsFdMnUzGizZoZpc83Am1NlAd3drloEUoTMtxB1p+XFIO
 sA1sHKdk2WgxYnNbt1nmv69DiBDqTta99OlZE1GE=
Subject: Re: [PATCH 4/6] staging: erofs: avoid loop in submit chains
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-fsdevel@vger.kernel.org
References: <20190819080218.GA42231@138>
 <20190819103426.87579-1-gaoxiang25@huawei.com>
 <20190819103426.87579-5-gaoxiang25@huawei.com>
From: Chao Yu <chao@kernel.org>
Message-ID: <24eacd62-3da1-e6cf-8166-43049dbedcf2@kernel.org>
Date: Mon, 19 Aug 2019 22:50:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190819103426.87579-5-gaoxiang25@huawei.com>
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
Cc: Miao Xie <miaoxie@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>,
 weidu.du@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019-8-19 18:34, Gao Xiang wrote:
> As reported by erofs-utils fuzzer, 2 conditions
> can happen in corrupted images, which can cause
> unexpected behaviors.
>  - access the same pcluster one more time;
>  - access the tail end pcluster again, e.g.
>             _ access again (will trigger tail merging)
>            |
>      1 2 3 1 2             ->   1 2 3 1
>      |_ tail end of the chain    \___/ (unexpected behavior)
> Let's detect and avoid them now.
> 
> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>

Reviewed-by: Chao Yu <yuchao0@huawei.com>

Thanks,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
