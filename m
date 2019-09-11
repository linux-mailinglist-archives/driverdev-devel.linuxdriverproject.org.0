Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2FAB047C
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 21:16:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15F1F87E65;
	Wed, 11 Sep 2019 19:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TYJF+6MkQjjc; Wed, 11 Sep 2019 19:16:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DE93987E57;
	Wed, 11 Sep 2019 19:16:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E9521BF3A9
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 19:16:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EB2E385F92
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 19:16:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jfCx0nMY7wmp for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 19:16:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
 [217.26.49.172])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8782285F8A
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 19:16:26 +0000 (UTC)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
 by mxout012.mail.hostpoint.ch with esmtp (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i886I-0005Wf-Ge; Wed, 11 Sep 2019 21:16:22 +0200
Received: from [213.55.220.183] (helo=[100.66.136.169])
 by asmtp013.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i886I-000Nta-AY; Wed, 11 Sep 2019 21:16:22 +0200
X-Authenticated-Sender-Id: sandro@volery.com
From: Sandro Volery <sandro@volery.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v4] Staging: exfat: avoid use of strcpy
Date: Wed, 11 Sep 2019 21:16:21 +0200
Message-Id: <27939F0F-4406-4CAE-9D88-CFDA58A76BA1@volery.com>
References: <20190911190355.GA18977@kadam>
In-Reply-To: <20190911190355.GA18977@kadam>
To: Dan Carpenter <dan.carpenter@oracle.com>
X-Mailer: iPhone Mail (17A5831c)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 valdis.kletnieks@vt.edu, linux-kernel@vger.kernel.org,
 linux@rasmusvillemoes.dk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cgo+IE9uIDExIFNlcCAyMDE5LCBhdCAyMTowNiwgRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRl
ckBvcmFjbGUuY29tPiB3cm90ZToKPiAKPiDvu79PbiBXZWQsIFNlcCAxMSwgMjAxOSBhdCAwOTo1
MzowM1BNICswMjAwLCBTYW5kcm8gVm9sZXJ5IHdyb3RlOgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9zdGFnaW5nL2V4ZmF0L2V4ZmF0X2NvcmUuYyBiL2RyaXZlcnMvc3RhZ2luZy9leGZhdC9leGZh
dF9jb3JlLmMKPj4gaW5kZXggZGE4YzU4MTQ5YzM1Li40MzM2ZmVlNDQ0Y2UgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvc3RhZ2luZy9leGZhdC9leGZhdF9jb3JlLmMKPj4gKysrIGIvZHJpdmVycy9z
dGFnaW5nL2V4ZmF0L2V4ZmF0X2NvcmUuYwo+PiBAQCAtMjk2MCwxOCArMjk2MCwxNSBAQCBzMzIg
cmVzb2x2ZV9wYXRoKHN0cnVjdCBpbm9kZSAqaW5vZGUsIGNoYXIgKnBhdGgsIHN0cnVjdCBjaGFp
bl90ICpwX2RpciwKPj4gICAgc3RydWN0IHN1cGVyX2Jsb2NrICpzYiA9IGlub2RlLT5pX3NiOwo+
PiAgICBzdHJ1Y3QgZnNfaW5mb190ICpwX2ZzID0gJihFWEZBVF9TQihzYiktPmZzX2luZm8pOwo+
PiAgICBzdHJ1Y3QgZmlsZV9pZF90ICpmaWQgPSAmKEVYRkFUX0koaW5vZGUpLT5maWQpOwo+PiAt
Cj4+IC0gICAgaWYgKHN0cmxlbihwYXRoKSA+PSAoTUFYX05BTUVfTEVOR1RIICogTUFYX0NIQVJT
RVRfU0laRSkpCj4+ICsgICAgCj4gCj4gWW91IGhhdmUgYWRkZWQgYSB0YWIgaGVyZS4KPiAKPj4g
KyAgICBpZiAoc3Ryc2NweShuYW1lX2J1ZiwgcGF0aCwgc2l6ZW9mKG5hbWVfYnVmKSkgPCAwKQo+
PiAgICAgICAgcmV0dXJuIEZGU19JTlZBTElEUEFUSDsKPj4gCj4+IC0gICAgc3RyY3B5KG5hbWVf
YnVmLCBwYXRoKTsKPj4gLQo+PiAgICBubHNfY3N0cmluZ190b191bmluYW1lKHNiLCBwX3VuaW5h
bWUsIG5hbWVfYnVmLCAmbG9zc3kpOwo+PiAgICBpZiAobG9zc3kpCj4+ICAgICAgICByZXR1cm4g
RkZTX0lOVkFMSURQQVRIOwo+PiAKPj4gLSAgICBmaWQtPnNpemUgPSBpX3NpemVfcmVhZChpbm9k
ZSk7Cj4+IC0KPj4gK2ZpZC0+c2l6ZSA9IGlfc2l6ZV9yZWFkKGlub2RlKTsKPiAKPiBBbmQgeW91
IGFjY2lkZW50YWxseSBkZWxldGVkIHNvbWUgd2hpdGUgc3BhY2UgaGVyZS4KPiAKPiBJIHVzZSB2
aW0sIHNvIEkgaGF2ZSBpdCBjb25maWd1cmVkIHRvIGhpZ2hsaWdodCB3aGl0ZXNwYWNlIGF0IHRo
ZSBlbmQgb2YKPiBhIGxpbmUuICBJIGRvbid0IHJlbWVtYmVyIGhvdyBpdCdzIGRvbmUgbm93IGJ1
dCBJIGdvb2dsZWQgaXQgZm9yIHlvdS4KPiBodHRwczovL3ZpbS5mYW5kb20uY29tL3dpa2kvSGln
aGxpZ2h0X3Vud2FudGVkX3NwYWNlcwoKClVnaCBJJ20gc28gc29ycnkgSSBtYWtlIHRoZSBtb3N0
IHN0dXBpZCBtaXN0YWtlcyB0b2RheS4uIEkgd2FzIHNvIHN1cmUgCnRoaXMgdGltZSBJIGdvdCBp
dCByaWdodCEKSSdsbCBmaXggaXQgdG9tb3Jyb3cuCgpUaGFua3MsClNhbmRybyBWCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
