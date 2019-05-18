Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8082232B
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 12:23:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0419486FF2;
	Sat, 18 May 2019 10:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kfVrnfUsY-nn; Sat, 18 May 2019 10:23:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD187860FF;
	Sat, 18 May 2019 10:23:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C0A381BF2F7
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 10:23:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BD501227E1
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 10:23:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LZCSj5Xegt6q for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 10:23:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk [46.235.226.198])
 by silver.osuosl.org (Postfix) with ESMTPS id 828342279B
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 10:23:34 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148]) by saturn.retrosnub.co.uk (Postfix;
 Retrosnub mail submission) with ESMTPSA id D88A59E7DE3; 
 Sat, 18 May 2019 11:23:31 +0100 (BST)
Date: Sat, 18 May 2019 11:23:30 +0100
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH 2/5] iio: adc: ad7606: Add software configuration
Message-ID: <20190518112330.2a9167b2@archlinux>
In-Reply-To: <20190518110749.080c7a04@archlinux>
References: <20190516143208.19294-1-beniamin.bia@analog.com>
 <20190516143208.19294-2-beniamin.bia@analog.com>
 <20190518110749.080c7a04@archlinux>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, lars@metafoo.de,
 biabeniamin@outlook.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCAxOCBNYXkgMjAxOSAxMTowNzo0OSArMDEwMApKb25hdGhhbiBDYW1lcm9uIDxqaWMy
M0BrZXJuZWwub3JnPiB3cm90ZToKCj4gT24gVGh1LCAxNiBNYXkgMjAxOSAxNzozMjowNSArMDMw
MAo+IEJlbmlhbWluIEJpYSA8YmVuaWFtaW4uYmlhQGFuYWxvZy5jb20+IHdyb3RlOgo+IAo+ID4g
QmVjYXVzZSB0aGlzIGRyaXZlciB3aWxsIHN1cHBvcnQgbXVsdGlwbGUgY29uZmlndXJhdGlvbnMg
Zm9yIHNvZnR3YXJlLAo+ID4gdGhlIHNvZnR3YXJlIGNvbmZpZ3VyYXRpb24gd2FzIG1hZGUgZ2Vu
ZXJpYy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQmVuaWFtaW4gQmlhIDxiZW5pYW1pbi5iaWFA
YW5hbG9nLmNvbT4gIAo+IEFwcGxpZWQgdG8gdGhlIHRvZ3JlZyBicmFuY2ggb2YgaWlvLmdpdCBh
bmQgcHVzaGVkIG91dCBhcyB0ZXN0aW5nIGZvcgo+IHRoZSBhdXRvYnVpbGRlcnMgdG8gcGxheSB3
aXRoIGl0LgpBcyB3aXRoIHBhdGNoIDEsIEkndmUgYmFja2VkIHRoaXMgb3V0IGZvciBub3cgYXMg
aXQgZG9lc24ndCBtYWtlIHNlbnNlCndpdGggdGhlIGxhdGVyLiAgRm9yIHJlZmVyZW5jZSBwbGVh
c2UgYWRkLgoKQWNrZWQtYnk6IEpvbmF0aGFuIENhbWVyb24gPEpvbmF0aGFuLkNhbWVyb25AaHVh
d2VpLmNvbT4KClRoYW5rcywKCkpvbmF0aGFuCgo+IAo+IFRoYW5rcwo+IAo+IEpvbmF0aGFuCj4g
Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmMgfCA0MCArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrLS0tCj4gPiAgZHJpdmVycy9paW8vYWRjL2FkNzYwNi5o
IHwgIDIgKysKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmMgYi9k
cml2ZXJzL2lpby9hZGMvYWQ3NjA2LmMKPiA+IGluZGV4IGM2NmZmMjJmMzJkMi4uYWJhMGZkMTIz
YTUxIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9paW8vYWRjL2FkNzYwNi5jCj4gPiArKysgYi9k
cml2ZXJzL2lpby9hZGMvYWQ3NjA2LmMKPiA+IEBAIC0xNDAsNyArMTQwLDcgQEAgc3RhdGljIGlu
dCBhZDc2MDZfcmVhZF9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKPiA+ICAJCQkgICBp
bnQgKnZhbDIsCj4gPiAgCQkJICAgbG9uZyBtKQo+ID4gIHsKPiA+IC0JaW50IHJldDsKPiA+ICsJ
aW50IHJldCwgY2ggPSAwOwo+ID4gIAlzdHJ1Y3QgYWQ3NjA2X3N0YXRlICpzdCA9IGlpb19wcml2
KGluZGlvX2Rldik7Cj4gPiAgCj4gPiAgCXN3aXRjaCAobSkgewo+ID4gQEAgLTE1Nyw4ICsxNTcs
MTAgQEAgc3RhdGljIGludCBhZDc2MDZfcmVhZF9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlvX2Rl
diwKPiA+ICAJCSp2YWwgPSAoc2hvcnQpcmV0Owo+ID4gIAkJcmV0dXJuIElJT19WQUxfSU5UOwo+
ID4gIAljYXNlIElJT19DSEFOX0lORk9fU0NBTEU6Cj4gPiArCQlpZiAoc3QtPnN3X21vZGVfZW4p
Cj4gPiArCQkJY2ggPSBjaGFuLT5hZGRyZXNzOwo+ID4gIAkJKnZhbCA9IDA7Cj4gPiAtCQkqdmFs
MiA9IHN0LT5zY2FsZV9hdmFpbFtzdC0+cmFuZ2VbMF1dOwo+ID4gKwkJKnZhbDIgPSBzdC0+c2Nh
bGVfYXZhaWxbc3QtPnJhbmdlW2NoXV07Cj4gPiAgCQlyZXR1cm4gSUlPX1ZBTF9JTlRfUExVU19N
SUNSTzsKPiA+ICAJY2FzZSBJSU9fQ0hBTl9JTkZPX09WRVJTQU1QTElOR19SQVRJTzoKPiA+ICAJ
CSp2YWwgPSBzdC0+b3ZlcnNhbXBsaW5nOwo+ID4gQEAgLTIzMyw3ICsyMzUsOSBAQCBzdGF0aWMg
aW50IGFkNzYwNl93cml0ZV9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKPiA+ICAJY2Fz
ZSBJSU9fQ0hBTl9JTkZPX1NDQUxFOgo+ID4gIAkJbXV0ZXhfbG9jaygmc3QtPmxvY2spOwo+ID4g
IAkJaSA9IGZpbmRfY2xvc2VzdCh2YWwyLCBzdC0+c2NhbGVfYXZhaWwsIHN0LT5udW1fc2NhbGVz
KTsKPiA+IC0JCXJldCA9IHN0LT53cml0ZV9zY2FsZShpbmRpb19kZXYsIGNoYW4tPmFkZHJlc3Ms
IGkpOwo+ID4gKwkJaWYgKHN0LT5zd19tb2RlX2VuKQo+ID4gKwkJCWNoID0gY2hhbi0+YWRkcmVz
czsKPiA+ICsJCXJldCA9IHN0LT53cml0ZV9zY2FsZShpbmRpb19kZXYsIGNoLCBpKTsKPiA+ICAJ
CWlmIChyZXQgPCAwKSB7Cj4gPiAgCQkJbXV0ZXhfdW5sb2NrKCZzdC0+bG9jayk7Cj4gPiAgCQkJ
cmV0dXJuIHJldDsKPiA+IEBAIC02MTYsNiArNjIwLDM2IEBAIGludCBhZDc2MDZfcHJvYmUoc3Ry
dWN0IGRldmljZSAqZGV2LCBpbnQgaXJxLCB2b2lkIF9faW9tZW0gKmJhc2VfYWRkcmVzcywKPiA+
ICAJc3QtPndyaXRlX3NjYWxlID0gYWQ3NjA2X3dyaXRlX3NjYWxlX2h3Owo+ID4gIAlzdC0+d3Jp
dGVfb3MgPSBhZDc2MDZfd3JpdGVfb3NfaHc7Cj4gPiAgCj4gPiArCWlmIChzdC0+Y2hpcF9pbmZv
LT5zd19tb2RlX2NvbmZpZykKPiA+ICsJCXN0LT5zd19tb2RlX2VuID0gZGV2aWNlX3Byb3BlcnR5
X3ByZXNlbnQoc3QtPmRldiwKPiA+ICsJCQkJCQkJICJhZGksc3ctbW9kZSIpOwo+ID4gKwo+ID4g
KwlpZiAoc3QtPnN3X21vZGVfZW4pIHsKPiA+ICsJCS8qIEFmdGVyIHJlc2V0LCBpbiBzb2Z0d2Fy
ZSBtb2RlLCDCsTEwIFYgaXMgc2V0IGJ5IGRlZmF1bHQgKi8KPiA+ICsJCW1lbXNldDMyKHN0LT5y
YW5nZSwgMiwgQVJSQVlfU0laRShzdC0+cmFuZ2UpKTsKPiA+ICsJCWluZGlvX2Rldi0+aW5mbyA9
ICZhZDc2MDZfaW5mb19vc19hbmRfcmFuZ2U7Cj4gPiArCj4gPiArCQkvKgo+ID4gKwkJICogSW4g
c29mdHdhcmUgbW9kZSwgdGhlIHJhbmdlIGdwaW8gaGFzIG5vIGxvbmdlciBpdHMgZnVuY3Rpb24u
Cj4gPiArCQkgKiBJbnN0ZWFkLCB0aGUgc2NhbGUgY2FuIGJlIGNvbmZpZ3VyZWQgaW5kaXZpZHVh
bGx5IGZvciBlYWNoCj4gPiArCQkgKiBjaGFubmVsIGZyb20gdGhlIHJhbmdlIHJlZ2lzdGVycy4K
PiA+ICsJCSAqLwo+ID4gKwkJaWYgKHN0LT5jaGlwX2luZm8tPndyaXRlX3NjYWxlX3N3KQo+ID4g
KwkJCXN0LT53cml0ZV9zY2FsZSA9IHN0LT5jaGlwX2luZm8tPndyaXRlX3NjYWxlX3N3Owo+ID4g
Kwo+ID4gKwkJLyoKPiA+ICsJCSAqIEluIHNvZnR3YXJlIG1vZGUsIHRoZSBvdmVyc2FtcGxpbmcg
aXMgbm8gbG9uZ2VyIGNvbmZpZ3VyZWQKPiA+ICsJCSAqIHdpdGggR1BJTyBwaW5zLiBJbnN0ZWFk
LCB0aGUgb3ZlcnNhbXBsaW5nIGNhbiBiZSBjb25maWd1cmVkCj4gPiArCQkgKiBpbiBjb25maWd1
cmF0aWlvbiByZWdpc3Rlci4KPiA+ICsJCSAqLwo+ID4gKwkJaWYgKHN0LT5jaGlwX2luZm8tPndy
aXRlX29zX3N3KQo+ID4gKwkJCXN0LT53cml0ZV9vcyA9IHN0LT5jaGlwX2luZm8tPndyaXRlX29z
X3N3Owo+ID4gKwo+ID4gKwkJcmV0ID0gc3QtPmNoaXBfaW5mby0+c3dfbW9kZV9jb25maWcoaW5k
aW9fZGV2KTsKPiA+ICsJCWlmIChyZXQgPCAwKQo+ID4gKwkJCXJldHVybiByZXQ7Cj4gPiArCX0K
PiA+ICsKPiA+ICAJc3QtPnRyaWcgPSBkZXZtX2lpb190cmlnZ2VyX2FsbG9jKGRldiwgIiVzLWRl
diVkIiwKPiA+ICAJCQkJCSAgaW5kaW9fZGV2LT5uYW1lLCBpbmRpb19kZXYtPmlkKTsKPiA+ICAJ
aWYgKCFzdC0+dHJpZykKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMvYWQ3NjA2Lmgg
Yi9kcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmgKPiA+IGluZGV4IDE0M2MzMDE2M2RmOS4uZDhhNTA5
YzJjNDI4IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9paW8vYWRjL2FkNzYwNi5oCj4gPiArKysg
Yi9kcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmgKPiA+IEBAIC00Myw2ICs0Myw3IEBAIHN0cnVjdCBh
ZDc2MDZfY2hpcF9pbmZvIHsKPiA+ICAgKiBAcmFuZ2UJCXZvbHRhZ2UgcmFuZ2Ugc2VsZWN0aW9u
LCBzZWxlY3RzIHdoaWNoIHNjYWxlIHRvIGFwcGx5Cj4gPiAgICogQG92ZXJzYW1wbGluZwlvdmVy
c2FtcGxpbmcgc2VsZWN0aW9uCj4gPiAgICogQGJhc2VfYWRkcmVzcwlhZGRyZXNzIGZyb20gd2hl
cmUgdG8gcmVhZCBkYXRhIGluIHBhcmFsbGVsIG9wZXJhdGlvbgo+ID4gKyAqIEBzd19tb2RlX2Vu
CQlzb2Z0d2FyZSBtb2RlIGVuYWJsZWQKPiA+ICAgKiBAc2NhbGVfYXZhaWwJCXBvaW50ZXIgdG8g
dGhlIGFycmF5IHdoaWNoIHN0b3JlcyB0aGUgYXZhaWxhYmxlIHNjYWxlcwo+ID4gICAqIEBudW1f
c2NhbGVzCQludW1iZXIgb2YgZWxlbWVudHMgc3RvcmVkIGluIHRoZSBzY2FsZV9hdmFpbCBhcnJh
eQo+ID4gICAqIEBvdmVyc2FtcGxpbmdfYXZhaWwJcG9pbnRlciB0byB0aGUgYXJyYXkgd2hpY2gg
c3RvcmVzIHRoZSBhdmFpbGFibGUKPiA+IEBAIC03MSw2ICs3Miw3IEBAIHN0cnVjdCBhZDc2MDZf
c3RhdGUgewo+ID4gIAl1bnNpZ25lZCBpbnQJCQlyYW5nZVsxNl07Cj4gPiAgCXVuc2lnbmVkIGlu
dAkJCW92ZXJzYW1wbGluZzsKPiA+ICAJdm9pZCBfX2lvbWVtCQkJKmJhc2VfYWRkcmVzczsKPiA+
ICsJYm9vbAkJCQlzd19tb2RlX2VuOwo+ID4gIAljb25zdCB1bnNpZ25lZCBpbnQJCSpzY2FsZV9h
dmFpbDsKPiA+ICAJdW5zaWduZWQgaW50CQkJbnVtX3NjYWxlczsKPiA+ICAJY29uc3QgdW5zaWdu
ZWQgaW50CQkqb3ZlcnNhbXBsaW5nX2F2YWlsOyAgCj4gCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
