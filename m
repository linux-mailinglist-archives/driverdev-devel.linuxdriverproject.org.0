Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0519157A
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 10:17:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F07142151E;
	Sun, 18 Aug 2019 08:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 073I6yGOB3JV; Sun, 18 Aug 2019 08:17:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C3F5820505;
	Sun, 18 Aug 2019 08:16:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A8891BF484
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 08:16:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 975CB850DC
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 08:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Riyb_Ovx9xm8 for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 08:16:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 19A12849BE
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 08:16:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 8558A608311C;
 Sun, 18 Aug 2019 10:16:52 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id dLQLHM2VGAbe; Sun, 18 Aug 2019 10:16:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 3071B6083139;
 Sun, 18 Aug 2019 10:16:52 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id HNzNTCQoIICw; Sun, 18 Aug 2019 10:16:52 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id E7E00608311C;
 Sun, 18 Aug 2019 10:16:50 +0200 (CEST)
Date: Sun, 18 Aug 2019 10:16:50 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Gao Xiang <hsiangkao@aol.com>
Message-ID: <1405781266.69008.1566116210649.JavaMail.zimbra@nod.at>
In-Reply-To: <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190817082313.21040-1-hsiangkao@aol.com>
 <1746679415.68815.1566076790942.JavaMail.zimbra@nod.at>
 <20190817220706.GA11443@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1163995781.68824.1566084358245.JavaMail.zimbra@nod.at>
 <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
Subject: Re: [PATCH] erofs: move erofs out of staging
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: erofs: move erofs out of staging
Thread-Index: ruyGuw+zrtJwjCvvrW6JXcct54lOmw==
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

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBXaGlsZSBkaWdnaW5nIGEgbGl0dGxl
IGludG8gdGhlIGNvZGUgSSBub3RpY2VkIHRoYXQgeW91IGhhdmUgdmVyeSBmZXcKPj4gY2hlY2tz
IG9mIHRoZSBvbi1kaXNrIGRhdGEuCj4+IEZvciBleGFtcGxlIC0+dS5pX2Jsa2FkZHIuIEkgZ2F2
ZSBpdCBhIHRyeSBhbmQgY3JlYXRlZCBhCj4+IG1hbGZvcm1lZCBmaWxlc3lzdGVtIHdoZXJlIHUu
aV9ibGthZGRyIGlzIDB4ZGVhZGJlZWYsIGl0IGNhdXNlcyB0aGUga2VybmVsCj4+IHRvIGxvb3Ag
Zm9yZXZlciBhcm91bmQgZXJvZnNfcmVhZF9yYXdfcGFnZSgpLgo+IAo+IEkgZG9uJ3QgZnV6eiBh
bGwgdGhlIG9uLWRpc2sgZmllbGRzIGZvciBFUk9GUywgSSB3aWxsIGRvIGxhdGVyLi4KPiBZb3Ug
Y2FuIHNlZSBtYW55IGluLWtlcm5lbCBmaWxlc3lzdGVtcyBhcmUgc3RpbGwgaGFyZGVuaW5nIHRo
ZSByZWxhdGVkCj4gc3R1ZmYuIEFueXdheSwgSSB3aWxsIGRpZyBpbnRvIHRoaXMgZmllbGQgeW91
IG1lbnRpb25lZCByZWNlbnRseSwgYnV0Cj4gSSB0aGluayBpdCBjYW4gYmUgZml4ZWQgZWFzaWx5
IGxhdGVyLgoKVGhpcyBpcyBubyBleGN1c2UgdG8gcmVkbyBhbGwgdGhlc2UgYnVncy4gOi0pCgpJ
IGtub3cgdGhhdCBtYW55IGluLWtlcm5lbCBmaWxlc3lzdGVtcyB0cnVzdCB0aGUgZGlzayB1bHRp
bWF0ZWx5LCB0aGlzIGlzIGEKcHJvYmxlbSBhbmQgaHVnZSBhdHRhY2sgdmVjdG9yLgoKVGhhbmtz
LAovL3JpY2hhcmQKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
