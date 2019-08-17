Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C9E91335
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Aug 2019 23:26:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C4B4386416;
	Sat, 17 Aug 2019 21:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ahl-BYBo3spa; Sat, 17 Aug 2019 21:26:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AAA6985E5E;
	Sat, 17 Aug 2019 21:26:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 658C01BF5A2
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 21:26:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5D2AD849E2
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 21:26:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U6yjtVYi2c5d for <devel@linuxdriverproject.org>;
 Sat, 17 Aug 2019 21:26:29 +0000 (UTC)
X-Greylist: delayed 00:06:31 by SQLgrey-1.7.6
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 985AB84900
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 21:26:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 05377621FCD3;
 Sat, 17 Aug 2019 23:19:55 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id XTABcBaKQNZk; Sat, 17 Aug 2019 23:19:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 839676083139;
 Sat, 17 Aug 2019 23:19:51 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id l7v2AJV0SH0k; Sat, 17 Aug 2019 23:19:51 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 03E82621FCD3;
 Sat, 17 Aug 2019 23:19:50 +0200 (CEST)
Date: Sat, 17 Aug 2019 23:19:50 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Gao Xiang <hsiangkao@aol.com>
Message-ID: <1746679415.68815.1566076790942.JavaMail.zimbra@nod.at>
In-Reply-To: <20190817082313.21040-1-hsiangkao@aol.com>
References: <20190817082313.21040-1-hsiangkao@aol.com>
Subject: Re: [PATCH] erofs: move erofs out of staging
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: erofs: move erofs out of staging
Thread-Index: 8FsSXU2wmXCQdCGPbfgJ42ALdSe6DQ==
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
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 linux-erofs@lists.ozlabs.org, Al Viro <viro@zeniv.linux.org.uk>,
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

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkdhbyBYaWFuZyIgPGhzaWFu
Z2thb0Bhb2wuY29tPgo+IEFuOiAiR3JlZyBLcm9haC1IYXJ0bWFuIiA8Z3JlZ2toQGxpbnV4Zm91
bmRhdGlvbi5vcmc+LCAiQWwgVmlybyIgPHZpcm9AemVuaXYubGludXgub3JnLnVrPiwgImxpbnV4
LWZzZGV2ZWwiCj4gPGxpbnV4LWZzZGV2ZWxAdmdlci5rZXJuZWwub3JnPiwgZGV2ZWxAZHJpdmVy
ZGV2Lm9zdW9zbC5vcmcsIGxpbnV4LWVyb2ZzQGxpc3RzLm96bGFicy5vcmcsICJsaW51eC1rZXJu
ZWwiCj4gPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+Cj4gQ0M6ICJBbmRyZXcgTW9ydG9u
IiA8YWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZz4sICJTdGVwaGVuIFJvdGh3ZWxsIiA8c2ZyQGNh
bmIuYXV1Zy5vcmcuYXU+LCAidHl0c28iIDx0eXRzb0BtaXQuZWR1PiwKPiAiUGF2ZWwgTWFjaGVr
IiA8cGF2ZWxAZGVueC5kZT4sICJEYXZpZCBTdGVyYmEiIDxkc3RlcmJhQHN1c2UuY3o+LCAiQW1p
ciBHb2xkc3RlaW4iIDxhbWlyNzNpbEBnbWFpbC5jb20+LCAiQ2hyaXN0b3BoCj4gSGVsbHdpZyIg
PGhjaEBpbmZyYWRlYWQub3JnPiwgIkRhcnJpY2sgSiAuIFdvbmciIDxkYXJyaWNrLndvbmdAb3Jh
Y2xlLmNvbT4sICJEYXZlIENoaW5uZXIiIDxkYXZpZEBmcm9tb3JiaXQuY29tPiwKPiAiSmFlZ2V1
ayBLaW0iIDxqYWVnZXVrQGtlcm5lbC5vcmc+LCAiSmFuIEthcmEiIDxqYWNrQHN1c2UuY3o+LCAi
cmljaGFyZCIgPHJpY2hhcmRAbm9kLmF0PiwgInRvcnZhbGRzIgo+IDx0b3J2YWxkc0BsaW51eC1m
b3VuZGF0aW9uLm9yZz4sICJDaGFvIFl1IiA8eXVjaGFvMEBodWF3ZWkuY29tPiwgIk1pYW8gWGll
IiA8bWlhb3hpZUBodWF3ZWkuY29tPiwgIkxpIEd1aWZ1Igo+IDxibHVjZS5saWd1aWZ1QGh1YXdl
aS5jb20+LCAiRmFuZyBXZWkiIDxmYW5nd2VpMUBodWF3ZWkuY29tPiwgIkdhbyBYaWFuZyIgPGdh
b3hpYW5nMjVAaHVhd2VpLmNvbT4KPiBHZXNlbmRldDogU2Ftc3RhZywgMTcuIEF1Z3VzdCAyMDE5
IDEwOjIzOjEzCj4gQmV0cmVmZjogW1BBVENIXSBlcm9mczogbW92ZSBlcm9mcyBvdXQgb2Ygc3Rh
Z2luZwoKPiBFUk9GUyBmaWxlc3lzdGVtIGhhcyBiZWVuIG1lcmdlZCBpbnRvIGxpbnV4LXN0YWdp
bmcgZm9yIGEgeWVhci4KPiAKPiBFUk9GUyBpcyBkZXNpZ25lZCB0byBiZSBhIGJldHRlciBzb2x1
dGlvbiBvZiBzYXZpbmcgZXh0cmEgc3RvcmFnZQo+IHNwYWNlIHdpdGggZ3VhcmFudGVlZCBlbmQt
dG8tZW5kIHBlcmZvcm1hbmNlIGZvciByZWFkLW9ubHkgZmlsZXMKPiB3aXRoIHRoZSBoZWxwIG9m
IHJlZHVjZWQgbWV0YWRhdGEsIGZpeGVkLXNpemVkIG91dHB1dCBjb21wcmVzc2lvbgo+IGFuZCBk
ZWNvbXByZXNzaW9uIGlucGxhY2UgdGVjaG5vbG9naWVzLgogCkhvdyBkb2VzIGVyb2ZzIGNvbXBh
cmUgdG8gc3F1YXNoZnM/CklJVUMgaXQgaXMgZGVzaWduZWQgdG8gYmUgZmFzdGVyLiBEbyB5b3Ug
aGF2ZSBudW1iZXJzPwpGZWVsIGZyZWUgdG8gcG9pbnQgbWUgb2xkZXIgbWFpbHMgaWYgeW91IGFs
cmVhZHkgc2hvd2VkIG51bWJlcnMsCkkgaGF2ZSB0byBhZG1pdCBJIGRpZG4ndCBmb2xsb3cgdGhl
IGRldmVsb3BtZW50IHZlcnkgY2xvc2VseS4KClRoYW5rcywKLy9yaWNoYXJkCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
