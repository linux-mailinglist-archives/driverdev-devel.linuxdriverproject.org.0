Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE01BAF8C7
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 11:22:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 823D88653D;
	Wed, 11 Sep 2019 09:21:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 73135OtgktGt; Wed, 11 Sep 2019 09:21:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CB56684AB8;
	Wed, 11 Sep 2019 09:21:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 546871BF2A6
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 09:21:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 50B5E87AC9
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 09:21:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xXt4zW3OKuLy for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 09:21:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mxout017.mail.hostpoint.ch (mxout017.mail.hostpoint.ch
 [217.26.49.177])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3409687A80
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 09:21:51 +0000 (UTC)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
 by mxout017.mail.hostpoint.ch with esmtp (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i7yor-000O7j-Ec; Wed, 11 Sep 2019 11:21:45 +0200
Received: from [213.55.220.251] (helo=[100.66.103.90])
 by asmtp013.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i7yor-000El9-4u; Wed, 11 Sep 2019 11:21:45 +0200
X-Authenticated-Sender-Id: sandro@volery.com
From: Sandro Volery <sandro@volery.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] Staging: octeon: Avoid several usecases of strcpy
Date: Wed, 11 Sep 2019 11:21:44 +0200
Message-Id: <C1B40FAD-9F8F-449D-B10C-334BAC76797D@volery.com>
References: <20190911091659.GI15977@kadam>
In-Reply-To: <20190911091659.GI15977@kadam>
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
 aaro.koskinen@iki.fi, davem@davemloft.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Ck9uIDExIFNlcCAyMDE5LCBhdCAxMToxNywgRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBv
cmFjbGUuY29tPiB3cm90ZToKPiAKPiDvu79PbiBXZWQsIFNlcCAxMSwgMjAxOSBhdCAxMTowNDoz
OEFNICswMjAwLCBTYW5kcm8gVm9sZXJ5IHdyb3RlOgo+PiAKPj4gCj4+Pj4gT24gMTEgU2VwIDIw
MTksIGF0IDEwOjUyLCBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+IHdy
b3RlOgo+Pj4gCj4+PiDvu79PbiBXZWQsIFNlcCAxMSwgMjAxOSBhdCAwODoyMzo1OUFNICswMjAw
LCBTYW5kcm8gVm9sZXJ5IHdyb3RlOgo+Pj4+IHN0cmNweSB3YXMgdXNlZCBtdWx0aXBsZSB0aW1l
cyBpbiBzdHJjcHkgdG8gd3JpdGUgaW50byBkZXYtPm5hbWUuCj4+Pj4gSSByZXBsYWNlZCB0aGVt
IHdpdGggc3Ryc2NweS4KPj4+PiAKPj4+PiBTaWduZWQtb2ZmLWJ5OiBTYW5kcm8gVm9sZXJ5IDxz
YW5kcm9Adm9sZXJ5LmNvbT4KPj4+PiAtLS0KPj4+PiBkcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL2V0
aGVybmV0LmMgfCAxNiArKysrKysrKy0tLS0tLS0tCj4+Pj4gMSBmaWxlIGNoYW5nZWQsIDggaW5z
ZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPj4+PiAKPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC5jIGIvZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhl
cm5ldC5jCj4+Pj4gaW5kZXggODg4OTQ5NGFkZjFmLi5jZjhlOWEyM2ViZjkgMTAwNjQ0Cj4+Pj4g
LS0tIGEvZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC5jCj4+Pj4gKysrIGIvZHJpdmVy
cy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC5jCj4+Pj4gQEAgLTc4NCw3ICs3ODQsNyBAQCBzdGF0
aWMgaW50IGN2bV9vY3RfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+PiAg
ICAgICAgICAgcHJpdi0+aW1vZGUgPSBDVk1YX0hFTFBFUl9JTlRFUkZBQ0VfTU9ERV9ESVNBQkxF
RDsKPj4+PiAgICAgICAgICAgcHJpdi0+cG9ydCA9IENWTVhfUElQX05VTV9JTlBVVF9QT1JUUzsK
Pj4+PiAgICAgICAgICAgcHJpdi0+cXVldWUgPSAtMTsKPj4+PiAtICAgICAgICAgICAgc3RyY3B5
KGRldi0+bmFtZSwgInBvdyVkIik7Cj4+Pj4gKyAgICAgICAgICAgIHN0cnNjcHkoZGV2LT5uYW1l
LCAicG93JWQiLCBzaXplb2YoZGV2LT5uYW1lKSk7Cj4+PiAKPj4+IElzIHRoZXJlIGEgcHJvZ3Jh
bSB3aGljaCBpcyBnZW5lcmF0aW5nIGEgd2FybmluZyBmb3IgdGhpcyBjb2RlPyAgV2Uga25vdwo+
Pj4gdGhhdCAicG93JWQiIGlzIDYgY2hhcmFjdGVycyBhbmQgc3RhdGljIGFuYWx5c2lzIHRvb2xz
IGNhbiB1bmRlcnN0YW5kCj4+PiB0aGlzIGNvZGUgZmluZSBzbyB3ZSBrbm93IGl0J3Mgc2FmZS4K
Pj4gCj4+IFdlbGwgSSB3YXMgY29uZnVzZWQgdG9vIGJ1dCBjaGVja3BhdGNoIGNvbXBsYWluZWQg
YWJvdXQgCj4+IGl0IHNvIEkgZmlndXJlZCBJJ2QgY2xlYW4gaXQgdXAgcXVpY2sKPiAKPiBBaC4g
IEl0J3MgYSBuZXcgY2hlY2twYXRjaCB3YXJuaW5nLiAgSSBkb24ndCBjYXJlIGluIHRoYXQgY2Fz
ZS4gIEknbQo+IGZpbmUgd2l0aCByZXBsYWNpbmcgYWxsIG9mIHRoZXNlIGluIHRoYXQgY2FzZS4K
CkFscmlnaHQgdGhhbmtzLiBDYW4geW91IHJldmlldyB0aGlzPwoKVGhhbmtzLApTYW5kcm8gVgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
