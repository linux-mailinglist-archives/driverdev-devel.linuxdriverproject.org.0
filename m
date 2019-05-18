Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB7922310
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 12:08:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8626E86477;
	Sat, 18 May 2019 10:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SSZyvZ9N58mj; Sat, 18 May 2019 10:07:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A962E8654D;
	Sat, 18 May 2019 10:07:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ABD431BF841
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 10:07:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A7333227CE
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 10:07:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CjGObHd0OfBt for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 10:07:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 19AF92274A
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 10:07:55 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A642420882;
 Sat, 18 May 2019 10:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558174074;
 bh=sUB5hovs/rIf/1+OYH5HuM1pm0D1fXyH9bo/DU9kax4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SuqC8lJYndA+qDxIEQ3UiU5TI/vXjU4XgPEfDmaA2NcL+3dWoPt/KkRVJfJCfFhPn
 LHvvS7X59ccHhiLMSJeWH1kQVNQ3kcG+IY65WuytW+H5XOIyd7PBwrCqc8oIMI8mC6
 1QIGK1lhcfel4EcuqCkJui64jtNlGt7JwzJVn+5M=
Date: Sat, 18 May 2019 11:07:49 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH 2/5] iio: adc: ad7606: Add software configuration
Message-ID: <20190518110749.080c7a04@archlinux>
In-Reply-To: <20190516143208.19294-2-beniamin.bia@analog.com>
References: <20190516143208.19294-1-beniamin.bia@analog.com>
 <20190516143208.19294-2-beniamin.bia@analog.com>
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

T24gVGh1LCAxNiBNYXkgMjAxOSAxNzozMjowNSArMDMwMApCZW5pYW1pbiBCaWEgPGJlbmlhbWlu
LmJpYUBhbmFsb2cuY29tPiB3cm90ZToKCj4gQmVjYXVzZSB0aGlzIGRyaXZlciB3aWxsIHN1cHBv
cnQgbXVsdGlwbGUgY29uZmlndXJhdGlvbnMgZm9yIHNvZnR3YXJlLAo+IHRoZSBzb2Z0d2FyZSBj
b25maWd1cmF0aW9uIHdhcyBtYWRlIGdlbmVyaWMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQmVuaWFt
aW4gQmlhIDxiZW5pYW1pbi5iaWFAYW5hbG9nLmNvbT4KQXBwbGllZCB0byB0aGUgdG9ncmVnIGJy
YW5jaCBvZiBpaW8uZ2l0IGFuZCBwdXNoZWQgb3V0IGFzIHRlc3RpbmcgZm9yCnRoZSBhdXRvYnVp
bGRlcnMgdG8gcGxheSB3aXRoIGl0LgoKVGhhbmtzCgpKb25hdGhhbgoKPiAtLS0KPiAgZHJpdmVy
cy9paW8vYWRjL2FkNzYwNi5jIHwgNDAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKy0tLQo+ICBkcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmggfCAgMiArKwo+ICAyIGZpbGVzIGNo
YW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvaWlvL2FkYy9hZDc2MDYuYyBiL2RyaXZlcnMvaWlvL2FkYy9hZDc2MDYuYwo+IGlu
ZGV4IGM2NmZmMjJmMzJkMi4uYWJhMGZkMTIzYTUxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvaWlv
L2FkYy9hZDc2MDYuYwo+ICsrKyBiL2RyaXZlcnMvaWlvL2FkYy9hZDc2MDYuYwo+IEBAIC0xNDAs
NyArMTQwLDcgQEAgc3RhdGljIGludCBhZDc2MDZfcmVhZF9yYXcoc3RydWN0IGlpb19kZXYgKmlu
ZGlvX2RldiwKPiAgCQkJICAgaW50ICp2YWwyLAo+ICAJCQkgICBsb25nIG0pCj4gIHsKPiAtCWlu
dCByZXQ7Cj4gKwlpbnQgcmV0LCBjaCA9IDA7Cj4gIAlzdHJ1Y3QgYWQ3NjA2X3N0YXRlICpzdCA9
IGlpb19wcml2KGluZGlvX2Rldik7Cj4gIAo+ICAJc3dpdGNoIChtKSB7Cj4gQEAgLTE1Nyw4ICsx
NTcsMTAgQEAgc3RhdGljIGludCBhZDc2MDZfcmVhZF9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlv
X2RldiwKPiAgCQkqdmFsID0gKHNob3J0KXJldDsKPiAgCQlyZXR1cm4gSUlPX1ZBTF9JTlQ7Cj4g
IAljYXNlIElJT19DSEFOX0lORk9fU0NBTEU6Cj4gKwkJaWYgKHN0LT5zd19tb2RlX2VuKQo+ICsJ
CQljaCA9IGNoYW4tPmFkZHJlc3M7Cj4gIAkJKnZhbCA9IDA7Cj4gLQkJKnZhbDIgPSBzdC0+c2Nh
bGVfYXZhaWxbc3QtPnJhbmdlWzBdXTsKPiArCQkqdmFsMiA9IHN0LT5zY2FsZV9hdmFpbFtzdC0+
cmFuZ2VbY2hdXTsKPiAgCQlyZXR1cm4gSUlPX1ZBTF9JTlRfUExVU19NSUNSTzsKPiAgCWNhc2Ug
SUlPX0NIQU5fSU5GT19PVkVSU0FNUExJTkdfUkFUSU86Cj4gIAkJKnZhbCA9IHN0LT5vdmVyc2Ft
cGxpbmc7Cj4gQEAgLTIzMyw3ICsyMzUsOSBAQCBzdGF0aWMgaW50IGFkNzYwNl93cml0ZV9yYXco
c3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKPiAgCWNhc2UgSUlPX0NIQU5fSU5GT19TQ0FMRToK
PiAgCQltdXRleF9sb2NrKCZzdC0+bG9jayk7Cj4gIAkJaSA9IGZpbmRfY2xvc2VzdCh2YWwyLCBz
dC0+c2NhbGVfYXZhaWwsIHN0LT5udW1fc2NhbGVzKTsKPiAtCQlyZXQgPSBzdC0+d3JpdGVfc2Nh
bGUoaW5kaW9fZGV2LCBjaGFuLT5hZGRyZXNzLCBpKTsKPiArCQlpZiAoc3QtPnN3X21vZGVfZW4p
Cj4gKwkJCWNoID0gY2hhbi0+YWRkcmVzczsKPiArCQlyZXQgPSBzdC0+d3JpdGVfc2NhbGUoaW5k
aW9fZGV2LCBjaCwgaSk7Cj4gIAkJaWYgKHJldCA8IDApIHsKPiAgCQkJbXV0ZXhfdW5sb2NrKCZz
dC0+bG9jayk7Cj4gIAkJCXJldHVybiByZXQ7Cj4gQEAgLTYxNiw2ICs2MjAsMzYgQEAgaW50IGFk
NzYwNl9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYsIGludCBpcnEsIHZvaWQgX19pb21lbSAqYmFz
ZV9hZGRyZXNzLAo+ICAJc3QtPndyaXRlX3NjYWxlID0gYWQ3NjA2X3dyaXRlX3NjYWxlX2h3Owo+
ICAJc3QtPndyaXRlX29zID0gYWQ3NjA2X3dyaXRlX29zX2h3Owo+ICAKPiArCWlmIChzdC0+Y2hp
cF9pbmZvLT5zd19tb2RlX2NvbmZpZykKPiArCQlzdC0+c3dfbW9kZV9lbiA9IGRldmljZV9wcm9w
ZXJ0eV9wcmVzZW50KHN0LT5kZXYsCj4gKwkJCQkJCQkgImFkaSxzdy1tb2RlIik7Cj4gKwo+ICsJ
aWYgKHN0LT5zd19tb2RlX2VuKSB7Cj4gKwkJLyogQWZ0ZXIgcmVzZXQsIGluIHNvZnR3YXJlIG1v
ZGUsIMKxMTAgViBpcyBzZXQgYnkgZGVmYXVsdCAqLwo+ICsJCW1lbXNldDMyKHN0LT5yYW5nZSwg
MiwgQVJSQVlfU0laRShzdC0+cmFuZ2UpKTsKPiArCQlpbmRpb19kZXYtPmluZm8gPSAmYWQ3NjA2
X2luZm9fb3NfYW5kX3JhbmdlOwo+ICsKPiArCQkvKgo+ICsJCSAqIEluIHNvZnR3YXJlIG1vZGUs
IHRoZSByYW5nZSBncGlvIGhhcyBubyBsb25nZXIgaXRzIGZ1bmN0aW9uLgo+ICsJCSAqIEluc3Rl
YWQsIHRoZSBzY2FsZSBjYW4gYmUgY29uZmlndXJlZCBpbmRpdmlkdWFsbHkgZm9yIGVhY2gKPiAr
CQkgKiBjaGFubmVsIGZyb20gdGhlIHJhbmdlIHJlZ2lzdGVycy4KPiArCQkgKi8KPiArCQlpZiAo
c3QtPmNoaXBfaW5mby0+d3JpdGVfc2NhbGVfc3cpCj4gKwkJCXN0LT53cml0ZV9zY2FsZSA9IHN0
LT5jaGlwX2luZm8tPndyaXRlX3NjYWxlX3N3Owo+ICsKPiArCQkvKgo+ICsJCSAqIEluIHNvZnR3
YXJlIG1vZGUsIHRoZSBvdmVyc2FtcGxpbmcgaXMgbm8gbG9uZ2VyIGNvbmZpZ3VyZWQKPiArCQkg
KiB3aXRoIEdQSU8gcGlucy4gSW5zdGVhZCwgdGhlIG92ZXJzYW1wbGluZyBjYW4gYmUgY29uZmln
dXJlZAo+ICsJCSAqIGluIGNvbmZpZ3VyYXRpaW9uIHJlZ2lzdGVyLgo+ICsJCSAqLwo+ICsJCWlm
IChzdC0+Y2hpcF9pbmZvLT53cml0ZV9vc19zdykKPiArCQkJc3QtPndyaXRlX29zID0gc3QtPmNo
aXBfaW5mby0+d3JpdGVfb3Nfc3c7Cj4gKwo+ICsJCXJldCA9IHN0LT5jaGlwX2luZm8tPnN3X21v
ZGVfY29uZmlnKGluZGlvX2Rldik7Cj4gKwkJaWYgKHJldCA8IDApCj4gKwkJCXJldHVybiByZXQ7
Cj4gKwl9Cj4gKwo+ICAJc3QtPnRyaWcgPSBkZXZtX2lpb190cmlnZ2VyX2FsbG9jKGRldiwgIiVz
LWRldiVkIiwKPiAgCQkJCQkgIGluZGlvX2Rldi0+bmFtZSwgaW5kaW9fZGV2LT5pZCk7Cj4gIAlp
ZiAoIXN0LT50cmlnKQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmggYi9k
cml2ZXJzL2lpby9hZGMvYWQ3NjA2LmgKPiBpbmRleCAxNDNjMzAxNjNkZjkuLmQ4YTUwOWMyYzQy
OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmgKPiArKysgYi9kcml2ZXJz
L2lpby9hZGMvYWQ3NjA2LmgKPiBAQCAtNDMsNiArNDMsNyBAQCBzdHJ1Y3QgYWQ3NjA2X2NoaXBf
aW5mbyB7Cj4gICAqIEByYW5nZQkJdm9sdGFnZSByYW5nZSBzZWxlY3Rpb24sIHNlbGVjdHMgd2hp
Y2ggc2NhbGUgdG8gYXBwbHkKPiAgICogQG92ZXJzYW1wbGluZwlvdmVyc2FtcGxpbmcgc2VsZWN0
aW9uCj4gICAqIEBiYXNlX2FkZHJlc3MJYWRkcmVzcyBmcm9tIHdoZXJlIHRvIHJlYWQgZGF0YSBp
biBwYXJhbGxlbCBvcGVyYXRpb24KPiArICogQHN3X21vZGVfZW4JCXNvZnR3YXJlIG1vZGUgZW5h
YmxlZAo+ICAgKiBAc2NhbGVfYXZhaWwJCXBvaW50ZXIgdG8gdGhlIGFycmF5IHdoaWNoIHN0b3Jl
cyB0aGUgYXZhaWxhYmxlIHNjYWxlcwo+ICAgKiBAbnVtX3NjYWxlcwkJbnVtYmVyIG9mIGVsZW1l
bnRzIHN0b3JlZCBpbiB0aGUgc2NhbGVfYXZhaWwgYXJyYXkKPiAgICogQG92ZXJzYW1wbGluZ19h
dmFpbAlwb2ludGVyIHRvIHRoZSBhcnJheSB3aGljaCBzdG9yZXMgdGhlIGF2YWlsYWJsZQo+IEBA
IC03MSw2ICs3Miw3IEBAIHN0cnVjdCBhZDc2MDZfc3RhdGUgewo+ICAJdW5zaWduZWQgaW50CQkJ
cmFuZ2VbMTZdOwo+ICAJdW5zaWduZWQgaW50CQkJb3ZlcnNhbXBsaW5nOwo+ICAJdm9pZCBfX2lv
bWVtCQkJKmJhc2VfYWRkcmVzczsKPiArCWJvb2wJCQkJc3dfbW9kZV9lbjsKPiAgCWNvbnN0IHVu
c2lnbmVkIGludAkJKnNjYWxlX2F2YWlsOwo+ICAJdW5zaWduZWQgaW50CQkJbnVtX3NjYWxlczsK
PiAgCWNvbnN0IHVuc2lnbmVkIGludAkJKm92ZXJzYW1wbGluZ19hdmFpbDsKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
