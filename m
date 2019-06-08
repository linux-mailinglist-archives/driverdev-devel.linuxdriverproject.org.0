Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F76739D43
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 13:27:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E5FF62150F;
	Sat,  8 Jun 2019 11:27:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id otPaHoHEc-+0; Sat,  8 Jun 2019 11:27:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9109221519;
	Sat,  8 Jun 2019 11:27:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E05F41BF389
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:27:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DD45A86506
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:27:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lJ17cm2WFegr for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 11:27:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 277C781F70
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 11:27:53 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB8FE2146E;
 Sat,  8 Jun 2019 11:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559993273;
 bh=weH8EC/uoYWcA/LwWDgSVN249qFObxkBB3HcdMk5Vwk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=n5Zu/SMNePdUE37qRqXEX+OO3LbKc1ijWx8/l+GiQew032hRHjtpg/PON2vO1UuSX
 Ok1U7hnbOhLO79SGxRI2ulM9tkuaGGT5xeRJ4z1BQpA/MYM28MRQi1ga02fO8srLuI
 9KBsvspRsEIDlSX51eMEsYfIaXPC6ALlFbbkF70I=
Date: Sat, 8 Jun 2019 12:27:46 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH v2 2/4] iio: adc: ad7606: Add software configuration
Message-ID: <20190608122746.1e7d4536@archlinux>
In-Reply-To: <20190527125650.2405-2-beniamin.bia@analog.com>
References: <20190527125650.2405-1-beniamin.bia@analog.com>
 <20190527125650.2405-2-beniamin.bia@analog.com>
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

T24gTW9uLCAyNyBNYXkgMjAxOSAxNTo1Njo0OCArMDMwMApCZW5pYW1pbiBCaWEgPGJlbmlhbWlu
LmJpYUBhbmFsb2cuY29tPiB3cm90ZToKCj4gQmVjYXVzZSB0aGlzIGRyaXZlciB3aWxsIHN1cHBv
cnQgbXVsdGlwbGUgY29uZmlndXJhdGlvbnMgZm9yIHNvZnR3YXJlLAo+IHRoZSBzb2Z0d2FyZSBj
b25maWd1cmF0aW9uIHdhcyBtYWRlIGdlbmVyaWMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQmVuaWFt
aW4gQmlhIDxiZW5pYW1pbi5iaWFAYW5hbG9nLmNvbT4KPiBBY2tlZC1ieTogSm9uYXRoYW4gQ2Ft
ZXJvbiA8amljMjNAa2VybmVsLm9yZz4KQXBwbGllZCB0byB0aGUgdG9ncmVnIGJyYW5jaCBvZiBp
aW8uZ2l0IGFuZCBwdXNoZWQgb3V0IGFzIHRlc3RpbmcKZm9yIHRoZSBhdXRvYnVpbGRlcnMgdG8g
cG9rZSBhdCBpdC4KClRoYW5rcywKCkpvbmF0aGFuCgo+IC0tLQo+IENoYW5nZXMgaW4gdjI6Cj4g
LW5vdGhpbmcgY2hhbmdlZAo+IAo+ICBkcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmMgfCA0MCArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tCj4gIGRyaXZlcnMvaWlvL2FkYy9h
ZDc2MDYuaCB8ICAyICsrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vYWRjL2FkNzYwNi5jIGIv
ZHJpdmVycy9paW8vYWRjL2FkNzYwNi5jCj4gaW5kZXggYzY2ZmYyMmYzMmQyLi5hYmEwZmQxMjNh
NTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9paW8vYWRjL2FkNzYwNi5jCj4gKysrIGIvZHJpdmVy
cy9paW8vYWRjL2FkNzYwNi5jCj4gQEAgLTE0MCw3ICsxNDAsNyBAQCBzdGF0aWMgaW50IGFkNzYw
Nl9yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAo+ICAJCQkgICBpbnQgKnZhbDIs
Cj4gIAkJCSAgIGxvbmcgbSkKPiAgewo+IC0JaW50IHJldDsKPiArCWludCByZXQsIGNoID0gMDsK
PiAgCXN0cnVjdCBhZDc2MDZfc3RhdGUgKnN0ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKPiAgCj4g
IAlzd2l0Y2ggKG0pIHsKPiBAQCAtMTU3LDggKzE1NywxMCBAQCBzdGF0aWMgaW50IGFkNzYwNl9y
ZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAo+ICAJCSp2YWwgPSAoc2hvcnQpcmV0
Owo+ICAJCXJldHVybiBJSU9fVkFMX0lOVDsKPiAgCWNhc2UgSUlPX0NIQU5fSU5GT19TQ0FMRToK
PiArCQlpZiAoc3QtPnN3X21vZGVfZW4pCj4gKwkJCWNoID0gY2hhbi0+YWRkcmVzczsKPiAgCQkq
dmFsID0gMDsKPiAtCQkqdmFsMiA9IHN0LT5zY2FsZV9hdmFpbFtzdC0+cmFuZ2VbMF1dOwo+ICsJ
CSp2YWwyID0gc3QtPnNjYWxlX2F2YWlsW3N0LT5yYW5nZVtjaF1dOwo+ICAJCXJldHVybiBJSU9f
VkFMX0lOVF9QTFVTX01JQ1JPOwo+ICAJY2FzZSBJSU9fQ0hBTl9JTkZPX09WRVJTQU1QTElOR19S
QVRJTzoKPiAgCQkqdmFsID0gc3QtPm92ZXJzYW1wbGluZzsKPiBAQCAtMjMzLDcgKzIzNSw5IEBA
IHN0YXRpYyBpbnQgYWQ3NjA2X3dyaXRlX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAo+
ICAJY2FzZSBJSU9fQ0hBTl9JTkZPX1NDQUxFOgo+ICAJCW11dGV4X2xvY2soJnN0LT5sb2NrKTsK
PiAgCQlpID0gZmluZF9jbG9zZXN0KHZhbDIsIHN0LT5zY2FsZV9hdmFpbCwgc3QtPm51bV9zY2Fs
ZXMpOwo+IC0JCXJldCA9IHN0LT53cml0ZV9zY2FsZShpbmRpb19kZXYsIGNoYW4tPmFkZHJlc3Ms
IGkpOwo+ICsJCWlmIChzdC0+c3dfbW9kZV9lbikKPiArCQkJY2ggPSBjaGFuLT5hZGRyZXNzOwo+
ICsJCXJldCA9IHN0LT53cml0ZV9zY2FsZShpbmRpb19kZXYsIGNoLCBpKTsKPiAgCQlpZiAocmV0
IDwgMCkgewo+ICAJCQltdXRleF91bmxvY2soJnN0LT5sb2NrKTsKPiAgCQkJcmV0dXJuIHJldDsK
PiBAQCAtNjE2LDYgKzYyMCwzNiBAQCBpbnQgYWQ3NjA2X3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRl
diwgaW50IGlycSwgdm9pZCBfX2lvbWVtICpiYXNlX2FkZHJlc3MsCj4gIAlzdC0+d3JpdGVfc2Nh
bGUgPSBhZDc2MDZfd3JpdGVfc2NhbGVfaHc7Cj4gIAlzdC0+d3JpdGVfb3MgPSBhZDc2MDZfd3Jp
dGVfb3NfaHc7Cj4gIAo+ICsJaWYgKHN0LT5jaGlwX2luZm8tPnN3X21vZGVfY29uZmlnKQo+ICsJ
CXN0LT5zd19tb2RlX2VuID0gZGV2aWNlX3Byb3BlcnR5X3ByZXNlbnQoc3QtPmRldiwKPiArCQkJ
CQkJCSAiYWRpLHN3LW1vZGUiKTsKPiArCj4gKwlpZiAoc3QtPnN3X21vZGVfZW4pIHsKPiArCQkv
KiBBZnRlciByZXNldCwgaW4gc29mdHdhcmUgbW9kZSwgwrExMCBWIGlzIHNldCBieSBkZWZhdWx0
ICovCj4gKwkJbWVtc2V0MzIoc3QtPnJhbmdlLCAyLCBBUlJBWV9TSVpFKHN0LT5yYW5nZSkpOwo+
ICsJCWluZGlvX2Rldi0+aW5mbyA9ICZhZDc2MDZfaW5mb19vc19hbmRfcmFuZ2U7Cj4gKwo+ICsJ
CS8qCj4gKwkJICogSW4gc29mdHdhcmUgbW9kZSwgdGhlIHJhbmdlIGdwaW8gaGFzIG5vIGxvbmdl
ciBpdHMgZnVuY3Rpb24uCj4gKwkJICogSW5zdGVhZCwgdGhlIHNjYWxlIGNhbiBiZSBjb25maWd1
cmVkIGluZGl2aWR1YWxseSBmb3IgZWFjaAo+ICsJCSAqIGNoYW5uZWwgZnJvbSB0aGUgcmFuZ2Ug
cmVnaXN0ZXJzLgo+ICsJCSAqLwo+ICsJCWlmIChzdC0+Y2hpcF9pbmZvLT53cml0ZV9zY2FsZV9z
dykKPiArCQkJc3QtPndyaXRlX3NjYWxlID0gc3QtPmNoaXBfaW5mby0+d3JpdGVfc2NhbGVfc3c7
Cj4gKwo+ICsJCS8qCj4gKwkJICogSW4gc29mdHdhcmUgbW9kZSwgdGhlIG92ZXJzYW1wbGluZyBp
cyBubyBsb25nZXIgY29uZmlndXJlZAo+ICsJCSAqIHdpdGggR1BJTyBwaW5zLiBJbnN0ZWFkLCB0
aGUgb3ZlcnNhbXBsaW5nIGNhbiBiZSBjb25maWd1cmVkCj4gKwkJICogaW4gY29uZmlndXJhdGlp
b24gcmVnaXN0ZXIuCj4gKwkJICovCj4gKwkJaWYgKHN0LT5jaGlwX2luZm8tPndyaXRlX29zX3N3
KQo+ICsJCQlzdC0+d3JpdGVfb3MgPSBzdC0+Y2hpcF9pbmZvLT53cml0ZV9vc19zdzsKPiArCj4g
KwkJcmV0ID0gc3QtPmNoaXBfaW5mby0+c3dfbW9kZV9jb25maWcoaW5kaW9fZGV2KTsKPiArCQlp
ZiAocmV0IDwgMCkKPiArCQkJcmV0dXJuIHJldDsKPiArCX0KPiArCj4gIAlzdC0+dHJpZyA9IGRl
dm1faWlvX3RyaWdnZXJfYWxsb2MoZGV2LCAiJXMtZGV2JWQiLAo+ICAJCQkJCSAgaW5kaW9fZGV2
LT5uYW1lLCBpbmRpb19kZXYtPmlkKTsKPiAgCWlmICghc3QtPnRyaWcpCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvaWlvL2FkYy9hZDc2MDYuaCBiL2RyaXZlcnMvaWlvL2FkYy9hZDc2MDYuaAo+IGlu
ZGV4IDE0M2MzMDE2M2RmOS4uZDhhNTA5YzJjNDI4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvaWlv
L2FkYy9hZDc2MDYuaAo+ICsrKyBiL2RyaXZlcnMvaWlvL2FkYy9hZDc2MDYuaAo+IEBAIC00Myw2
ICs0Myw3IEBAIHN0cnVjdCBhZDc2MDZfY2hpcF9pbmZvIHsKPiAgICogQHJhbmdlCQl2b2x0YWdl
IHJhbmdlIHNlbGVjdGlvbiwgc2VsZWN0cyB3aGljaCBzY2FsZSB0byBhcHBseQo+ICAgKiBAb3Zl
cnNhbXBsaW5nCW92ZXJzYW1wbGluZyBzZWxlY3Rpb24KPiAgICogQGJhc2VfYWRkcmVzcwlhZGRy
ZXNzIGZyb20gd2hlcmUgdG8gcmVhZCBkYXRhIGluIHBhcmFsbGVsIG9wZXJhdGlvbgo+ICsgKiBA
c3dfbW9kZV9lbgkJc29mdHdhcmUgbW9kZSBlbmFibGVkCj4gICAqIEBzY2FsZV9hdmFpbAkJcG9p
bnRlciB0byB0aGUgYXJyYXkgd2hpY2ggc3RvcmVzIHRoZSBhdmFpbGFibGUgc2NhbGVzCj4gICAq
IEBudW1fc2NhbGVzCQludW1iZXIgb2YgZWxlbWVudHMgc3RvcmVkIGluIHRoZSBzY2FsZV9hdmFp
bCBhcnJheQo+ICAgKiBAb3ZlcnNhbXBsaW5nX2F2YWlsCXBvaW50ZXIgdG8gdGhlIGFycmF5IHdo
aWNoIHN0b3JlcyB0aGUgYXZhaWxhYmxlCj4gQEAgLTcxLDYgKzcyLDcgQEAgc3RydWN0IGFkNzYw
Nl9zdGF0ZSB7Cj4gIAl1bnNpZ25lZCBpbnQJCQlyYW5nZVsxNl07Cj4gIAl1bnNpZ25lZCBpbnQJ
CQlvdmVyc2FtcGxpbmc7Cj4gIAl2b2lkIF9faW9tZW0JCQkqYmFzZV9hZGRyZXNzOwo+ICsJYm9v
bAkJCQlzd19tb2RlX2VuOwo+ICAJY29uc3QgdW5zaWduZWQgaW50CQkqc2NhbGVfYXZhaWw7Cj4g
IAl1bnNpZ25lZCBpbnQJCQludW1fc2NhbGVzOwo+ICAJY29uc3QgdW5zaWduZWQgaW50CQkqb3Zl
cnNhbXBsaW5nX2F2YWlsOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
