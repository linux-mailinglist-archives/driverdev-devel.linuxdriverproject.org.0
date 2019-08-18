Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D7091888
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 20:00:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C570856B7;
	Sun, 18 Aug 2019 18:00:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7+qXls8o11AZ; Sun, 18 Aug 2019 18:00:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9B3698568D;
	Sun, 18 Aug 2019 18:00:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D9E91BF31A
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 18:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 842D987263
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 18:00:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1kMtSImidwS1 for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 18:00:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9716C8715D
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 18:00:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id BE1ED608311C;
 Sun, 18 Aug 2019 20:00:32 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 4gGs7GazpkF2; Sun, 18 Aug 2019 20:00:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 7F2846083139;
 Sun, 18 Aug 2019 20:00:29 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Uj_qxmxjUq0m; Sun, 18 Aug 2019 20:00:29 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 097BB608311C;
 Sun, 18 Aug 2019 20:00:29 +0200 (CEST)
Date: Sun, 18 Aug 2019 20:00:28 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: tytso <tytso@mit.edu>
Message-ID: <538856932.69442.1566151228866.JavaMail.zimbra@nod.at>
In-Reply-To: <20190818174621.GB12940@mit.edu>
References: <20190817082313.21040-1-hsiangkao@aol.com>
 <20190818084521.GA17909@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1133002215.69049.1566119033047.JavaMail.zimbra@nod.at>
 <20190818090949.GA30276@kroah.com>
 <790210571.69061.1566120073465.JavaMail.zimbra@nod.at>
 <20190818151154.GA32157@mit.edu>
 <1897345637.69314.1566148000847.JavaMail.zimbra@nod.at>
 <20190818174621.GB12940@mit.edu>
Subject: Re: [PATCH] erofs: move erofs out of staging
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: erofs: move erofs out of staging
Thread-Index: sAbiegKjjTKQmAd1TwyH6s3S7iROUA==
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
 torvalds <torvalds@linux-foundation.org>, Chao Yu <yuchao0@huawei.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
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

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogInR5dHNvIiA8dHl0c29AbWl0
LmVkdT4KPiBBbjogInJpY2hhcmQiIDxyaWNoYXJkQG5vZC5hdD4KPiBDQzogIkdyZWcgS3JvYWgt
SGFydG1hbiIgPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiwgIkdhbyBYaWFuZyIgPGhzaWFu
Z2thb0Bhb2wuY29tPiwgIkphbiBLYXJhIiA8amFja0BzdXNlLmN6PiwgIkNoYW8KPiBZdSIgPHl1
Y2hhbzBAaHVhd2VpLmNvbT4sICJEYXZlIENoaW5uZXIiIDxkYXZpZEBmcm9tb3JiaXQuY29tPiwg
IkRhdmlkIFN0ZXJiYSIgPGRzdGVyYmFAc3VzZS5jej4sICJNaWFvIFhpZSIKPiA8bWlhb3hpZUBo
dWF3ZWkuY29tPiwgImRldmVsIiA8ZGV2ZWxAZHJpdmVyZGV2Lm9zdW9zbC5vcmc+LCAiU3RlcGhl
biBSb3Rod2VsbCIgPHNmckBjYW5iLmF1dWcub3JnLmF1PiwgIkRhcnJpY2siCj4gPGRhcnJpY2su
d29uZ0BvcmFjbGUuY29tPiwgIkNocmlzdG9waCBIZWxsd2lnIiA8aGNoQGluZnJhZGVhZC5vcmc+
LCAiQW1pciBHb2xkc3RlaW4iIDxhbWlyNzNpbEBnbWFpbC5jb20+LAo+ICJsaW51eC1lcm9mcyIg
PGxpbnV4LWVyb2ZzQGxpc3RzLm96bGFicy5vcmc+LCAiQWwgVmlybyIgPHZpcm9AemVuaXYubGlu
dXgub3JnLnVrPiwgIkphZWdldWsgS2ltIiA8amFlZ2V1a0BrZXJuZWwub3JnPiwKPiAibGludXgt
a2VybmVsIiA8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz4sICJMaSBHdWlmdSIgPGJsdWNl
LmxpZ3VpZnVAaHVhd2VpLmNvbT4sICJGYW5nIFdlaSIgPGZhbmd3ZWkxQGh1YXdlaS5jb20+LAo+
ICJQYXZlbCBNYWNoZWsiIDxwYXZlbEBkZW54LmRlPiwgImxpbnV4LWZzZGV2ZWwiIDxsaW51eC1m
c2RldmVsQHZnZXIua2VybmVsLm9yZz4sICJBbmRyZXcgTW9ydG9uIgo+IDxha3BtQGxpbnV4LWZv
dW5kYXRpb24ub3JnPiwgInRvcnZhbGRzIiA8dG9ydmFsZHNAbGludXgtZm91bmRhdGlvbi5vcmc+
Cj4gR2VzZW5kZXQ6IFNvbm50YWcsIDE4LiBBdWd1c3QgMjAxOSAxOTo0NjoyMQo+IEJldHJlZmY6
IFJlOiBbUEFUQ0hdIGVyb2ZzOiBtb3ZlIGVyb2ZzIG91dCBvZiBzdGFnaW5nCgo+IE9uIFN1biwg
QXVnIDE4LCAyMDE5IGF0IDA3OjA2OjQwUE0gKzAyMDAsIFJpY2hhcmQgV2VpbmJlcmdlciB3cm90
ZToKPj4gPiBTbyBob2xkaW5nIGEgZmlsZSBzeXN0ZW0gbGlrZSBFUk9GUyB0byBhIGhpZ2hlciBz
dGFuZGFyZCB0aGFuIHNheSwKPj4gPiBleHQ0LCB4ZnMsIG9yIGJ0cmZzIGhhcmRseSBzZWVtcyBm
YWlyLgo+PiAKPj4gTm9ib2R5IGNsYWltZWQgdGhhdC4KPiAKPiBQb2ludGluZyBvdXQgdGhhdCBl
cm9mcyBoYXMgaXNzdWVzIGluIHRoaXMgYXJlYSB3aGVuIEdhbyBYaWFuZyBpcwo+IGFza2luZyBp
ZiBlcm9mcyBjYW4gYmUgbW92ZWQgb3V0IG9mIHN0YWdpbmcgYW5kIGpvaW4gdGhlICJvZmZpY2lh
bAo+IGNsdWJob3VzZSIgb2YgZmlsZSBzeXN0ZW1zIGNvdWxkIGNlcnRhaW5seSBiZSByZWFzb25h
YmxlIGludGVycHJldGVkCj4gYXMgc3VjaC4gIFJlcG9ydGluZyBzdWNoIHZ1bG5lcmFibGl0aWVz
IGFyZSBhIGdvb2QgdGhpbmcsIGFuZAo+IGhvcGVmdWxseSBhbGwgZmlsZSBzeXN0ZW0gbWFpbnRh
aW5lcnMgd2lsbCB3ZWxjb21lIHRoZW0uICBEb2luZyB0aGVtCj4gb24gYSBlLW1haWwgdGhyZWFk
IGFib3V0IHByb21vdGluZyBvdXQgb2YgZXJvZnMgaXMgY2VydGFpbmx5IGdvaW5nIHRvCj4gbGVh
ZCB0byBpbmZlcmVuY2VzIG9mIGEgZG91YmxlIHN0YW5kYXJkLgoKV2VsbCwgdGhpcyB3YXMgbm90
IGF0IGFsbCBteSBpbnRlbnRpb24uCmVyb2ZzIHJhaXNlZCBteSBhdHRlbnRpb24gYW5kIGluc3Rl
YWQgb2Ygd2FzdGluZyBhIG5ldyB0aHJlYWQKSSBhbnN3ZXJlZCBoZXJlIGFuZCByZXBvcnRlZCB3
aGF0IEkgZm91bmQgd2hpbGUgbG9va2luZyBhdCBpdC4KVGhhdCdzIGFsbC4KClRoYW5rcywKLy9y
aWNoYXJkCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
