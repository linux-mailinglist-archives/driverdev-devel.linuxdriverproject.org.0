Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AB12DE096
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Dec 2020 10:49:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 598D987ABB;
	Fri, 18 Dec 2020 09:49:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z9ytwwLwTcDU; Fri, 18 Dec 2020 09:49:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BEF6E87984;
	Fri, 18 Dec 2020 09:49:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1FFFE1BF346
 for <devel@linuxdriverproject.org>; Fri, 18 Dec 2020 09:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1C54D868B1
 for <devel@linuxdriverproject.org>; Fri, 18 Dec 2020 09:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZsQImmrEtn3F for <devel@linuxdriverproject.org>;
 Fri, 18 Dec 2020 09:49:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CDFD187799
 for <devel@driverdev.osuosl.org>; Fri, 18 Dec 2020 09:49:29 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-143--Bu7OKf0MZCbR-3VmakcGw-1; Fri, 18 Dec 2020 09:49:26 +0000
X-MC-Unique: -Bu7OKf0MZCbR-3VmakcGw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 18 Dec 2020 09:49:25 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Fri, 18 Dec 2020 09:49:25 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Joe Perches' <joe@perches.com>, Daniel West <daniel.west.dev@gmail.com>, 
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: RE: [PATCH] staging: most: video: fixed a parentheses coding style
 issue.
Thread-Topic: [PATCH] staging: most: video: fixed a parentheses coding style
 issue.
Thread-Index: AQHW1NDTd/J3KnGAs0yZSrCCE0TdLqn8mvVQ
Date: Fri, 18 Dec 2020 09:49:25 +0000
Message-ID: <d5993e314b134e038a1e4eeba32833ce@AcuMS.aculab.com>
References: <20201217234501.351725-1-daniel.west.dev@gmail.com>
 <04c331f6bfce57c253cb86208ebd28f6363e04c0.camel@perches.com>
In-Reply-To: <04c331f6bfce57c253cb86208ebd28f6363e04c0.camel@perches.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
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
 "mchehab+huawei@kernel.org" <mchehab+huawei@kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hverkuil-cisco@xs4all.nl" <hverkuil-cisco@xs4all.nl>,
 "christian.gromm@microchip.com" <christian.gromm@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSm9lIFBlcmNoZXMKPiBTZW50OiAxNyBEZWNlbWJlciAyMDIwIDIzOjU4Cj4gCj4gT24g
VGh1LCAyMDIwLTEyLTE3IGF0IDE1OjQ1IC0wODAwLCBEYW5pZWwgV2VzdCB3cm90ZToKPiA+IEZp
eGVkIGEgY29kaW5nIHN0eWxlIGlzc3VlLgo+IAo+IEl0IG1heSBwYXNzIGNoZWNrcGF0Y2ggd2l0
aG91dCB3YXJuaW5nLCBidXQgaXQncyB1bmNvbW1vbiBrZXJuZWwgY29kaW5nIHN0eWxlLgoKY2hl
Y2twYXRjaCBwcm9iYWJseSBzaG91bGRuJ3QgY29tcGxhaW4gYWJvdXQgbGluZXMgdGhhdCBlbmQg
aW4gKAppZiB0aGV5IGFyZSBmdW5jdGlvbiBkZWZpbml0aW9ucy4KRXZlbiBmb3IgZnVuY3Rpb24g
Y2FsbHMgeW91IHdvdWxkIG5lZWQgdG8gcmVkdWNlIHRoZSBpbmRlbnRhdGlvbgpyYXRoZXIgdGhh
biBtb3ZlIHRoZSAoLgpZb3UgbmVlZCB0aGUgeHh4KCB0byBiZSB0b2dldGhlciB0byBoZWxwIGdy
ZXAgcGF0dGVybnMuCgo+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tb3N0L3Zp
ZGVvL3ZpZGVvLmMgYi9kcml2ZXJzL3N0YWdpbmcvbW9zdC92aWRlby92aWRlby5jCj4gW10KPiA+
IEBAIC0zNjUsOCArMzY1LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB2aWRlb19kZXZpY2UgY29t
cF92aWRlb2Rldl90ZW1wbGF0ZSA9IHsKPiA+Cj4gPgo+ID4gwqAvKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiov
Cj4gPgo+ID4KPiA+IC1zdGF0aWMgc3RydWN0IG1vc3RfdmlkZW9fZGV2ICpnZXRfY29tcF9kZXYo
Cj4gPiAtCXN0cnVjdCBtb3N0X2ludGVyZmFjZSAqaWZhY2UsIGludCBjaGFubmVsX2lkeCkKPiA+
ICtzdGF0aWMgc3RydWN0IG1vc3RfdmlkZW9fZGV2ICpnZXRfY29tcF9kZXYKPiA+ICsJKHN0cnVj
dCBtb3N0X2ludGVyZmFjZSAqaWZhY2UsIGludCBjaGFubmVsX2lkeCkKPiAKPiBUaGlzIHdvdWxk
IGJlIGJldHRlciB1c2luZyBhbnkgb2Y6Cj4gCj4gKG1vc3QgY29tbW9uKQo+IAo+IHN0YXRpYyBz
dHJ1Y3QgbW9zdF92aWRlb19kZXYgKmdldF9jb21wX2RldihzdHJ1Y3QgbW9zdF9pbnRlcmZhY2Ug
KmlmYWNlLAo+IAkJCQkJICAgaW50IGNoYW5uZWxfaWR4KQo+IAo+IG9yIChsZXNzIGNvbW1vbikK
PiAKPiBzdGF0aWMgc3RydWN0IG1vc3RfdmlkZW9fZGV2ICoKPiBnZXRfY29tcF9kZXYoc3RydWN0
IG1vc3RfaW50ZXJmYWNlICppZmFjZSwgaW50IGNoYW5uZWxfaWR4KQo+IAo+IG9yICg+IDgwIGNv
bHVtbnMpCj4gCj4gc3RhdGljIHN0cnVjdCBtb3N0X3ZpZGVvX2RldiAqZ2V0X2NvbXBfZGV2KHN0
cnVjdCBtb3N0X2ludGVyZmFjZSAqaWZhY2UsIGludCBjaGFubmVsX2lkeCkKCk9yIHNob3J0ZW4g
dGhlIHZhcmlhYmxlL3R5cGUgbmFtZXMgYSBiaXQgc28gaXQgYWxsIGZpdHMuCgoJRGF2aWQKCi0K
UmVnaXN0ZXJlZCBBZGRyZXNzIExha2VzaWRlLCBCcmFtbGV5IFJvYWQsIE1vdW50IEZhcm0sIE1p
bHRvbiBLZXluZXMsIE1LMSAxUFQsIFVLClJlZ2lzdHJhdGlvbiBObzogMTM5NzM4NiAoV2FsZXMp
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
