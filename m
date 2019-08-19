Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F629273D
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 16:43:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E280F8675F;
	Mon, 19 Aug 2019 14:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P0Q0srOX36Np; Mon, 19 Aug 2019 14:43:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98AED866F6;
	Mon, 19 Aug 2019 14:43:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5BB91BF36B
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 14:43:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AFC3887DB2
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 14:43:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WgZ6wGxs1O3F for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 14:43:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 446E58618C
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 14:43:31 +0000 (UTC)
Received: from [192.168.0.101] (unknown [180.111.132.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78FCE2070D;
 Mon, 19 Aug 2019 14:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566225811;
 bh=mg7wpQqI+knk/uHjwLJFGO8j6H4IuCQ24kKaay86NeQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=gZtE/7L6ogJOIpE0DRbvf0ujK5r0mLjMBaDuX6EusC0a/MTVN0c0dTqDlkhtERkHH
 ++3CdRguWrr6gwE2szGk9m/bTR12uyWjiB8jECF/fkkO5PsV/xTSgmkGSlMCklsYY4
 jerBG5WCvu2u2QxU3hoEaU6t2S2PLdK3zvnqt7iE=
Subject: Re: [PATCH 2/6] staging: erofs: cannot set EROFS_V_Z_INITED_BIT if
 fill_inode_lazy fails
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-fsdevel@vger.kernel.org
References: <20190819080218.GA42231@138>
 <20190819103426.87579-1-gaoxiang25@huawei.com>
 <20190819103426.87579-3-gaoxiang25@huawei.com>
From: Chao Yu <chao@kernel.org>
Message-ID: <22896e81-3474-2cc3-8023-744814f99549@kernel.org>
Date: Mon, 19 Aug 2019 22:43:25 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190819103426.87579-3-gaoxiang25@huawei.com>
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
Cc: linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019-8-19 18:34, Gao Xiang wrote:
> As reported by erofs-utils fuzzer, unsupported compressed
> clustersize will make fill_inode_lazy fail, for such case
> we cannot set EROFS_V_Z_INITED_BIT since we need return
> failure for each z_erofs_map_blocks_iter().
> 
> Fixes: 152a333a5895 ("staging: erofs: add compacted compression indexes support")
> Cc: <stable@vger.kernel.org> # 5.3+
> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>

Reviewed-by: Chao Yu <yuchao0@huawei.com>

Thanks,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
