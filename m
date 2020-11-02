Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03792A28DB
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Nov 2020 12:16:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B08B87100;
	Mon,  2 Nov 2020 11:16:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v85Ai7lC7DsD; Mon,  2 Nov 2020 11:16:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0861086F9E;
	Mon,  2 Nov 2020 11:16:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B7E191BF3C1
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 11:16:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6F6512002F
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 11:16:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id roJTPOxoIZ9R for <devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 11:16:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp68.ord1c.emailsrvr.com (smtp68.ord1c.emailsrvr.com
 [108.166.43.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 2132B20028
 for <devel@driverdev.osuosl.org>; Mon,  2 Nov 2020 11:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1604315767;
 bh=Tqv+WVAfnjUdwhKNPWC+9CN5pYHyP1K9/lY6oNs3Zyg=;
 h=Subject:From:To:Date:From;
 b=j8n7s7YYBCr6NLP294i9dLoTXZWsKeRhZ4dLtn8+htOcqCdl+KInmxaXbvOXvqmt/
 PNBEtvc2jJ9r8buqdbiz1sRkKAOSoQT4fqiLiNLxW9Swsn+tb4ICCf7ZX4ZtNKWIEc
 XhVEU2M+Ga45dYXMu3Yq8pFVNqVcdRkHYlPQ+VZY=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp25.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id CA354201A8; 
 Mon,  2 Nov 2020 06:16:06 -0500 (EST)
Subject: Re: [PATCH] staging: comedi: cb_pcidas: reinstate delay removed from
 trimpot setting
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
References: <20201029141833.126856-1-abbotti@mev.co.uk>
 <3d7cf15a-c389-ec2c-5e29-8838e8466790@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <f28af317-08a7-8218-d2a6-0cdd9e681873@mev.co.uk>
Date: Mon, 2 Nov 2020 11:16:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <3d7cf15a-c389-ec2c-5e29-8838e8466790@mev.co.uk>
Content-Language: en-GB
X-Classification-ID: c7816c9c-6293-4188-b215-3375f81bf324-1-1
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMDIvMTEvMjAyMCAxMDoyNSwgSWFuIEFiYm90dCB3cm90ZToKPiBPbiAyOS8xMC8yMDIwIDE0
OjE4LCBJYW4gQWJib3R0IHdyb3RlOgo+PiBDb21taXQgZWRkZDJhNGM2NzVjICgic3RhZ2luZzog
Y29tZWRpOiBjYl9wY2lkYXM6IHJlZmFjdG9yCj4+IHdyaXRlX2NhbGlicmF0aW9uX2JpdHN0cmVh
bSgpIikgaW5hZHZlcnRlbnRseSByZW1vdmVkIG9uZSBvZiB0aGUKPj4gYHVkZWxheSgxKWAgY2Fs
bHMgd2hlbiB3cml0aW5nIHRvIHRoZSBjYWxpYnJhdGlvbiByZWdpc3RlciBpbgo+PiBgY2JfcGNp
ZGFzX2NhbGliX3dyaXRlKClgLsKgIFJlaW5zdGF0ZSB0aGUgZGVsYXkuwqAgSXQgbWF5IHNlZW0g
c3RyYW5nZQo+PiB0aGF0IHRoZSBkZWxheSBpcyBwbGFjZWQgYmVmb3JlIHRoZSByZWdpc3RlciB3
cml0ZSwgYnV0IHRoaXMgZnVuY3Rpb24gaXMKPj4gY2FsbGVkIGluIGEgbG9vcCBzbyB0aGUgZXh0
cmEgZGVsYXkgY2FuIG1ha2UgYSBkaWZmZXJlbmNlLgo+Pgo+PiBUaGlzIF9taWdodF8gc29sdmUg
cmVwb3J0ZWQgaXNzdWVzIHJlYWRpbmcgYW5hbG9nIGlucHV0cyBvbiBhCj4+IFBDSWUtREFTMTYw
Mi8xNiBjYXJkIHdoZXJlIHRoZSBhbmFsb2cgaW5wdXQgdmFsdWVzICJ3ZXJlIHNjYWxlZCBpbiBh
Cj4+IHN0cmFuZ2Ugd2F5IHRoYXQgZGlkbid0IG1ha2Ugc2Vuc2UiLsKgIE9uIHRoZSBzYW1lIGhh
cmR3YXJlIHJ1bm5pbmcgYQo+PiBzeXN0ZW0gd2l0aCBhIDMuMTMga2VybmVsLCBhbmQgdGhlbiBh
IHN5c3RlbSB3aXRoIGEgNC40IGtlcm5lbCwgYnV0IHdpdGgKPj4gdGhlIHNhbWUgYXBwbGljYXRp
b24gc29mdHdhcmUsIHRoZSBzeXN0ZW0gd2l0aCB0aGUgMy4xMyBrZXJuZWwgd2FzIGZpbmUsCj4+
IGJ1dCB0aGUgb25lIHdpdGggdGhlIDQuNCBrZXJuZWwgZXhoaWJpdGVkIHRoZSBwcm9ibGVtLsKg
IE9mIHRoZSA5MAo+PiBjaGFuZ2VzIHRvIHRoZSBkcml2ZXIgYmV0d2VlbiB0aG9zZSBrZXJuZWwg
dmVyc2lvbnMsIHRoaXMgY2hhbmdlIGxvb2tlZAo+PiBsaWtlIHRoZSBtb3N0IGxpa2VseSBjdWxw
cml0Lgo+IAo+IEFjdHVhbGx5LCBJJ3ZlIHJlYWxpemVkIHRoYXQgdGhpcyBwYXRjaCB3aWxsIGhh
dmUgbm8gZWZmZWN0IG9uIHRoZSAKPiBQQ0llLURBUzE2MDIvMTYgY2FyZCBiZWNhdXNlIGl0IHVz
ZXMgYSBkaWZmZXJlbnQgZHJpdmVyIC0gY2JfcGNpbWRhcywgCj4gbm90IGNiX3BjaWRhcy4KCkJ1
dCB0aGF0J3MgYWxzbyBjb25mdXNpbmcgYmVjYXVzZSBQQ0llLURBUzE2MDIvMTYgd2FzIG5vdCBz
dXBwb3J0ZWQgCnVudGlsIHRoZSAzLjE5IGtlcm5lbCEgIEkga25vdyB0aGUgcmVwb3J0ZWQgaGFz
IGJvdGggUENJLURBUzE2MDIvMTYgYW5kIApQQ0llLURBUzE2MDIvMTYgY2FyZHMgKHN1cHBvcnRl
ZCBieSBjYl9wY2lkYXMgYW5kIGNiX3BjaW1kYXMgCnJlc3BlY3RpdmVseSksIHNvIHRoZXJlIGNv
dWxkIGhhdmUgYmVlbiBzb21lIG1peC11cCBpbiB0aGUgcmVwb3J0aW5nLgoKPiAKPiBHcmVnLCB5
b3UgbWlnaHQgYXMgd2VsbCBkcm9wIHRoaXMgcGF0Y2ggaWYgeW91IGhhdmVuJ3QgYWxyZWFkeSBh
cHBsaWVkIAo+IGl0LCBzaW5jZSBpdCB3YXMgb25seSBhIGh1bmNoIHRoYXQgaXQgZml4ZWQgYSBw
cm9ibGVtLgo+IAoKCi0tIAotPSggSWFuIEFiYm90dCA8YWJib3R0aUBtZXYuY28udWs+IHx8IE1F
ViBMdGQuIGlzIGEgY29tcGFueSAgKT0tCi09KCByZWdpc3RlcmVkIGluIEVuZ2xhbmQgJiBXYWxl
cy4gIFJlZ2QuIG51bWJlcjogMDI4NjIyNjguICApPS0KLT0oIFJlZ2QuIGFkZHIuOiBTMTEgJiAx
MiBCdWlsZGluZyA2NywgRXVyb3BhIEJ1c2luZXNzIFBhcmssICk9LQotPSggQmlyZCBIYWxsIExh
bmUsIFNUT0NLUE9SVCwgU0szIDBYQSwgVUsuIHx8IHd3dy5tZXYuY28udWsgKT0tCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
