Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A10E2915CA
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 11:11:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D89885B18;
	Sun, 18 Aug 2019 09:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XXhG-kkCqLQB; Sun, 18 Aug 2019 09:11:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7841C83F31;
	Sun, 18 Aug 2019 09:11:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 959051BF376
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 09:10:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8400887648
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 09:10:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s1SUqog7SbIo for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 09:10:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic303-19.consmr.mail.ir2.yahoo.com
 (sonic303-19.consmr.mail.ir2.yahoo.com [77.238.178.200])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A812287603
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 09:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566119454; bh=ZfAUnaNRphMc59HzVzbyn4+vzEnKeAS8v5SYfU58LNc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=eoVC4BLH16iVVcG5tldg4wUQmUNHIVECVm3o3513+Vf94m19XNOnZhhtbnKc7qoKsChbyMO5EYbj9JYAYjQq7TxxH9KcP2DpMZ0f5Fu3JYLjfN/8XqHYxsik3Xwefa1n0Sk68W7GmMEQGso6Np07TR8Zf7P1RZVMHAtGoDuOA3i5Yi0KWlhDc5+aSsLTkByh2VOCl6cXrtP5hGCJnaXhkL6g07v3tdjiQAkivIw+17XohPl/rCR1u7QuUfQeg0zDnhDJxQQoyKldyFyg4obr9Xt8pbkUdGTIaD/ZkX0SmryVCHMnU/+YUoVajj6FAWlKljEg6zCaNtUnr+Uy4H7MZg==
X-YMail-OSG: _Be5L30VM1my.19GurkHq7K2IMTdgNZFVfkYv7YpsX09giLsThOZ8.TZ5chJ_fP
 xPfPULIwoPEBm7W6T5_rgrwj2dUP0SjCF.gUdUjStzBh1o5wYjPoVbP9rGHU7oukc6OdihHnScWb
 4XZpWlaFMSBGu0eVvQJCGGt5ygCjkcnstHUklCdA1HRat6V9JKNxWF0Fm52f1TAJ3OWjB7SgJgKl
 P.9Dw8gTve.KPenzUZFIAj9NMKzjymVGFbeORJ_Q4k6ScRvwhs4GUA1WuFAETQu9bCl92oYD2fHi
 ZsV4vF9U05IaLh9yIPn6b5LAuG1frL9O04tU0i.SdM8q_.uw6dbB2LICtemKM12CskN8N8p.1jig
 ROyDTBNwKfcm7xEJtd0YCJIWzS55yMpwUX3CWkagaDPAfX.CZuwNroLddVPkcP3u5Gmn62YENdEr
 JjeLm2dM8pn_Y2WiZHMmlKG57Mzl2HCwTxFg4jorV_0EpMmrh2dnbeoCKdVPnTjMWuGU8jZpXAkN
 AuQZOQii6mSP1ehnKM497JmTw4uMC.Xs9wQaPk__CtQQ.8fqA6l0N8SNhZe_ANw9Adkq1T4NkjV0
 PxoYVsU_kXJFK1yK2.TEPaSPlWK2jcpCzJsVUKS1JXj5F5F5IlhjKeGUvSM6Kf0GV9n84YzxJJn1
 gTgUjmPCb8e9rLZdkv7iL1v5no_uP72U3BCQoKlrvuGGc2i5WhL6FuVMPpzAWU6LO__7oNZOt.3i
 Q52ttpIItth0VkIiy8o7Oms6FMe7EUeH6DAtGkf9X0f0Z8lht6RiJLoY68W.ene9C26HG_d0k5W_
 TH1er_jx1qsQjmTmiHk0BCwfYA.nltzKUosUe_d.2huiA_s9ODcrwesTuye2Nwu7AqqxDcrsDCeK
 n9ebKN41KN3.wAdZdvlIqzxL.eqWwSrnim4.8Pl2K6O4a4qSPeCRj5U7u5OnOiDC6Jr7oLFa_M.U
 Kgpua10Kz_jKzZhXOkHiZqJ8k_vsywLd0bxx2ooELzdL0rdvBsJeh1zJwSrMfdXvMZVEL9nSHBLy
 Q6zQsRLzLFHaPNgRkjyyQZ.yc880xHNR6Iwocx_5h0FRisT5Yep08HYVpo0ykW.1ubfqd9qNtFX5
 NbVP1WTryoQ38ujFXrGCDDOn4IoWFENK_vGZ91BTRl0WEMmaHEIyrmmktkApDqdLq611pO9pBeMm
 1zwcoQch_XlzLqT5pa5f9vXmMZDXA0g5rUphpoYgYHvi1dTAzfFqucxiPjLT09msLRQH0Kn4p.7Z
 LPunJrCGj20zrNPrY3EJe8l3J.6sWtBXZkV4-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic303.consmr.mail.ir2.yahoo.com with HTTP; Sun, 18 Aug 2019 09:10:54 +0000
Received: by smtp426.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 7721cff3e87029626441dfef21e0dc4d; 
 Sun, 18 Aug 2019 09:10:52 +0000 (UTC)
Date: Sun, 18 Aug 2019 17:10:38 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH v3 RESEND] staging: erofs: fix an error handling in
 erofs_readdir()
Message-ID: <20190818091037.GB17909@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190818030109.GA8225@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190818032111.9862-1-hsiangkao@aol.com>
 <35138595.69023.1566117213033.JavaMail.zimbra@nod.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <35138595.69023.1566117213033.JavaMail.zimbra@nod.at>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel <devel@driverdev.osuosl.org>, Chao Yu <chao@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, linux-kernel <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, stable <stable@vger.kernel.org>,
 linux-erofs <linux-erofs@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Richard,

On Sun, Aug 18, 2019 at 10:33:33AM +0200, Richard Weinberger wrote:
> ----- Urspr?ngliche Mail -----
> > changelog from v2:
> > - transform EIO to EFSCORRUPTED as suggested by Matthew;
> 
> erofs does not define EFSCORRUPTED, so the build fails.
> At least on Linus' tree as of today.

Thanks for your reply :)

I write all patches based on staging tree and do more cleanups further
than Linus' tree, EFSCORRUPTED was already introduced by Pavel days before...
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?h=staging-testing&id=a6b9b1d5eae61a68085030e50d56265dec5baa94

which can be fetched from
git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git -b staging-next

Thanks,
Gao Xiang

> 
> Thanks,
> //richard
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
