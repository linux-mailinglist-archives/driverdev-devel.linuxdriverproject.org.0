Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0978915AC
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 11:04:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9FCE1841DA;
	Sun, 18 Aug 2019 09:04:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uDtVrEuwwsTH; Sun, 18 Aug 2019 09:04:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6AF4081439;
	Sun, 18 Aug 2019 09:03:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 86D701BF3CC
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 09:03:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 830E885742
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 09:03:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cesCR_OEOcK8 for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 09:03:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DA19D85184
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 09:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 47E59608311C;
 Sun, 18 Aug 2019 11:03:54 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id oPN-VV6EAqFe; Sun, 18 Aug 2019 11:03:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id D4E906083139;
 Sun, 18 Aug 2019 11:03:53 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 6BRG8VH4p6ay; Sun, 18 Aug 2019 11:03:53 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 369BA608311C;
 Sun, 18 Aug 2019 11:03:53 +0200 (CEST)
Date: Sun, 18 Aug 2019 11:03:53 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Gao Xiang <hsiangkao@aol.com>
Message-ID: <1133002215.69049.1566119033047.JavaMail.zimbra@nod.at>
In-Reply-To: <20190818084521.GA17909@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190817082313.21040-1-hsiangkao@aol.com>
 <1746679415.68815.1566076790942.JavaMail.zimbra@nod.at>
 <20190817220706.GA11443@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1163995781.68824.1566084358245.JavaMail.zimbra@nod.at>
 <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1405781266.69008.1566116210649.JavaMail.zimbra@nod.at>
 <20190818084521.GA17909@hsiangkao-HP-ZHAN-66-Pro-G1>
Subject: Re: [PATCH] erofs: move erofs out of staging
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: erofs: move erofs out of staging
Thread-Index: zPcjjr8wUC8isJCGfxMEFAfBoxlmEA==
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
Cc: Jan Kara <jack@suse.cz>, Chao Yu <yuchao0@huawei.com>,
 Dave Chinner <david@fromorbit.com>, David Sterba <dsterba@suse.cz>,
 Miao Xie <miaoxie@huawei.com>, devel <devel@driverdev.osuosl.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Darrick <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 linux-erofs <linux-erofs@lists.ozlabs.org>, Al Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, tytso <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Pavel Machek <pavel@denx.de>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IEkgYWdyZWUgd2l0aCB5b3UsIGJ1dCB3
aGF0IGNhbiB3ZSBkbyBub3cgaXMgdHJ5aW5nIG91ciBiZXN0IHRvIGZ1enoKPiBhbGwgdGhlIGZp
ZWxkcy4KPiAKPiBTbywgd2hhdCBpcyB5b3VyIG9waW5pb24gYWJvdXQgRVJPRlM/CgpBbGwgSSdt
IHNheWluZyBpcyB0aGF0IHlvdSBzaG91bGQgbm90IGJsaW5kbHkgdHJ1c3QgdGhlIGRpc2suCgpB
bm90aGVyIHRoaW5nIHRoYXQgcmFpc2VzIG15IGF0dGVudGlvbiBpcyBpbiBzdXBlcmJsb2NrX3Jl
YWQoKToKICAgICAgICBtZW1jcHkoc2JpLT52b2x1bWVfbmFtZSwgbGF5b3V0LT52b2x1bWVfbmFt
ZSwKICAgICAgICAgICAgICAgc2l6ZW9mKGxheW91dC0+dm9sdW1lX25hbWUpKTsKCldoZXJlIGRv
IHlvdSBjaGVjayB3aGV0aGVyIC0+dm9sdW1lX25hbWUgaGFzIGEgTlVMIHRlcm1pbmF0b3I/CkN1
cnJlbnRseSB0aGlzIGZpZWxkIGhhcyBubyB1c2VyLCBtYXliZSB3aWxsIGFkZCBhIGNoZWNrIHVw
b24gdXNhZ2UuCkJ1dCB0aGlzIGtpbmQgb2YgdGhpbmdzIG1ha2VzIG1lIHdvbmRlci4KClRoYW5r
cywKLy9yaWNoYXJkCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
