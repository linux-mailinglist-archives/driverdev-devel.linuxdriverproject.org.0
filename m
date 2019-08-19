Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7010091DFF
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 09:37:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CCEA920486;
	Mon, 19 Aug 2019 07:37:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WZJQuM8WtMkX; Mon, 19 Aug 2019 07:37:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 58DEC2047F;
	Mon, 19 Aug 2019 07:37:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6485D1BF393
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 07:37:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5EF1785B7C
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 07:37:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vzby1WCgqhP3 for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 07:37:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1481085C10
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 07:37:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 118A16058367;
 Mon, 19 Aug 2019 09:37:13 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Gh0H5-M7pMI1; Mon, 19 Aug 2019 09:37:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id B7A976058372;
 Mon, 19 Aug 2019 09:37:12 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id X0QRCQyW7zBU; Mon, 19 Aug 2019 09:37:12 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 5557F6058367;
 Mon, 19 Aug 2019 09:37:12 +0200 (CEST)
Date: Mon, 19 Aug 2019 09:37:12 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <1608410274.69654.1566200232285.JavaMail.zimbra@nod.at>
In-Reply-To: <20190818174702.GA17633@infradead.org>
References: <1405781266.69008.1566116210649.JavaMail.zimbra@nod.at>
 <790210571.69061.1566120073465.JavaMail.zimbra@nod.at>
 <20190818151154.GA32157@mit.edu> <20190818155812.GB13230@infradead.org>
 <20190818161638.GE1118@sol.localdomain>
 <20190818162201.GA16269@infradead.org>
 <20190818172938.GA14413@sol.localdomain>
 <20190818174702.GA17633@infradead.org>
Subject: Re: [PATCH] erofs: move erofs out of staging
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: erofs: move erofs out of staging
Thread-Index: J92t0JNToP0kTJc8zt++O7kugCUZWw==
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
 Darrick <darrick.wong@oracle.com>, torvalds <torvalds@linux-foundation.org>,
 Chao Yu <yuchao0@huawei.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, tytso <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, Pavel Machek <pavel@denx.de>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs <linux-erofs@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IE9uIFN1biwgQXVnIDE4LCAyMDE5IGF0
IDEwOjI5OjM4QU0gLTA3MDAsIEVyaWMgQmlnZ2VycyB3cm90ZToKPj4gTm90IHN1cmUgd2hhdCB5
b3UncmUgZXZlbiBkaXNhZ3JlZWluZyB3aXRoLCBhcyBJICpkbyogZXhwZWN0IG5ldyBmaWxlc3lz
dGVtcyB0bwo+PiBiZSBoZWxkIHRvIGEgaGlnaCBzdGFuZGFyZCwgYW5kIHRvIGJlIHdyaXR0ZW4g
d2l0aCB0aGUgYXNzdW1wdGlvbiB0aGF0IHRoZQo+PiBvbi1kaXNrIGRhdGEgbWF5IGJlIGNvcnJ1
cHRlZCBvciBtYWxpY2lvdXMuICBXZSBqdXN0IGNhbid0IGV4cGVjdCB0aGUgYmFyIHRvIGJlCj4+
IHNvIGhpZ2ggKGUuZy4gbm8gYnVncykgdGhhdCBpdCdzIG5ldmVyIGJlZW4gYXR0YWluZWQgYnkg
KmFueSogZmlsZXN5c3RlbSBldmVuCj4+IGFmdGVyIHllYXJzL2RlY2FkZXMgb2YgYWN0aXZlIGRl
dmVsb3BtZW50LiAgSWYgdGhlIGRldmVsb3BlcnMgd2VyZSBjYXJlZnVsLCB0aGUKPj4gY29kZSBn
ZW5lcmFsbHkgbG9va3Mgcm9idXN0LCBhbmQgdGhleSBhcmUgd2lsbGluZyB0byBhZGRyZXNzIHN1
Y2ggYnVncyBhcyB0aGV5Cj4+IGFyZSBmb3VuZCwgcmVhbGlzdGljYWxseSB0aGF0J3MgYXMgZ29v
ZCBhcyB3ZSBjYW4gZXhwZWN0IHRvIGdldC4uLgo+IAo+IFdlbGwsIHRoZSBpbXByZXNzaW9uIEkg
Z290IGZyb20gUmljaGFyZHMgcXVpY2sgbG9vayBhbmQgdGhlIHJlcGx5IHRvIGl0IGlzCj4gdGhh
dCB0aGVyZSBpcyB2ZXJ5IGxpdHRsZSBhdHRlbXB0IHRvIHZhbGlkYXRlIHRoZSBvbmRpc2sgZGF0
YSBzdHJ1Y3R1cmUKPiBhbmQgdGhlcmUgaXMgYWJzb2x1dGVseSBubyBwcmlvcml0eSB0byBkbyBz
by4gIFdoaWNoIGlzIHZlcnkgZGlmZmVyZW50Cj4gZnJvbSB0aGVyZSBpcyBhIGJ1ZyBvciB0d28g
aGVyZSBhbmQgdGhlcmUuCgpPbiB0aGUgcGx1cyBzaWRlLCBldmVyeXRoaW5nIEkgcmVwb3J0ZWQg
Z290IGZpeGVkIHdpdGhpbiBob3Vycy4KClRoYW5rcywKLy9yaWNoYXJkCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
