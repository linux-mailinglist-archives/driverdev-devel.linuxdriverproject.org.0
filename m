Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF9E155A91
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Feb 2020 16:21:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 98CE687EA7;
	Fri,  7 Feb 2020 15:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y-Tba7j23rTX; Fri,  7 Feb 2020 15:21:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D823E87E97;
	Fri,  7 Feb 2020 15:21:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F1A681BF9BD
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 15:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E797686D29
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 15:21:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q+Xi1WuDQpAM for <devel@linuxdriverproject.org>;
 Fri,  7 Feb 2020 15:21:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from smtp83.iad3b.emailsrvr.com (smtp83.iad3b.emailsrvr.com
 [146.20.161.83])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9844A86C53
 for <devel@driverdev.osuosl.org>; Fri,  7 Feb 2020 15:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1581088456;
 bh=kNCWJf8jDqjTfJiJxpalEh/gMX2F6PFWunMJUUVz0/o=;
 h=From:To:Subject:Date:From;
 b=exmc9xpCovIUjvVTkaj2IeQrVB4t+89jqwlHj+Xzdi/a322wSRmtLs4rN4R3ybtuX
 7t0oTUAvmEMukRqaGfQJb+pNNlgQBjcmPmCvTL+IaHBj2sgVcLyR5XM69BoisqBcQ7
 +OCfBTdCpHuXYt/0+KDNvF/vA7lCyUU+Gxf7EDDQ=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp3.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 9A00B40182; 
 Fri,  7 Feb 2020 10:14:14 -0500 (EST)
X-Sender-Id: abbotti@mev.co.uk
Received: from ian-deb.inside.mev.co.uk (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:465 (trex/5.7.12); Fri, 07 Feb 2020 10:14:16 -0500
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 3/4] staging: comedi: ni_mio_common: Allow alternate board
 name for routes
Date: Fri,  7 Feb 2020 15:13:59 +0000
Message-Id: <20200207151400.272678-4-abbotti@mev.co.uk>
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

V2UgZG8gbm90IGhhdmUgb3IgZG8gbm90IHByb3ZpZGUgcm91dGluZyBpbmZvcm1hdGlvbiBmb3Ig
YWxsIHN1cHBvcnRlZApib2FyZHMuICBTb21lIG9mIHRoZSBib2FyZHMgZm9yIHdoaWNoIHdlIGRv
IG5vdCBwcm92aWRlIHJvdXRpbmcKaW5mb3JtYXRpb24gYWN0dWFsbHkgaGF2ZSByb3V0ZXMgdGhh
dCBhcmUgaWRlbnRpY2FsIHRvIGEgc2ltaWxhciBib2FyZApmb3Igd2hpY2ggd2UgYWxyZWFkeSBw
cm92aWRlIHJvdXRpbmcgaW5mb3JtYXRpb24uCgpUbyBhbGxvdyBib2FyZHMgdG8gc2hhcmUgaWRl
bnRpY2FsIHJvdXRpbmcgaW5mb3JtYXRpb24sIGFkZCBhbgpgYWx0X3JvdXRlX25hbWVgIG1lbWJl
ciB0byBgc3RydWN0IG5pX2JvYXJkX3N0cnVjdGAuICBUaGlzIHdpbGwgYmUKaW5pdGlhbGl6ZWQg
dG8gYE5VTExgIGZvciBhbGwgYm9hcmRzIGV4Y2VwdCB0aG9zZSB0aGF0IHdpbGwgdXNlIG1ha2Ug
dXNlCm9mIHRoZSBpZGVudGljYWwgcm91dGluZyBpbmZvcm1hdGlvbiB0aGF0IGhhcyBiZWVuIHBy
b3ZpZGVkIGZvciBhCnNpbWlsYXIgYm9hcmQsIGluIHdoaWNoIGNhc2UgaXQgd2lsbCBuYW1lIHRo
YXQgYm9hcmQuICBQYXNzIHRoZQpgYWx0X3JvdXRlX25hbWVgIG1lbWJlciB2YWx1ZSB0byBgbmlf
YXNzaWduX2RldmljZV9yb3V0ZXMoKWAgYXMgdGhlCmBhbHRfYm9hcmRfbmFtZWAgcGFyYW1ldGVy
LCB3aGljaCBpdCB3aWxsIHVzZSBpZiBubyByb3V0aW5nIGluZm9ybWF0aW9uCmNvdWxkIGJlIGZv
dW5kIGZvciB0aGUgYWN0dWFsIGJvYXJkIG5hbWUuCgpDYzogw4lyaWMgUGllbCA8cGllbEBkZWxt
aWMuY29tPgpDYzogU3BlbmNlciBFLiBPbHNvbiA8b2xzb25zZUB1bWljaC5lZHU+ClNpZ25lZC1v
ZmYtYnk6IElhbiBBYmJvdHQgPGFiYm90dGlAbWV2LmNvLnVrPgotLS0KIGRyaXZlcnMvc3RhZ2lu
Zy9jb21lZGkvZHJpdmVycy9uaV9taW9fY29tbW9uLmMgfCAzICsrLQogZHJpdmVycy9zdGFnaW5n
L2NvbWVkaS9kcml2ZXJzL25pX3N0Yy5oICAgICAgICB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvY29tZWRpL2RyaXZlcnMvbmlfbWlvX2NvbW1vbi5jIGIvZHJpdmVycy9zdGFnaW5nL2NvbWVk
aS9kcml2ZXJzL25pX21pb19jb21tb24uYwppbmRleCBhMTU3ODg2OGVlOTYuLmI3MmE0MGE3OTkz
MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2NvbWVkaS9kcml2ZXJzL25pX21pb19jb21t
b24uYworKysgYi9kcml2ZXJzL3N0YWdpbmcvY29tZWRpL2RyaXZlcnMvbmlfbWlvX2NvbW1vbi5j
CkBAIC01OTc0LDcgKzU5NzQsOCBAQCBzdGF0aWMgaW50IG5pX0VfaW5pdChzdHJ1Y3QgY29tZWRp
X2RldmljZSAqZGV2LAogCQkJCQkJICAgICAgOiAibmlfZXNlcmllcyI7CiAKIAkvKiBwcmVwYXJl
IHRoZSBkZXZpY2UgZm9yIGdsb2JhbGx5LW5hbWVkIHJvdXRlcy4gKi8KLQlpZiAobmlfYXNzaWdu
X2RldmljZV9yb3V0ZXMoZGV2X2ZhbWlseSwgYm9hcmQtPm5hbWUsIE5VTEwsCisJaWYgKG5pX2Fz
c2lnbl9kZXZpY2Vfcm91dGVzKGRldl9mYW1pbHksIGJvYXJkLT5uYW1lLAorCQkJCSAgICBib2Fy
ZC0+YWx0X3JvdXRlX25hbWUsCiAJCQkJICAgICZkZXZwcml2LT5yb3V0aW5nX3RhYmxlcykgPCAw
KSB7CiAJCWRldl93YXJuKGRldi0+Y2xhc3NfZGV2LCAiJXM6ICVzIGRldmljZSBoYXMgbm8gc2ln
bmFsIHJvdXRpbmcgdGFibGUuXG4iLAogCQkJIF9fZnVuY19fLCBib2FyZC0+bmFtZSk7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvY29tZWRpL2RyaXZlcnMvbmlfc3RjLmggYi9kcml2ZXJz
L3N0YWdpbmcvY29tZWRpL2RyaXZlcnMvbmlfc3RjLmgKaW5kZXggMzU0MjdmOGJmOGY3Li5mYmMw
Yjc1M2EwZjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9jb21lZGkvZHJpdmVycy9uaV9z
dGMuaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvY29tZWRpL2RyaXZlcnMvbmlfc3RjLmgKQEAgLTk0
MSw2ICs5NDEsNyBAQCBlbnVtIG5pX3JlZ190eXBlIHsKIAogc3RydWN0IG5pX2JvYXJkX3N0cnVj
dCB7CiAJY29uc3QgY2hhciAqbmFtZTsKKwljb25zdCBjaGFyICphbHRfcm91dGVfbmFtZTsKIAlp
bnQgZGV2aWNlX2lkOwogCWludCBpc2FwbnBfaWQ7CiAKLS0gCjIuMjQuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
