Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB6E915E0
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 11:21:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5181020553;
	Sun, 18 Aug 2019 09:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UP8yFOVrQ6Ri; Sun, 18 Aug 2019 09:21:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8819F20505;
	Sun, 18 Aug 2019 09:21:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 611DE1BF376
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 09:21:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5941385C04
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 09:21:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y61NXAZ1Ggqr for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 09:21:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0E05D817F4
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 09:21:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 5CFA4608311C;
 Sun, 18 Aug 2019 11:21:14 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id JMoGDXhMUFAT; Sun, 18 Aug 2019 11:21:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 0F0626083139;
 Sun, 18 Aug 2019 11:21:14 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id i6iE3Ye2OdmJ; Sun, 18 Aug 2019 11:21:13 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 904E6608311C;
 Sun, 18 Aug 2019 11:21:13 +0200 (CEST)
Date: Sun, 18 Aug 2019 11:21:13 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <790210571.69061.1566120073465.JavaMail.zimbra@nod.at>
In-Reply-To: <20190818090949.GA30276@kroah.com>
References: <20190817082313.21040-1-hsiangkao@aol.com>
 <20190817220706.GA11443@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1163995781.68824.1566084358245.JavaMail.zimbra@nod.at>
 <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1405781266.69008.1566116210649.JavaMail.zimbra@nod.at>
 <20190818084521.GA17909@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1133002215.69049.1566119033047.JavaMail.zimbra@nod.at>
 <20190818090949.GA30276@kroah.com>
Subject: Re: [PATCH] erofs: move erofs out of staging
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: erofs: move erofs out of staging
Thread-Index: ZYiHrkrOEpEEHm2sO1Mis8HFSUNWVQ==
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
Cc: Jan Kara <jack@suse.cz>, Amir Goldstein <amir73il@gmail.com>,
 Dave Chinner <david@fromorbit.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Miao Xie <miaoxie@huawei.com>,
 devel <devel@driverdev.osuosl.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Darrick <darrick.wong@oracle.com>, Christoph Hellwig <hch@infradead.org>,
 Chao Yu <yuchao0@huawei.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, tytso <tytso@mit.edu>,
 torvalds <torvalds@linux-foundation.org>, David Sterba <dsterba@suse.cz>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Pavel Machek <pavel@denx.de>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs <linux-erofs@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFlvdSBoYXZlIGxvb2tlZCBhdCByZWlz
ZXJmcyBsYXRlbHksIHJpZ2h0PyAgOikKCkRvbid0IHJlbWluZCBtZSBvZiB0aGF0LiA7LSkKIAo+
IE5vdCB0byBzYXkgdGhhdCBlcm9mcyBzaG91bGRuJ3QgYmUgd29ya2VkIG9uIHRvIGZpeCB0aGVz
ZSBraW5kcyBvZgo+IGlzc3VlcywganVzdCB0aGF0IGl0J3Mgbm90IGFuIHVuaGVhcmQgb2YgdGhp
bmcgdG8gdHJ1c3QgdGhlIGRpc2sgaW1hZ2UuCj4gRXNwZWNpYWxseSBmb3IgdGhlIG5vcm1hbCB1
c2FnZSBtb2RlbCBvZiBlcm9mcywgd2hlcmUgdGhlIHdob2xlIGRpc2sKPiBpbWFnZSBpcyB2ZXJm
aWVkIGJlZm9yZSBpdCBpcyBhbGxvd2VkIHRvIGJlIG1vdW50ZWQgYXMgcGFydCBvZiB0aGUgYm9v
dAo+IHByb2Nlc3MuCgpGb3Igbm9ybWFsIHVzZSBJIHNlZSBubyBwcm9ibGVtIGF0IGFsbC4KSSBm
ZWFyIGRpc3Ryb3MgdGhhdCB0cnkgdG8gbW91bnQgYW55dGhpbmcgeW91IHBsdWcgaW50byB5b3Vy
IFVTQi4KCkF0IGxlYXN0IFNVU0UgYWxyZWFkeSBibGFja2xpc3RzIGVyb2ZzOgpodHRwczovL2dp
dGh1Yi5jb20vb3BlblNVU0Uvc3VzZS1tb2R1bGUtdG9vbHMvYmxvYi9tYXN0ZXIvc3VzZS1tb2R1
bGUtdG9vbHMuc3BlYyNMMjQKClRoYW5rcywKLy9yaWNoYXJkCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
