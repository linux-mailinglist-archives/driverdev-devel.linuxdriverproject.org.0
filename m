Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F71103731
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 11:04:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E47688564;
	Wed, 20 Nov 2019 10:04:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qqanKUihLCL6; Wed, 20 Nov 2019 10:04:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C2B588488;
	Wed, 20 Nov 2019 10:04:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8ED9A1BF30F
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 10:04:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8BB618854C
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 10:04:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IB9pjLgN7o8K for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 10:04:27 +0000 (UTC)
X-Greylist: delayed 00:07:06 by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D7FD88488
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 10:04:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 01:57:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,221,1571727600"; d="scan'208";a="357384688"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga004.jf.intel.com with ESMTP; 20 Nov 2019 01:57:18 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 78F8AE3; Wed, 20 Nov 2019 11:57:17 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 linux-fbdev@vger.kernel.org, Nishad Kamdar <nishadkamdar@gmail.com>,
 devel@driverdev.osuosl.org
Subject: [PATCH v1 1/5] fbtft: Make sure string is NULL terminated
Date: Wed, 20 Nov 2019 11:57:12 +0200
Message-Id: <20191120095716.26628-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.24.0
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TmV3IEdDQyB3YXJucyBhYm91dCBpbmFwcHJvcHJpYXRlIHVzZSBvZiBzdHJuY3B5KCk6Cgpkcml2
ZXJzL3N0YWdpbmcvZmJ0ZnQvZmJ0ZnQtY29yZS5jOiBJbiBmdW5jdGlvbiDigJhmYnRmdF9mcmFt
ZWJ1ZmZlcl9hbGxvY+KAmToKZHJpdmVycy9zdGFnaW5nL2ZidGZ0L2ZidGZ0LWNvcmUuYzo2NjU6
Mjogd2FybmluZzog4oCYc3RybmNweeKAmSBzcGVjaWZpZWQgYm91bmQgMTYgZXF1YWxzIGRlc3Rp
bmF0aW9uIHNpemUgWy1Xc3RyaW5nb3AtdHJ1bmNhdGlvbl0KICA2NjUgfCAgc3RybmNweShpbmZv
LT5maXguaWQsIGRldi0+ZHJpdmVyLT5uYW1lLCAxNik7CiAgICAgIHwgIF5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CgpMYXRlciBvbiB0aGUgY29weSBpcyBiZWlu
ZyB1c2VkIHdpdGggdGhlIGFzc3VtcHRpb24gdG8gYmUgTlVMTCB0ZXJtaW5hdGVkLgpNYWtlIHN1
cmUgc3RyaW5nIGlzIE5VTEwgdGVybWluYXRlZCBieSBzd2l0Y2hpbmcgdG8gc25wcmludGYoKS4K
ClNpZ25lZC1vZmYtYnk6IEFuZHkgU2hldmNoZW5rbyA8YW5kcml5LnNoZXZjaGVua29AbGludXgu
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9mYnRmdC9mYnRmdC1jb3JlLmMgfCAyICst
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3N0YWdpbmcvZmJ0ZnQvZmJ0ZnQtY29yZS5jIGIvZHJpdmVycy9zdGFnaW5n
L2ZidGZ0L2ZidGZ0LWNvcmUuYwppbmRleCBhMGE2N2FhNTE3ZjAuLjYxZjAyODZmYjE1NyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2ZidGZ0L2ZidGZ0LWNvcmUuYworKysgYi9kcml2ZXJz
L3N0YWdpbmcvZmJ0ZnQvZmJ0ZnQtY29yZS5jCkBAIC02NjYsNyArNjY2LDcgQEAgc3RydWN0IGZi
X2luZm8gKmZidGZ0X2ZyYW1lYnVmZmVyX2FsbG9jKHN0cnVjdCBmYnRmdF9kaXNwbGF5ICpkaXNw
bGF5LAogCWZiZGVmaW8tPmRlZmVycmVkX2lvID0gICAgIGZidGZ0X2RlZmVycmVkX2lvOwogCWZi
X2RlZmVycmVkX2lvX2luaXQoaW5mbyk7CiAKLQlzdHJuY3B5KGluZm8tPmZpeC5pZCwgZGV2LT5k
cml2ZXItPm5hbWUsIDE2KTsKKwlzbnByaW50ZihpbmZvLT5maXguaWQsIHNpemVvZihpbmZvLT5m
aXguaWQpLCAiJXMiLCBkZXYtPmRyaXZlci0+bmFtZSk7CiAJaW5mby0+Zml4LnR5cGUgPSAgICAg
ICAgICAgRkJfVFlQRV9QQUNLRURfUElYRUxTOwogCWluZm8tPmZpeC52aXN1YWwgPSAgICAgICAg
IEZCX1ZJU1VBTF9UUlVFQ09MT1I7CiAJaW5mby0+Zml4LnhwYW5zdGVwID0JICAgMDsKLS0gCjIu
MjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
