Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A0484206
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 04:01:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7EFAD86205;
	Wed,  7 Aug 2019 02:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LDUH4mLWP6Ks; Wed,  7 Aug 2019 02:01:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EBAFA861C8;
	Wed,  7 Aug 2019 02:01:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B23F81BF389
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 02:01:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AB52886B18
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 02:01:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rjABJ6X1BS7g for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 02:01:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A7D1C869BA
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 02:01:11 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id p15so84382523eds.8
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 19:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HSxIAXbv8ExFvSycUA39nVYD9BShuSBNkZ9RH9JdzLk=;
 b=d3lvkHY54HHwWMqrrTyKaHhC6VikfgbBrVqW8Tlh8LCl1k9n70l6DpS3W6zYDh5y/o
 BGhAcjgj0Lkskh8MuzGFeOheJhjWylBQN2Zc674bJnbZ49w4LhinZOH8q/QeCJc/nWY5
 M4GnjdULtoOFq1D7w7V36WE1+SAfFnADDUnNxKqmfmudx9c3jYoXlm1E9O+UzCutjPZi
 sBuDuyTYVcHLFbhQQxAstTuaea3ZkYIVBLgpsb3/PrNGwVktxAVlHWXT67fS5WiPlJKl
 sLJ57kxOo5FhONpORp/axPLcTYV09MH0jLXcIqFKILXfEIAmV+gEtKtgPbos+nhYqNXk
 T2PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HSxIAXbv8ExFvSycUA39nVYD9BShuSBNkZ9RH9JdzLk=;
 b=HQD53ec626KiimqqeDz9RRiHSyMO1DmIsW5/Dxt66CrmcdXYCukw9kgNySIzO56fZ7
 Ipv5trSYspUMbiG4XBA/8CYYZ0mFLYOyBZdzzVvBFkVYtoMm+G+pZgI+QLYr6uMmL6Yo
 i1dTQ6Ku6y8+WoFPwbzZBx2PP6NWfU17m9fDc7XoprqkAywKdo+jjf6F2gkspQ2JrhN9
 s0wJwsA2XU3q6GxG4tLAWFC0idzlEXEVRO796QYmiy41r7e2r2CJlhHnPy8RDWnsTZ6r
 Z5gdY9Q+DWe4ZSskQGvRkO6W5zmI2Ivm40s91rQfA2bBFSa6nM8TWuN9FMn7UX0TBAB9
 v/Xg==
X-Gm-Message-State: APjAAAXVg93S1By9QARVVpkpvqYICcigGDsryU50+ZUzCHBdSfh+ho6D
 s3XP2Nw5iBey0/NPbNqpjtckMrBRJ+9zwa9Aw5c=
X-Google-Smtp-Source: APXvYqz29vV9A8mI8IX/00lL/jLiFXmgo9w6VXFnXJzPF8lxOD9DGC+2qF+GC9EXOBtU0YnQD/OQ+zMbmfrl4FKT45E=
X-Received: by 2002:a50:9729:: with SMTP id c38mr7273593edb.283.1565143269726; 
 Tue, 06 Aug 2019 19:01:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190806013329.28574-1-joseespiriki@gmail.com>
 <20190806115305.GF1974@kadam>
 <8d6c6714f9ca46ab90b2a747c05b899b@AcuMS.aculab.com>
In-Reply-To: <8d6c6714f9ca46ab90b2a747c05b899b@AcuMS.aculab.com>
From: =?UTF-8?Q?Jos=C3=A9_Carlos_Cazarin_Filho?= <joseespiriki@gmail.com>
Date: Tue, 6 Aug 2019 23:00:33 -0300
Message-ID: <CABVhQQPDR6od5Tu0QUUqvQxvMh2pWz_3GQKsvuNDpy3s5JGdmQ@mail.gmail.com>
Subject: Re: [PATCH] rtl8712: rtl871x_ioctl_linux.c: fix unnecessary typecast
To: David Laight <David.Laight@aculab.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "florian.c.schilhabel@googlemail.com"
 <florian.c.schilhabel@googlemail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "lkcamp@lists.libreplanetbr.org" <lkcamp@lists.libreplanetbr.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 "Larry.Finger@lwfinger.net" <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

U29ycnkgZm9sa3MsIEkgaGF2ZW4ndCBwcm9wZXJseSB0ZXN0ZWQgdGhpcyBiZWZvcmUgc2VuZGlu
ZyB0aGUgcGF0Y2gKQWZ0ZXIgSSd2ZSByZW1vdmVkIHRoZSBjYXN0LCBJIGdvdCB0aGlzIGVycm9y
OgoKZHJpdmVycy9zdGFnaW5nL3J0bDg3MTIvcnRsODcxeF9pb2N0bF9saW51eC5jOjY2ODoxMzog
ZXJyb3I6IFNTRQpyZWdpc3RlciByZXR1cm4gd2l0aCBTU0UgZGlzYWJsZWQKICAgIChmd3JxLT5t
ID49IDIuNDEyZTgpICYmCiAgICB+fn5+fn5+fn5efn5+fn5+fn5+fgoKQnV0IEkgdGhpbmsgaXQn
cyBzdHJhbmdlIHNpbmNlIHlvdSBzYWlkIHRoYXQgdGhpcyBjb21waWxlZCBmaW5lIGluCnlvdXIg
ZW52aXJvbm1lbnRzLgpJIHRoaW5rIHdlIG5lZWQgdG8gdGFrZSBhIGRlZXBlciBsb29rIGludG8g
dGhpcy4KCktpbmQgcmVnYXJkcwoKRW0gdGVyLCA2IGRlIGFnbyBkZSAyMDE5IMOgcyAxMDoxMCwg
RGF2aWQgTGFpZ2h0CjxEYXZpZC5MYWlnaHRAYWN1bGFiLmNvbT4gZXNjcmV2ZXU6Cj4KPiBGcm9t
OiBEYW4gQ2FycGVudGVyCj4gPiBTZW50OiAwNiBBdWd1c3QgMjAxOSAxMjo1Mwo+ID4gT24gTW9u
LCBBdWcgMDUsIDIwMTkgYXQgMTA6MzM6MjlQTSAtMDMwMCwgSm9zZSBDYXJsb3MgQ2F6YXJpbiBG
aWxobyB3cm90ZToKPiA+ID4gRml4IGNoZWNrcGF0aCB3YXJuaW5nOgo+ID4gPiBXQVJOSU5HOiBV
bm5lY2Vzc2FyeSB0eXBlY2FzdCBvZiBjOTAgaW50IGNvbnN0YW50Cj4gPiA+Cj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IEpvc2UgQ2FybG9zIENhemFyaW4gRmlsaG8gPGpvc2Vlc3BpcmlraUBnbWFpbC5j
b20+Cj4gPiA+IC0tLQo+ID4gPiAgSGVsbG8gYWxsIQo+ID4gPiAgVGhpcyBpcyBteSBmaXJzdCBj
b21taXQgdG8gdGhlIExpbnV4IEtlcm5lbCwgSSdtIGRvaW5nIHRoaXMgdG8gbGVhcm4gYW5kIGJl
IGFibGUKPiA+ID4gIHRvIGNvbnRyaWJ1dGUgbW9yZSBpbiB0aGUgZnV0dXJlCj4gPiA+ICBQZWFj
ZSBhbGwhCj4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvcnRsODcxMi9ydGw4NzF4X2lvY3RsX2xpbnV4
LmMgfCA0ICsrLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvcnRsODcx
Mi9ydGw4NzF4X2lvY3RsX2xpbnV4LmMKPiA+IGIvZHJpdmVycy9zdGFnaW5nL3J0bDg3MTIvcnRs
ODcxeF9pb2N0bF9saW51eC5jCj4gPiA+IGluZGV4IDk0NDMzNmUwZC4uZGEzNzEwNzJlIDEwMDY0
NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvcnRsODcxMi9ydGw4NzF4X2lvY3RsX2xpbnV4
LmMKPiA+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5nL3J0bDg3MTIvcnRsODcxeF9pb2N0bF9saW51
eC5jCj4gPiA+IEBAIC02NjUsOCArNjY1LDggQEAgc3RhdGljIGludCByODcxMV93eF9zZXRfZnJl
cShzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LAo+ID4gPgo+ID4gPiAgLyogSWYgc2V0dGluZyBieSBm
cmVxdWVuY3ksIGNvbnZlcnQgdG8gYSBjaGFubmVsICovCj4gPiA+ICAgICBpZiAoKGZ3cnEtPmUg
PT0gMSkgJiYKPiA+ID4gLSAgICAgKGZ3cnEtPm0gPj0gKGludCkgMi40MTJlOCkgJiYKPiA+ID4g
LSAgICAgKGZ3cnEtPm0gPD0gKGludCkgMi40ODdlOCkpIHsKPiA+ID4gKyAgICAgKGZ3cnEtPm0g
Pj0gMi40MTJlOCkgJiYKPiA+ID4gKyAgICAgKGZ3cnEtPm0gPD0gMi40ODdlOCkpIHsKPiA+Cj4g
PiBJIGRvbid0IHRoaW5rIHdlIGNhbiBkbyB0aGlzLiAgWW91J3JlIG5vdCBhbGxvd2VkIHRvIHVz
ZSBmbG9hdHMgaW4gdGhlCj4gPiBrZXJuZWwgKGJlY2F1c2UgdGhleSBtYWtlIGNvbnRleHQgc3dp
dGNoaW5nIHNsb3cpLiAgSSBjb3VsZCBoYXZlIHN3b3JuCj4gPiB0aGF0IHdlIHVzZSB0aGUgLW5v
ZnAgdG8gc3RvcCB0aGUgY29tcGlsZSB3aGVuIHBlb3BsZSB1c2UgZmxvYXRzIGJ1dAo+ID4gdGhp
cyBjb21waWxlcyBmaW5lIGZvciBtZS4KPgo+IE15IGd1ZXNzIGlzIHRoZSAnYzkwIGludCBjb25z
dGFudCcgdGV4dC4KPgo+IEl0IHJhdGhlciBpbXBsaWVzIHRoYXQgJzIuNDEyZTgnIGhhcyBiZWNv
bWUgdGhlIHNhbWUgYXMgJzIxNDEyMDAwMDAnLgo+IFdoaWNoIGlzIHJhdGhlciB3b3JyeWluZyBi
ZWNhdXNlIHN1ZGRlbmx5ICdpbnRfdmFyICogMi40ZTgnIG1pZ2h0Cj4gYmUgYW4gaW50ZWdlciBt
dWx0aXBseSByYXRoZXIgdGhhbiBhIGRvdWJsZSBvbmUgYW5kIG92ZXJmbG93Lgo+IEhhdmUgdGhl
IHN0YW5kYXJkIHBlb3BsZSBicm9rZW4gY29kZSBhZ2Fpbj8KPgo+ICAgICAgICAgRGF2aWQKPgo+
IC0KPiBSZWdpc3RlcmVkIEFkZHJlc3MgTGFrZXNpZGUsIEJyYW1sZXkgUm9hZCwgTW91bnQgRmFy
bSwgTWlsdG9uIEtleW5lcywgTUsxIDFQVCwgVUsKPiBSZWdpc3RyYXRpb24gTm86IDEzOTczODYg
KFdhbGVzKQo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
