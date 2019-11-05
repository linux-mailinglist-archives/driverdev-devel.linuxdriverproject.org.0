Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF590F03BD
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 18:05:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 08CF722219;
	Tue,  5 Nov 2019 17:05:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N0-7v-fmeVSy; Tue,  5 Nov 2019 17:05:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CAAD2204DD;
	Tue,  5 Nov 2019 17:05:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DE9321BF25B
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 17:05:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DA4EE8A25F
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 17:05:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9OZ5ZOg+WBLQ for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 17:05:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4D83B8A1ED
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 17:05:20 +0000 (UTC)
Received: from localhost (unknown [62.119.166.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46DDE2087E;
 Tue,  5 Nov 2019 17:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572973520;
 bh=jTO8reKcT4C5kCnNyyvTf8GTELx7dazG4WitwpYdsJE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HeBSfHogBHebaNjOYUBn6YSGujIWYFpHH6SK1/G8DvZ0qXliA7nwXkgqvwd+LvWrl
 C4JGrsF4eNG0U2wVB0iEpgseqXIB4ewsamhCfis3ZYbB1m43kZXPCZE3zpJ5qUOi0b
 2vLj3xuNAgfGmmG9t3FtgOqvC+uzwLvY5Oa09w4Y=
Date: Tue, 5 Nov 2019 18:05:15 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH v2 01/10] staging: exfat: Clean up return codes -
 FFS_FORMATERR
Message-ID: <20191105170515.GA2788121@kroah.com>
References: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
 <20191104014510.102356-2-Valdis.Kletnieks@vt.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104014510.102356-2-Valdis.Kletnieks@vt.edu>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU3VuLCBOb3YgMDMsIDIwMTkgYXQgMDg6NDQ6NTdQTSAtMDUwMCwgVmFsZGlzIEtsZXRuaWVr
cyB3cm90ZToKPiBDb252ZXJ0IEZGU19GT1JNQVRFUlIgdG8gLUVGU0NPUlJVUFRFRAo+IAo+IFNp
Z25lZC1vZmYtYnk6IFZhbGRpcyBLbGV0bmlla3MgPFZhbGRpcy5LbGV0bmlla3NAdnQuZWR1Pgo+
IC0tLQo+ICBkcml2ZXJzL3N0YWdpbmcvZXhmYXQvZXhmYXQuaCAgICAgIHwgMyArKy0KPiAgZHJp
dmVycy9zdGFnaW5nL2V4ZmF0L2V4ZmF0X2NvcmUuYyB8IDggKysrKy0tLS0KPiAgMiBmaWxlcyBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy9leGZhdC9leGZhdC5oIGIvZHJpdmVycy9zdGFnaW5nL2V4ZmF0L2V4
ZmF0LmgKPiBpbmRleCBhY2I3M2Y0N2EyNTMuLjRmOWJhMjM1ZDk2NyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3N0YWdpbmcvZXhmYXQvZXhmYXQuaAo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9leGZh
dC9leGZhdC5oCj4gQEAgLTMwLDYgKzMwLDggQEAKPiAgI3VuZGVmIERFQlVHCj4gICNlbmRpZgo+
ICAKPiArI2RlZmluZSBFRlNDT1JSVVBURUQJRVVDTEVBTgkJLyogRmlsZXN5c3RlbSBpcyBjb3Jy
dXB0ZWQgKi8KPiArCj4gICNkZWZpbmUgREVOVFJZX1NJWkUJCTMyCS8qIGRpciBlbnRyeSBzaXpl
ICovCj4gICNkZWZpbmUgREVOVFJZX1NJWkVfQklUUwk1Cj4gIAo+IEBAIC0yMDksNyArMjExLDYg
QEAgc3RhdGljIGlubGluZSB1MTYgZ2V0X3Jvd19pbmRleCh1MTYgaSkKPiAgLyogcmV0dXJuIHZh
bHVlcyAqLwo+ICAjZGVmaW5lIEZGU19TVUNDRVNTICAgICAgICAgICAgIDAKPiAgI2RlZmluZSBG
RlNfTUVESUFFUlIgICAgICAgICAgICAxCj4gLSNkZWZpbmUgRkZTX0ZPUk1BVEVSUiAgICAgICAg
ICAgMgo+ICAjZGVmaW5lIEZGU19NT1VOVEVEICAgICAgICAgICAgIDMKPiAgI2RlZmluZSBGRlNf
Tk9UTU9VTlRFRCAgICAgICAgICA0Cj4gICNkZWZpbmUgRkZTX0FMSUdOTUVOVEVSUiAgICAgICAg
NQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvZXhmYXQvZXhmYXRfY29yZS5jIGIvZHJp
dmVycy9zdGFnaW5nL2V4ZmF0L2V4ZmF0X2NvcmUuYwo+IGluZGV4IGIyM2ZiZjNlYmFhNS4uZTkw
YjU0YTE3MTUwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9leGZhdC9leGZhdF9jb3Jl
LmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvZXhmYXQvZXhmYXRfY29yZS5jCj4gQEAgLTU3Myw3
ICs1NzMsNyBAQCBzMzIgbG9hZF9hbGxvY19iaXRtYXAoc3RydWN0IHN1cGVyX2Jsb2NrICpzYikK
PiAgCQkJcmV0dXJuIEZGU19NRURJQUVSUjsKPiAgCX0KPiAgCj4gLQlyZXR1cm4gRkZTX0ZPUk1B
VEVSUjsKPiArCXJldHVybiAtRUZTQ09SUlVQVEVEOwo+ICB9Cj4gIAo+ICB2b2lkIGZyZWVfYWxs
b2NfYml0bWFwKHN0cnVjdCBzdXBlcl9ibG9jayAqc2IpCj4gQEAgLTMwMTYsNyArMzAxNiw3IEBA
IHMzMiBmYXQxNl9tb3VudChzdHJ1Y3Qgc3VwZXJfYmxvY2sgKnNiLCBzdHJ1Y3QgcGJyX3NlY3Rv
cl90ICpwX3BicikKPiAgCXN0cnVjdCBiZF9pbmZvX3QgKnBfYmQgPSAmKEVYRkFUX1NCKHNiKS0+
YmRfaW5mbyk7Cj4gIAo+ICAJaWYgKHBfYnBiLT5udW1fZmF0cyA9PSAwKQo+IC0JCXJldHVybiBG
RlNfRk9STUFURVJSOwo+ICsJCXJldHVybiAtRUZTQ09SUlVQVEVEOwo+ICAKPiAgCW51bV9yb290
X3NlY3RvcnMgPSBHRVQxNihwX2JwYi0+bnVtX3Jvb3RfZW50cmllcykgPDwgREVOVFJZX1NJWkVf
QklUUzsKPiAgCW51bV9yb290X3NlY3RvcnMgPSAoKG51bV9yb290X3NlY3RvcnMgLSAxKSA+Pgo+
IEBAIC0zMDc4LDcgKzMwNzgsNyBAQCBzMzIgZmF0MzJfbW91bnQoc3RydWN0IHN1cGVyX2Jsb2Nr
ICpzYiwgc3RydWN0IHBicl9zZWN0b3JfdCAqcF9wYnIpCj4gIAlzdHJ1Y3QgYmRfaW5mb190ICpw
X2JkID0gJihFWEZBVF9TQihzYiktPmJkX2luZm8pOwo+ICAKPiAgCWlmIChwX2JwYi0+bnVtX2Zh
dHMgPT0gMCkKPiAtCQlyZXR1cm4gRkZTX0ZPUk1BVEVSUjsKPiArCQlyZXR1cm4gLUVGU0NPUlJV
UFRFRDsKPiAgCj4gIAlwX2ZzLT5zZWN0b3JzX3Blcl9jbHUgPSBwX2JwYi0+c2VjdG9yc19wZXJf
Y2x1Owo+ICAJcF9mcy0+c2VjdG9yc19wZXJfY2x1X2JpdHMgPSBpbG9nMihwX2JwYi0+c2VjdG9y
c19wZXJfY2x1KTsKPiBAQCAtMzE1Nyw3ICszMTU3LDcgQEAgczMyIGV4ZmF0X21vdW50KHN0cnVj
dCBzdXBlcl9ibG9jayAqc2IsIHN0cnVjdCBwYnJfc2VjdG9yX3QgKnBfcGJyKQo+ICAJc3RydWN0
IGJkX2luZm9fdCAqcF9iZCA9ICYoRVhGQVRfU0Ioc2IpLT5iZF9pbmZvKTsKPiAgCj4gIAlpZiAo
cF9icGItPm51bV9mYXRzID09IDApCj4gLQkJcmV0dXJuIEZGU19GT1JNQVRFUlI7Cj4gKwkJcmV0
dXJuIC1FRlNDT1JSVVBURUQ7Cj4gIAo+ICAJcF9mcy0+c2VjdG9yc19wZXJfY2x1ID0gMSA8PCBw
X2JwYi0+c2VjdG9yc19wZXJfY2x1X2JpdHM7Cj4gIAlwX2ZzLT5zZWN0b3JzX3Blcl9jbHVfYml0
cyA9IHBfYnBiLT5zZWN0b3JzX3Blcl9jbHVfYml0czsKClRoaXMgcGF0Y2ggYnJlYWtzIHRoZSBi
dWlsZDoKCmRyaXZlcnMvc3RhZ2luZy9leGZhdC9leGZhdF9zdXBlci5jOiBJbiBmdW5jdGlvbiDi
gJhmZnNNb3VudFZvbOKAmToKZHJpdmVycy9zdGFnaW5nL2V4ZmF0L2V4ZmF0X3N1cGVyLmM6Mzg3
Ojk6IGVycm9yOiDigJhGRlNfRk9STUFURVJS4oCZIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0
aGlzIGZ1bmN0aW9uKQogIDM4NyB8ICAgcmV0ID0gRkZTX0ZPUk1BVEVSUjsKICAgICAgfCAgICAg
ICAgIF5+fn5+fn5+fn5+fn4KCgpEaWQgeW91IHRlc3QtYnVpbGQgdGhpcyB0aGluZz8KCnRoYW5r
cywKCmdyZWcgay1oCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
