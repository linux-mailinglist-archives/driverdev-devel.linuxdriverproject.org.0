Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A527D913B0
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 01:26:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 65DC1860F1;
	Sat, 17 Aug 2019 23:26:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HbbxEeX-Lhnz; Sat, 17 Aug 2019 23:26:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87DAA85F96;
	Sat, 17 Aug 2019 23:26:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4080B1BF23F
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 23:26:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3C5C820368
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 23:26:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vqpMH-MdunDv for <devel@linuxdriverproject.org>;
 Sat, 17 Aug 2019 23:26:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by silver.osuosl.org (Postfix) with ESMTPS id CF71D2011B
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 23:26:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 70CEF6083139;
 Sun, 18 Aug 2019 01:25:59 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id cO1ZOsJcBe06; Sun, 18 Aug 2019 01:25:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 094F3608311C;
 Sun, 18 Aug 2019 01:25:59 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id lRtR3EyXAiKz; Sun, 18 Aug 2019 01:25:58 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 63195621FCC8;
 Sun, 18 Aug 2019 01:25:58 +0200 (CEST)
Date: Sun, 18 Aug 2019 01:25:58 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Gao Xiang <hsiangkao@aol.com>
Message-ID: <1163995781.68824.1566084358245.JavaMail.zimbra@nod.at>
In-Reply-To: <20190817220706.GA11443@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190817082313.21040-1-hsiangkao@aol.com>
 <1746679415.68815.1566076790942.JavaMail.zimbra@nod.at>
 <20190817220706.GA11443@hsiangkao-HP-ZHAN-66-Pro-G1>
Subject: Re: [PATCH] erofs: move erofs out of staging
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: erofs: move erofs out of staging
Thread-Index: iW3vMR6GAc7F9NKtTVkkNSt0c7Y/uQ==
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

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBIb3cgZG9lcyBlcm9mcyBjb21wYXJl
IHRvIHNxdWFzaGZzPwo+PiBJSVVDIGl0IGlzIGRlc2lnbmVkIHRvIGJlIGZhc3Rlci4gRG8geW91
IGhhdmUgbnVtYmVycz8KPj4gRmVlbCBmcmVlIHRvIHBvaW50IG1lIG9sZGVyIG1haWxzIGlmIHlv
dSBhbHJlYWR5IHNob3dlZCBudW1iZXJzLAo+PiBJIGhhdmUgdG8gYWRtaXQgSSBkaWRuJ3QgZm9s
bG93IHRoZSBkZXZlbG9wbWVudCB2ZXJ5IGNsb3NlbHkuCj4gCj4gWW91IGNhbiBzZWUgdGhlIGZv
bGxvd2luZyByZWxhdGVkIG1hdGVyaWFsIHdoaWNoIGhhcyBtaWNyb2JlbmNobWFyawo+IHRlc3Rl
ZCBvbiBteSBsYXB0b3A6Cj4gaHR0cHM6Ly9zdGF0aWMuc2NoZWQuY29tL2hvc3RlZF9maWxlcy9r
Y2NuY29zc2NobjE5ZW5nLzE5L0VST0ZTJTIwZmlsZSUyMHN5c3RlbV9PU1MyMDE5X0ZpbmFsLnBk
Zgo+IAo+IHdoaWNoIHdhcyBtZW50aW9uZWQgaW4gdGhlIHJlbGF0ZWQgdG9waWMgYXMgd2VsbDoK
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMTkwODE1MDQ0MTU1Ljg4NDgzLTEtZ2FveGlh
bmcyNUBodWF3ZWkuY29tLwoKVGhhbmtzIQpXaWxsIHJlYWQgaW50by4KCldoaWxlIGRpZ2dpbmcg
YSBsaXR0bGUgaW50byB0aGUgY29kZSBJIG5vdGljZWQgdGhhdCB5b3UgaGF2ZSB2ZXJ5IGZldwpj
aGVja3Mgb2YgdGhlIG9uLWRpc2sgZGF0YS4KRm9yIGV4YW1wbGUgLT51LmlfYmxrYWRkci4gSSBn
YXZlIGl0IGEgdHJ5IGFuZCBjcmVhdGVkIGEKbWFsZm9ybWVkIGZpbGVzeXN0ZW0gd2hlcmUgdS5p
X2Jsa2FkZHIgaXMgMHhkZWFkYmVlZiwgaXQgY2F1c2VzIHRoZSBrZXJuZWwKdG8gbG9vcCBmb3Jl
dmVyIGFyb3VuZCBlcm9mc19yZWFkX3Jhd19wYWdlKCkuCgpUaGFua3MsCi8vcmljaGFyZApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
