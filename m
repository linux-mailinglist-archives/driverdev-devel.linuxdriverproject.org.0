Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2B7155A92
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Feb 2020 16:21:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 564508666C;
	Fri,  7 Feb 2020 15:21:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ik4zsXIBWaly; Fri,  7 Feb 2020 15:21:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D59C18659F;
	Fri,  7 Feb 2020 15:21:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E1D491BF35C
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 15:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DEA6D87E98
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 15:21:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4o2Ak6zq1uKe for <devel@linuxdriverproject.org>;
 Fri,  7 Feb 2020 15:21:18 +0000 (UTC)
X-Greylist: delayed 00:07:06 by SQLgrey-1.7.6
Received: from smtp84.iad3b.emailsrvr.com (smtp84.iad3b.emailsrvr.com
 [146.20.161.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 982CF87E97
 for <devel@driverdev.osuosl.org>; Fri,  7 Feb 2020 15:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1581088453;
 bh=N7o8AolGMi8EoqgWJFYVsUyq1qmbOyEvZCVkzDJ7nbk=;
 h=From:To:Subject:Date:From;
 b=FwUDF2QHW4ztSNOS5vKGtny+U/YdA3Bn/eOhqrRfuWaC0wQhiKgqF3YNeAbJCWL8t
 58dLBtajKOtMTDu9W5xESwAcy5/arVjsEdQQddc6QyG4IIsFkwiIbzprcLUdpAhD7a
 IiaWPSRVEJpqhw4QjV94JLahlIvU89Vz0fQTnhKE=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp3.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 359BF4019A; 
 Fri,  7 Feb 2020 10:14:12 -0500 (EST)
X-Sender-Id: abbotti@mev.co.uk
Received: from ian-deb.inside.mev.co.uk (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:465 (trex/5.7.12); Fri, 07 Feb 2020 10:14:13 -0500
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 1/4] staging: comedi: ni_routes: Refactor
 ni_find_valid_routes()
Date: Fri,  7 Feb 2020 15:13:57 +0000
Message-Id: <20200207151400.272678-2-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200207151400.272678-1-abbotti@mev.co.uk>
References: <20200207151400.272678-1-abbotti@mev.co.uk>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ian Abbott <abbotti@mev.co.uk>, =?UTF-8?q?=C3=89ric=20Piel?= <piel@delmic.com>,
 "Spencer E . Olson" <olsonse@umich.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

U3BsaXQgb3V0IHRoZSBsb29wcyBpbiBgbmlfZmluZF92YWxpZF9yb3V0ZXMoKWAgaW50byBzZXBh
cmF0ZSBmdW5jdGlvbnM6CgoqIG5pX2ZpbmRfcm91dGVfdmFsdWVzKGRldmljZV9mYW1pbHkpIHRv
IGZpbmQgdGhlIGxpc3Qgb2Ygcm91dGUgdmFsdWVzCiAgZm9yIGEgZGV2aWNlIGZhbWlseSAoZS5n
ICJuaS1tc2VyaWVzIik7IGFuZAoqIG5pX2ZpbmRfdmFsaWRfcm91dGVzKGJvYXJkX25hbWUpIHRv
IGZpbmQgdGhlIHNldCBvZiB2YWxpZCByb3V0ZXMgZm9yIGEKICBib2FyZCBuYW1lLgoKVGhlIGZ1
bmN0aW9ucyBhYm92ZSByZXR1cm4gYE5VTExgIGlmIHRoZSBpbmZvcm1hdGlvbiBpcyBub3QgZm91
bmQgKGFzIHdlCmRvIG5vdCBjdXJyZW50bHkgaGF2ZSB0aGUgcm91dGluZyBpbmZvcm1hdGlvbiBh
dmFpbGFibGUgZm9yIGFsbApzdXBwb3J0ZWQgYm9hcmRzKS4KCkNjOiDDiXJpYyBQaWVsIDxwaWVs
QGRlbG1pYy5jb20+CkNjOiBTcGVuY2VyIEUuIE9sc29uIDxvbHNvbnNlQHVtaWNoLmVkdT4KU2ln
bmVkLW9mZi1ieTogSWFuIEFiYm90dCA8YWJib3R0aUBtZXYuY28udWs+Ci0tLQogZHJpdmVycy9z
dGFnaW5nL2NvbWVkaS9kcml2ZXJzL25pX3JvdXRlcy5jIHwgNDQgKysrKysrKysrKysrKysrKyst
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9jb21lZGkvZHJpdmVycy9uaV9yb3V0ZXMuYyBi
L2RyaXZlcnMvc3RhZ2luZy9jb21lZGkvZHJpdmVycy9uaV9yb3V0ZXMuYwppbmRleCA4ZjM5OGIz
MGY1YmYuLjUwOGY3NmM1YzU3NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2NvbWVkaS9k
cml2ZXJzL25pX3JvdXRlcy5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9jb21lZGkvZHJpdmVycy9u
aV9yb3V0ZXMuYwpAQCAtNTAsMjAgKzUwLDEzIEBACiAjZGVmaW5lIFJWaSh0YWJsZSwgc3JjLCBk
ZXN0KQkoKHRhYmxlKVsoZGVzdCkgKiBOSV9OVU1fTkFNRVMgKyAoc3JjKV0pCiAKIC8qCi0gKiBG
aW5kIHRoZSBwcm9wZXIgcm91dGVfdmFsdWVzIGFuZCBuaV9kZXZpY2Vfcm91dGVzIHRhYmxlcyBm
b3IgdGhpcyBwYXJ0aWN1bGFyCi0gKiBkZXZpY2UuCi0gKgotICogUmV0dXJuOiAtRU5PREFUQSBp
ZiBlaXRoZXIgd2FzIG5vdCBmb3VuZDsgMCBpZiBib3RoIHdlcmUgZm91bmQuCisgKiBGaW5kIHRo
ZSByb3V0ZSB2YWx1ZXMgZm9yIGEgZGV2aWNlIGZhbWlseS4KICAqLwotc3RhdGljIGludCBuaV9m
aW5kX2RldmljZV9yb3V0ZXMoY29uc3QgY2hhciAqZGV2aWNlX2ZhbWlseSwKLQkJCQkgY29uc3Qg
Y2hhciAqYm9hcmRfbmFtZSwKLQkJCQkgc3RydWN0IG5pX3JvdXRlX3RhYmxlcyAqdGFibGVzKQor
c3RhdGljIGNvbnN0IHU4ICpuaV9maW5kX3JvdXRlX3ZhbHVlcyhjb25zdCBjaGFyICpkZXZpY2Vf
ZmFtaWx5KQogewotCWNvbnN0IHN0cnVjdCBuaV9kZXZpY2Vfcm91dGVzICpkciA9IE5VTEw7CiAJ
Y29uc3QgdTggKnJ2ID0gTlVMTDsKIAlpbnQgaTsKIAotCS8qIEZpcnN0LCBmaW5kIHRoZSByZWdp
c3Rlcl92YWx1ZXMgdGFibGUgZm9yIHRoaXMgZGV2aWNlIGZhbWlseSAqLwogCWZvciAoaSA9IDA7
IG5pX2FsbF9yb3V0ZV92YWx1ZXNbaV07ICsraSkgewogCQlpZiAobWVtY21wKG5pX2FsbF9yb3V0
ZV92YWx1ZXNbaV0tPmZhbWlseSwgZGV2aWNlX2ZhbWlseSwKIAkJCSAgIHN0cm5sZW4oZGV2aWNl
X2ZhbWlseSwgMzApKSA9PSAwKSB7CkBAIC03MSw4ICs2NCwxOCBAQCBzdGF0aWMgaW50IG5pX2Zp
bmRfZGV2aWNlX3JvdXRlcyhjb25zdCBjaGFyICpkZXZpY2VfZmFtaWx5LAogCQkJYnJlYWs7CiAJ
CX0KIAl9CisJcmV0dXJuIHJ2OworfQorCisvKgorICogRmluZCB0aGUgdmFsaWQgcm91dGVzIGZv
ciBhIGJvYXJkLgorICovCitzdGF0aWMgY29uc3Qgc3RydWN0IG5pX2RldmljZV9yb3V0ZXMgKgor
bmlfZmluZF92YWxpZF9yb3V0ZXMoY29uc3QgY2hhciAqYm9hcmRfbmFtZSkKK3sKKwljb25zdCBz
dHJ1Y3QgbmlfZGV2aWNlX3JvdXRlcyAqZHIgPSBOVUxMOworCWludCBpOwogCi0JLyogU2Vjb25k
LCBmaW5kIHRoZSBzZXQgb2Ygcm91dGVzIHZhbGlkIGZvciB0aGlzIGRldmljZS4gKi8KIAlmb3Ig
KGkgPSAwOyBuaV9kZXZpY2Vfcm91dGVzX2xpc3RbaV07ICsraSkgewogCQlpZiAobWVtY21wKG5p
X2RldmljZV9yb3V0ZXNfbGlzdFtpXS0+ZGV2aWNlLCBib2FyZF9uYW1lLAogCQkJICAgc3Rybmxl
bihib2FyZF9uYW1lLCAzMCkpID09IDApIHsKQEAgLTgwLDYgKzgzLDI3IEBAIHN0YXRpYyBpbnQg
bmlfZmluZF9kZXZpY2Vfcm91dGVzKGNvbnN0IGNoYXIgKmRldmljZV9mYW1pbHksCiAJCQlicmVh
azsKIAkJfQogCX0KKwlyZXR1cm4gZHI7Cit9CisKKy8qCisgKiBGaW5kIHRoZSBwcm9wZXIgcm91
dGVfdmFsdWVzIGFuZCBuaV9kZXZpY2Vfcm91dGVzIHRhYmxlcyBmb3IgdGhpcyBwYXJ0aWN1bGFy
CisgKiBkZXZpY2UuCisgKgorICogUmV0dXJuOiAtRU5PREFUQSBpZiBlaXRoZXIgd2FzIG5vdCBm
b3VuZDsgMCBpZiBib3RoIHdlcmUgZm91bmQuCisgKi8KK3N0YXRpYyBpbnQgbmlfZmluZF9kZXZp
Y2Vfcm91dGVzKGNvbnN0IGNoYXIgKmRldmljZV9mYW1pbHksCisJCQkJIGNvbnN0IGNoYXIgKmJv
YXJkX25hbWUsCisJCQkJIHN0cnVjdCBuaV9yb3V0ZV90YWJsZXMgKnRhYmxlcykKK3sKKwljb25z
dCBzdHJ1Y3QgbmlfZGV2aWNlX3JvdXRlcyAqZHI7CisJY29uc3QgdTggKnJ2OworCisJLyogRmly
c3QsIGZpbmQgdGhlIHJlZ2lzdGVyX3ZhbHVlcyB0YWJsZSBmb3IgdGhpcyBkZXZpY2UgZmFtaWx5
ICovCisJcnYgPSBuaV9maW5kX3JvdXRlX3ZhbHVlcyhkZXZpY2VfZmFtaWx5KTsKKworCS8qIFNl
Y29uZCwgZmluZCB0aGUgc2V0IG9mIHJvdXRlcyB2YWxpZCBmb3IgdGhpcyBkZXZpY2UuICovCisJ
ZHIgPSBuaV9maW5kX3ZhbGlkX3JvdXRlcyhib2FyZF9uYW1lKTsKIAogCXRhYmxlcy0+cm91dGVf
dmFsdWVzID0gcnY7CiAJdGFibGVzLT52YWxpZF9yb3V0ZXMgPSBkcjsKLS0gCjIuMjQuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
