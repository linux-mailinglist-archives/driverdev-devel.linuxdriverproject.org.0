Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E4A916BB
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 15:17:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7BCF685C47;
	Sun, 18 Aug 2019 13:17:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E_kt7tpwb_yB; Sun, 18 Aug 2019 13:17:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FF5F85AF1;
	Sun, 18 Aug 2019 13:17:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 106F61BF3BC
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 13:17:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0D5B785B0C
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 13:17:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ME1VcR6Ufep for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 13:17:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5FBA085AF1
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 13:17:12 +0000 (UTC)
Received: from [192.168.0.101] (unknown [180.111.132.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6765C20673;
 Sun, 18 Aug 2019 13:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566134232;
 bh=EHAg19dhuoUw2RPhHf/01UOmpOQq9u8V/sPWJh9P9hk=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=p2XTujf78t56CPTrbS/mPW6FtvPSuulqBnBLybpc47xapTQsH7RHTZNEh5x9Hs3WY
 bdhzAJdyXH/ZTbYGePHEJR7izYevxiOfdnS/3HAjoG8JqTIh4E6c5Z3CCcXUPcBjjZ
 fpILNq8whh9b+0a+7i80xIqSt1pqAEnYExspt+8s=
Subject: Re: [PATCH] staging: erofs: refuse to mount images with malformed
 volume name
To: Gao Xiang <hsiangkao@aol.com>, Chao Yu <yuchao0@huawei.com>,
 Richard Weinberger <richard@nod.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-fsdevel@vger.kernel.org
References: <20190818102824.22330-1-hsiangkao@aol.com>
From: Chao Yu <chao@kernel.org>
Message-ID: <d8bca74f-62db-29c2-1165-48b491ad4118@kernel.org>
Date: Sun, 18 Aug 2019 21:17:06 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190818102824.22330-1-hsiangkao@aol.com>
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
Cc: Miao Xie <miaoxie@huawei.com>, linux-erofs@lists.ozlabs.org,
 LKML <linux-kernel@vger.kernel.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019-8-18 18:28, Gao Xiang wrote:
> From: Gao Xiang <gaoxiang25@huawei.com>
> 
> As Richard reminder [1], A valid volume name should be
> ended in NIL terminator within the length of volume_name.
> 
> Since this field currently isn't really used, let's fix
> it to avoid potential bugs in the future.
> 
> [1] https://lore.kernel.org/r/1133002215.69049.1566119033047.JavaMail.zimbra@nod.at/
> 
> Reported-by: Richard Weinberger <richard@nod.at>
> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>

Reviewed-by: Chao Yu <yuchao0@huawei.com>

Thanks,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
