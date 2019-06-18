Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C02498B6
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 07:47:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D500857CB;
	Tue, 18 Jun 2019 05:47:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5koK-F0rEmMR; Tue, 18 Jun 2019 05:47:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 115FF853C3;
	Tue, 18 Jun 2019 05:47:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F4E51BF32B
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 05:47:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1C7D92049D
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 05:47:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4zwT+N028Ldp for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 05:47:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id A1CC5203F6
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 05:47:12 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1F6C213F2;
 Tue, 18 Jun 2019 05:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560836832;
 bh=2ugJ+4jbEDNf3IaKlqSNtduwn51MkrS5VDiaJCRhmYc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=siWcg5jv7S7enP/dNIGa2avKBd20kFJLLKKmDQOd50TmtgVpdF/ODiH9jSweJauM4
 nNPzX4HXmKyOyAqer94mO0tPqUW5raXp9pZaSocIvPrazoQm2xEnZMfxq9gCL/zAqe
 yPvtYsSUnHMEpRz+yzv515R9CO3+aPiZgySE+QsE=
Date: Tue, 18 Jun 2019 07:47:09 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [RFC PATCH 0/8] staging: erofs: decompression inplace approach
Message-ID: <20190618054709.GA4271@kroah.com>
References: <20190614181619.64905-1-gaoxiang25@huawei.com>
 <20190617203609.GA22034@kroah.com>
 <c86d3fc0-8b4a-6583-4309-911960fbe862@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c86d3fc0-8b4a-6583-4309-911960fbe862@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org, chao@kernel.org,
 LKML <linux-kernel@vger.kernel.org>, weidu.du@huawei.com,
 Fang Wei <fangwei1@huawei.com>, linux-fsdevel@vger.kernel.org,
 Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 18, 2019 at 09:47:08AM +0800, Gao Xiang wrote:
> 
> 
> On 2019/6/18 4:36, Greg Kroah-Hartman wrote:
> > On Sat, Jun 15, 2019 at 02:16:11AM +0800, Gao Xiang wrote:
> >> At last, this is RFC patch v1, which means it is not suitable for
> >> merging soon... I'm still working on it, testing its stability
> >> these days and hope these patches get merged for 5.3 LTS
> >> (if 5.3 is a LTS version).
> > 
> > Why would 5.3 be a LTS kernel?
> > 
> > curious as to how you came up with that :)
> 
> My personal thought is about one LTS kernel one year...
> Usually 5 versions after the previous kernel...(4.4 -> 4.9 -> 4.14 -> 4.19),
> which is not suitable for all historical LTSs...just prepare for 5.3...

I try to pick the "last" kernel that is released each year, which
sometimes is 5 kernels, sometimes 4, sometimes 6, depending on the
release cycle.

So odds are it will be 5.4 for the next LTS kernel, but we will not know
more until it gets closer to release time.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
