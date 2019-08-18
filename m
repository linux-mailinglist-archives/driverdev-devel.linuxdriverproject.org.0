Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8AA91794
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 17:58:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B080120441;
	Sun, 18 Aug 2019 15:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xOJ+tkMgnwKD; Sun, 18 Aug 2019 15:58:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7C3A6204A3;
	Sun, 18 Aug 2019 15:58:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D90A41BF3D1
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 15:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CED408508A
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 15:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jtpxg2pU-PTB for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 15:58:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5334B8506A
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 15:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tIZZ/FYTg4zcRyMX1dDT7uD/VTliOCaMSPK8iFKI03c=; b=mEaJhougJmxShBi14iedqWYnSl
 T5xUqdoX+PlWdPbb07JL0OLcmq4TMqzEV/i2TEeZbz3PKOirVDvizdOT2V1bmZ6BiEYJxBIDfHD7u
 0vxgUmsY6El7Bk7d9qpDGt3Icf5KivaU6N7b6NmMh+glrwIUxVa/n3rC3kCMPqB6fcbxCxTM2GF0f
 T1BDgybJyRhvTPwFZ51SSTW+hta7+b/v0Hu85H8AoZOLuCzrUB46Fcn0MmEdn0On4J4vTd3DH132m
 U/4zSWAEHFn1LPPDzQEnQzugWBJreUm7VrPVFDSAaRKgwNtGwJ8T0GUQomopLVBHe0kRtBQfMMCKG
 2Okqdggw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hzNZM-0003ZJ-KO; Sun, 18 Aug 2019 15:58:12 +0000
Date: Sun, 18 Aug 2019 08:58:12 -0700
From: Christoph Hellwig <hch@infradead.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gao Xiang <hsiangkao@aol.com>, Jan Kara <jack@suse.cz>,
 Chao Yu <yuchao0@huawei.com>, Dave Chinner <david@fromorbit.com>,
 David Sterba <dsterba@suse.cz>, Miao Xie <miaoxie@huawei.com>,
 devel <devel@driverdev.osuosl.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Darrick <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 linux-erofs <linux-erofs@lists.ozlabs.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Pavel Machek <pavel@denx.de>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190818155812.GB13230@infradead.org>
References: <20190817082313.21040-1-hsiangkao@aol.com>
 <20190817220706.GA11443@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1163995781.68824.1566084358245.JavaMail.zimbra@nod.at>
 <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1405781266.69008.1566116210649.JavaMail.zimbra@nod.at>
 <20190818084521.GA17909@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1133002215.69049.1566119033047.JavaMail.zimbra@nod.at>
 <20190818090949.GA30276@kroah.com>
 <790210571.69061.1566120073465.JavaMail.zimbra@nod.at>
 <20190818151154.GA32157@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818151154.GA32157@mit.edu>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU3VuLCBBdWcgMTgsIDIwMTkgYXQgMTE6MTE6NTRBTSAtMDQwMCwgVGhlb2RvcmUgWS4gVHMn
byB3cm90ZToKPiBOb3RlIHRoYXQgb2YgdGhlIG1haW5zdHJlYW0gZmlsZSBzeXN0ZW1zLCBleHQ0
IGFuZCB4ZnMgZG9uJ3QgZ3VhcmFudGVlCj4gdGhhdCBpdCdzIHNhZmUgdG8gYmxpbmRseSB0YWtl
IG1hbGljaW91c2x5IHByb3ZpZGVkIGZpbGUgc3lzdGVtcywgc3VjaAo+IGFzIHRob3NlIHByb3Zp
ZGVkIGJ5IGEgdW50cnVzdGVkIGNvbnRhaW5lciwgYW5kIG1vdW50IGl0IG9uIGEgZmlsZQo+IHN5
c3RlbSB3aXRob3V0IHByb2JsZW1zLiAgQXMgSSByZWNhbGwsIG9uZSBvZiB0aGUgWEZTIGRldmVs
b3BlcnMKPiBkZXNjcmliZWQgZmlsZSBzeXN0ZW0gZnV6emluZyByZXBvcnRzIGFzIGEgZGVuaWFs
IG9mIHNlcnZpY2UgYXR0YWNrIG9uCj4gdGhlIGRldmVsb3BlcnMuCgpJIHRoaW5rIHRoaXMgZ3Jl
YXRseSBtaXNyZXByZXNlbnRzIHRoZSBnZW5lcmFsIGF0dGl0dXRlIG9mIHRoZSBYRlMKZGV2ZWxv
cGVycy4gIFdlIHRha2Ugc2FuaXR5IGNoZWNrcyBmb3IgdGhlIG1vZGVybiB2NSBvbiBkaXNrIGZv
cm1hdAp2ZXJ5IHNlcmllcywgYW5kIHB1dCBhIGxvdCBvZiBlZmZvcnQgaW50byBoYW5kbGluZyBj
b3JydXB0ZWQgZmlsZQpzeXN0ZW1zIGFzIGdvb2QgYXMgcG9zc2libGUsIGFsdGhvdWdoIHRoZXJl
IGFyZSBvZiBjb3Vyc2Ugbm8gZ3VhcmFudGVl0ZUuCgpUaGUgcXVvdGUgdGhhdCB5b3UndmUgdGFr
ZW4gb3V0IG9mIGNvbnRleHQgaXMgZm9yIHRoZSBsZWdhY3kgdjQgZm9ybWF0CnRoYXQgaGFzIG5v
IGNoZWNrc3VtcyBhbmQgb3RoZXIgaW50ZWdyaXR5IGZlYXR1cmVzLgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
