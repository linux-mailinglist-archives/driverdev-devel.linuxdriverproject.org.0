Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13994917B8
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 18:16:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2CBDF857A4;
	Sun, 18 Aug 2019 16:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rmlF9P5TXD6F; Sun, 18 Aug 2019 16:16:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D3CE08558D;
	Sun, 18 Aug 2019 16:16:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6234C1BF3DB
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 16:16:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5E943855E1
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 16:16:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xswZAYaO8w9H for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 16:16:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2739F8558D
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 16:16:41 +0000 (UTC)
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31EFF20644;
 Sun, 18 Aug 2019 16:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566145000;
 bh=NSSy4mA2IcwfuYQPcB9hX5r00sDDMr1GAhaImAFrjmk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TJuDeqIz1AOUrfjI4tJ2s99hzAlFWk84d4zcmb/BVNJEFYVx2WKrptDAGwtmkk2TK
 LnxnxmgqgQCUC4un3j70hQ1g7AfuNzkiHyG12ZIyk04RrJz3+ahO8wpJ1G5gmacEA1
 fl36zAQND7Sp3qSvk1n1LO8kcK1bjbBoAOftLsAg=
Date: Sun, 18 Aug 2019 09:16:38 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190818161638.GE1118@sol.localdomain>
Mail-Followup-To: Christoph Hellwig <hch@infradead.org>,
 "Theodore Y. Ts'o" <tytso@mit.edu>,
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
User-Agent: Mutt/1.12.1 (2019-06-15)
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
 "Theodore Y. Ts'o" <tytso@mit.edu>, Pavel Machek <pavel@denx.de>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>,
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
aGVyIGludGVncml0eSBmZWF0dXJlcy4KClRlZCdzIG9ic2VydmF0aW9uIHdhcyBhYm91dCBtYWxp
Y2lvdXNseS1jcmFmdGVkIGZpbGVzeXN0ZW1zLCB0aG91Z2gsIHNvCmludGVncml0eS1vbmx5IGZl
YXR1cmVzIHN1Y2ggYXMgbWV0YWRhdGEgY2hlY2tzdW1zIGFyZSBpcnJlbGV2YW50LiAgQWxzbyB0
aGUKZmlsZXN5c3RlbSB2ZXJzaW9uIGlzIGlycmVsZXZhbnQ7IGFueXRoaW5nIGFjY2VwdGVkIGJ5
IHRoZSBrZXJuZWwgY29kZSAoZXZlbiBpZgppdCdzIGxlZ2FjeS9kZXByZWNhdGVkKSBpcyBvcGVu
IGF0dGFjayBzdXJmYWNlLgoKSSBwZXJzb25hbGx5IGNvbnNpZGVyIGl0ICptYW5kYXRvcnkqIHRo
YXQgd2UgZGVhbCB3aXRoIHRoaXMgc3R1ZmYuICBCdXQgSSBjYW4KdW5kZXJzdGFuZCB0aGF0IHdl
IGRvbid0IGRvIGEgZ29vZCBqb2IgYXQgaXQsIHNvIHdlIHNob3VsZG4ndCBob2xkIGEgbmV3CmZp
bGVzeXN0ZW0gdG8gYW4gdW5mYWlybHkgaGlnaCBzdGFuZGFyZCByZWxhdGl2ZSB0byBvdGhlciBm
aWxlc3lzdGVtcy4uLgoKLSBFcmljCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
