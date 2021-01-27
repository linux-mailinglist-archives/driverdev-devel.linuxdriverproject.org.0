Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16113065E5
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 22:23:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B072287388;
	Wed, 27 Jan 2021 21:23:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2NdB9r-INgZG; Wed, 27 Jan 2021 21:23:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C12487213;
	Wed, 27 Jan 2021 21:23:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E2BE01BF4E4
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 21:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DE91887313
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 21:23:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l0UraHrqv63L for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 21:23:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from antares.kleine-koenig.org (antares.kleine-koenig.org
 [94.130.110.236])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ADA5287213
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 21:23:32 +0000 (UTC)
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 78AFCAE0B56; Wed, 27 Jan 2021 22:23:30 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Martyn Welch <martyn@welchs.me.uk>,
 Manohar Vanga <manohar.vanga@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] vme: make remove callback return void
Date: Wed, 27 Jan 2021 22:23:29 +0100
Message-Id: <20210127212329.98517-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhlIGRyaXZlciBjb3JlIGlnbm9yZXMgdGhlIHJldHVybiB2YWx1ZSBvZiBzdHJ1Y3QgYnVzX3R5
cGU6OnJlbW92ZSgpCmJlY2F1c2UgdGhlcmUgaXMgb25seSBsaXR0bGUgdGhhdCBjYW4gYmUgZG9u
ZS4gVG8gc2ltcGxpZnkgdGhlIHF1ZXN0IHRvCm1ha2UgdGhpcyBmdW5jdGlvbiByZXR1cm4gdm9p
ZCwgbGV0IHN0cnVjdCB2bWVfZHJpdmVyOjpyZW1vdmUgcmV0dXJuIHZvaWQsCnRvby4gVGhlcmUg
aXMgb25seSBhIHNpbmdsZSB2bWUgZHJpdmVyIGFuZCBpdCBhbHJlYWR5IHJldHVybnMgMAp1bmNv
bmRpdGlvbmFsbHkgaW4gLnJlbW92ZSgpLgoKQWxzbyBmaXggdGhlIGJ1cyByZW1vdmUgZnVuY3Rp
b24gdG8gYWx3YXlzIHJldHVybiAwLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcg
PHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvdm1lL2RldmljZXMv
dm1lX3VzZXIuYyB8IDQgKy0tLQogZHJpdmVycy92bWUvdm1lLmMgICAgICAgICAgICAgICAgICAg
ICAgfCA0ICsrLS0KIGluY2x1ZGUvbGludXgvdm1lLmggICAgICAgICAgICAgICAgICAgIHwgMiAr
LQogMyBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3ZtZS9kZXZpY2VzL3ZtZV91c2VyLmMgYi9kcml2ZXJz
L3N0YWdpbmcvdm1lL2RldmljZXMvdm1lX3VzZXIuYwppbmRleCBmZDBlYTRkYmNiOTEuLjM1ZDcy
NjBlMjI3MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3ZtZS9kZXZpY2VzL3ZtZV91c2Vy
LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3ZtZS9kZXZpY2VzL3ZtZV91c2VyLmMKQEAgLTY4OSw3
ICs2ODksNyBAQCBzdGF0aWMgaW50IHZtZV91c2VyX3Byb2JlKHN0cnVjdCB2bWVfZGV2ICp2ZGV2
KQogCXJldHVybiBlcnI7CiB9CiAKLXN0YXRpYyBpbnQgdm1lX3VzZXJfcmVtb3ZlKHN0cnVjdCB2
bWVfZGV2ICpkZXYpCitzdGF0aWMgdm9pZCB2bWVfdXNlcl9yZW1vdmUoc3RydWN0IHZtZV9kZXYg
KmRldikKIHsKIAlpbnQgaTsKIApAQCAtNzE3LDggKzcxNyw2IEBAIHN0YXRpYyBpbnQgdm1lX3Vz
ZXJfcmVtb3ZlKHN0cnVjdCB2bWVfZGV2ICpkZXYpCiAKIAkvKiBVbnJlZ2lzdGVyIHRoZSBtYWpv
ciBhbmQgbWlub3IgZGV2aWNlIG51bWJlcnMgKi8KIAl1bnJlZ2lzdGVyX2NocmRldl9yZWdpb24o
TUtERVYoVk1FX01BSk9SLCAwKSwgVk1FX0RFVlMpOwotCi0JcmV0dXJuIDA7CiB9CiAKIHN0YXRp
YyBzdHJ1Y3Qgdm1lX2RyaXZlciB2bWVfdXNlcl9kcml2ZXIgPSB7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL3ZtZS92bWUuYyBiL2RyaXZlcnMvdm1lL3ZtZS5jCmluZGV4IDU0ZDc5NjNjMTA3OC4uMWIx
NWFmZWEyOGVlIDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZtZS92bWUuYworKysgYi9kcml2ZXJzL3Zt
ZS92bWUuYwpAQCAtMTk5Nyw5ICsxOTk3LDkgQEAgc3RhdGljIGludCB2bWVfYnVzX3JlbW92ZShz
dHJ1Y3QgZGV2aWNlICpkZXYpCiAKIAlkcml2ZXIgPSBkZXYtPnBsYXRmb3JtX2RhdGE7CiAJaWYg
KGRyaXZlci0+cmVtb3ZlKQotCQlyZXR1cm4gZHJpdmVyLT5yZW1vdmUodmRldik7CisJCWRyaXZl
ci0+cmVtb3ZlKHZkZXYpOwogCi0JcmV0dXJuIC1FTk9ERVY7CisJcmV0dXJuIDA7CiB9CiAKIHN0
cnVjdCBidXNfdHlwZSB2bWVfYnVzX3R5cGUgPSB7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L3ZtZS5oIGIvaW5jbHVkZS9saW51eC92bWUuaAppbmRleCA3ZTgyYmY1MDBmMDEuLmIyMDRhOWI0
YmUxYiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC92bWUuaAorKysgYi9pbmNsdWRlL2xpbnV4
L3ZtZS5oCkBAIC0xMjIsNyArMTIyLDcgQEAgc3RydWN0IHZtZV9kcml2ZXIgewogCWNvbnN0IGNo
YXIgKm5hbWU7CiAJaW50ICgqbWF0Y2gpKHN0cnVjdCB2bWVfZGV2ICopOwogCWludCAoKnByb2Jl
KShzdHJ1Y3Qgdm1lX2RldiAqKTsKLQlpbnQgKCpyZW1vdmUpKHN0cnVjdCB2bWVfZGV2ICopOwor
CXZvaWQgKCpyZW1vdmUpKHN0cnVjdCB2bWVfZGV2ICopOwogCXN0cnVjdCBkZXZpY2VfZHJpdmVy
IGRyaXZlcjsKIAlzdHJ1Y3QgbGlzdF9oZWFkIGRldmljZXM7CiB9OwotLSAKMi4yOS4yCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
