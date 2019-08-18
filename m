Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 488739186C
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 19:44:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 86BC9204C4;
	Sun, 18 Aug 2019 17:44:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WA2ebDxzZAY0; Sun, 18 Aug 2019 17:44:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EFFBF20449;
	Sun, 18 Aug 2019 17:44:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B74D1BF31A
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 17:44:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 862CD86FCD
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 17:44:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y5PRDtP+bXC5 for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 17:44:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4061C86D7A
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 17:44:13 +0000 (UTC)
Received: from callcc.thunk.org ([12.235.16.3]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7IHhsaJ022921
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 18 Aug 2019 13:43:56 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 494464218EF; Sun, 18 Aug 2019 13:43:54 -0400 (EDT)
Date: Sun, 18 Aug 2019 13:43:54 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190818174354.GA12940@mit.edu>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 Christoph Hellwig <hch@infradead.org>,
 Richard Weinberger <richard@nod.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gao Xiang <hsiangkao@aol.com>, Jan Kara <jack@suse.cz>,
 Chao Yu <yuchao0@huawei.com>, Dave Chinner <david@fromorbit.com>,
 David Sterba <dsterba@suse.cz>, Miao Xie <miaoxie@huawei.com>,
 devel <devel@driverdev.osuosl.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Darrick <darrick.wong@oracle.com>,
 Amir Goldstein <amir73il@gmail.com>,
 linux-erofs <linux-erofs@lists.ozlabs.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Pavel Machek <pavel@denx.de>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 torvalds <torvalds@linux-foundation.org>
References: <20190817220706.GA11443@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1163995781.68824.1566084358245.JavaMail.zimbra@nod.at>
 <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1405781266.69008.1566116210649.JavaMail.zimbra@nod.at>
 <20190818084521.GA17909@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1133002215.69049.1566119033047.JavaMail.zimbra@nod.at>
 <20190818090949.GA30276@kroah.com>
 <790210571.69061.1566120073465.JavaMail.zimbra@nod.at>
 <20190818151154.GA32157@mit.edu>
 <20190818155812.GB13230@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818155812.GB13230@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Darrick <darrick.wong@oracle.com>, Richard Weinberger <richard@nod.at>,
 torvalds <torvalds@linux-foundation.org>, Chao Yu <yuchao0@huawei.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Pavel Machek <pavel@denx.de>, David Sterba <dsterba@suse.cz>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs <linux-erofs@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU3VuLCBBdWcgMTgsIDIwMTkgYXQgMDg6NTg6MTJBTSAtMDcwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gT24gU3VuLCBBdWcgMTgsIDIwMTkgYXQgMTE6MTE6NTRBTSAtMDQwMCwgVGhl
b2RvcmUgWS4gVHMnbyB3cm90ZToKPiA+IE5vdGUgdGhhdCBvZiB0aGUgbWFpbnN0cmVhbSBmaWxl
IHN5c3RlbXMsIGV4dDQgYW5kIHhmcyBkb24ndCBndWFyYW50ZWUKPiA+IHRoYXQgaXQncyBzYWZl
IHRvIGJsaW5kbHkgdGFrZSBtYWxpY2lvdXNseSBwcm92aWRlZCBmaWxlIHN5c3RlbXMsIHN1Y2gK
PiA+IGFzIHRob3NlIHByb3ZpZGVkIGJ5IGEgdW50cnVzdGVkIGNvbnRhaW5lciwgYW5kIG1vdW50
IGl0IG9uIGEgZmlsZQo+ID4gc3lzdGVtIHdpdGhvdXQgcHJvYmxlbXMuICBBcyBJIHJlY2FsbCwg
b25lIG9mIHRoZSBYRlMgZGV2ZWxvcGVycwo+ID4gZGVzY3JpYmVkIGZpbGUgc3lzdGVtIGZ1enpp
bmcgcmVwb3J0cyBhcyBhIGRlbmlhbCBvZiBzZXJ2aWNlIGF0dGFjayBvbgo+ID4gdGhlIGRldmVs
b3BlcnMuCj4gCj4gSSB0aGluayB0aGlzIGdyZWF0bHkgbWlzcmVwcmVzZW50cyB0aGUgZ2VuZXJh
bCBhdHRpdHV0ZSBvZiB0aGUgWEZTCj4gZGV2ZWxvcGVycy4gIFdlIHRha2Ugc2FuaXR5IGNoZWNr
cyBmb3IgdGhlIG1vZGVybiB2NSBvbiBkaXNrIGZvcm1hdAo+IHZlcnkgc2VyaWVzLCBhbmQgcHV0
IGEgbG90IG9mIGVmZm9ydCBpbnRvIGhhbmRsaW5nIGNvcnJ1cHRlZCBmaWxlCj4gc3lzdGVtcyBh
cyBnb29kIGFzIHBvc3NpYmxlLCBhbHRob3VnaCB0aGVyZSBhcmUgb2YgY291cnNlIG5vIGd1YXJh
bnRlZdGVLgo+IAo+IFRoZSBxdW90ZSB0aGF0IHlvdSd2ZSB0YWtlbiBvdXQgb2YgY29udGV4dCBp
cyBmb3IgdGhlIGxlZ2FjeSB2NCBmb3JtYXQKPiB0aGF0IGhhcyBubyBjaGVja3N1bXMgYW5kIG90
aGVyIGludGVncml0eSBmZWF0dXJlcy4KCkFjdHVhbGx5LCB3aGF0IFByb2YuIEtpbSdzIHJlc2Vh
cmNoIGdyb3VwIHdhcyBkb2luZyB3YXMgdGFraW5nIHRoZQpsYXRlc3QgZmlsZSBzeXN0ZW0gZm9y
bWF0cyAoZm9yIGV4dDQgYW5kIHhmcykgYW5kIGZpeGluZyB1cCB0aGUKY2hlY2tzdW0gYWZ0ZXIg
ZnV6emluZyB0aGUgbWV0YWRhdGEgYmxvY2tzLiAgVGhlIGdvYWwgd2FzIHRvIGZpbmQKcG90ZW50
aWFsIHNlY3VyaXR5IHZ1bG5lcmFiaWxpdGllcywgbm90IHRvIHNlZSBpZiBmaWxlIHN5c3RlbXMg
d291bGQKY3Jhc2ggaWYgZmVkIGludmFsaWQgaW5wdXQuICBBdCBsZWFzdCBmb3IgZXh0NCwgYXQg
bGVhc3Qgb25lIG9mClByb2YuIEtpbSdzIGZ1enppbmcgcmVzdWx0cyB3YXMgb25lIHRoYXQgdGhh
dCBJIGJlbGlldmUgY291bGQgaGF2ZQpiZWVuIGxldmVyYWdlZCBpbnRvIGEgc3RhY2sgb3ZlcmZs
b3cgYXR0YWNrLiAgSSBjYW4ndCBzcGVhayB0byBoaXMKcmVzdWx0cyB3aXRoIHJlc3BlY3QgdG8g
WEZTLCBzaW5jZSBJIGRpZG4ndCBsb29rIGF0IHRoZW0uCgpDaGVlcnMsCgoJCQkJCS0gVGVkCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
