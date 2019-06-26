Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D005556BEC
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 16:29:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D8915860C4;
	Wed, 26 Jun 2019 14:29:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c4Ff1N5He7t7; Wed, 26 Jun 2019 14:29:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 766B685FA8;
	Wed, 26 Jun 2019 14:29:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 614901BF312
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 14:29:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5E5AD87C09
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 14:29:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FH5CREhObLhH for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 14:29:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mailout2n.rrzn.uni-hannover.de (mailout2n.rrzn.uni-hannover.de
 [130.75.2.113])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3503F87BB8
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 14:29:25 +0000 (UTC)
Received: from h2730561.stratoserver.net (h2730561.stratoserver.net
 [85.214.29.144])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailout2n.rrzn.uni-hannover.de (Postfix) with ESMTPSA id 544CB1F44E;
 Wed, 26 Jun 2019 16:29:23 +0200 (CEST)
From: =?UTF-8?q?Tobias=20Nie=C3=9Fen?= <tobias.niessen@stud.uni-hannover.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rts5208: Simplify boolean expression to improve
 code style
Date: Wed, 26 Jun 2019 16:28:57 +0200
Message-Id: <20190626142857.30155-3-tobias.niessen@stud.uni-hannover.de>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190626142857.30155-1-tobias.niessen@stud.uni-hannover.de>
References: <20190626142857.30155-1-tobias.niessen@stud.uni-hannover.de>
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
Cc: devel@driverdev.osuosl.org,
 =?UTF-8?q?Tobias=20Nie=C3=9Fen?= <tobias.niessen@stud.uni-hannover.de>,
 Sabrina Gaube <sabrina-gaube@web.de>, linux-kernel@vger.kernel.org,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhpcyBiaXR3aXNlbiAvIGJvb2xlYW4gZXhwcmVzc2lvbiBjYW4gYmUgbWFkZSBtb3JlIHJlYWRh
YmxlIHdoaWxlCnJlZHVjaW5nIHRoZSBsaW5lIGxlbmd0aHMgYXQgdGhlIHNhbWUgdGltZS4gVGhp
cyBjb21taXQgdXNlcyB0aGUKZmFjdCB0aGF0CgogICAgYSAmIChiIHwgYykgPT0gKGIgfCBjKQoK
ZXZhbHVhdGVzIHRvIHRydWUgaWYgYW5kIG9ubHkgaWYKCiAgICAoYSAmIGIpICYmIChhICYgYykK
CmlzIHRydWUuIFNpbmNlIGIgYW5kIGMgYXJlIGNvbnN0YW50cyB3aXRoIHJlbGF0aXZlbHkgbG9u
ZyBuYW1lcywKdXNpbmcgdGhlIHNlY29uZCBmb3JtIG1ha2VzIHRoZSBjb2RlIG11Y2ggbW9yZSBy
ZWFkYWJsZSBhbmQgc2hvcnRlci4KClNpZ25lZC1vZmYtYnk6IFRvYmlhcyBOaWXDn2VuIDx0b2Jp
YXMubmllc3NlbkBzdHVkLnVuaS1oYW5ub3Zlci5kZT4KU2lnbmVkLW9mZi1ieTogU2FicmluYSBH
YXViZSA8c2FicmluYS1nYXViZUB3ZWIuZGU+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3J0czUyMDgv
eGQuYyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3J0czUyMDgveGQuYyBiL2Ry
aXZlcnMvc3RhZ2luZy9ydHM1MjA4L3hkLmMKaW5kZXggYzVlZTA0ZWNkMWM5Li5mM2RjOTZhNGM1
OWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9ydHM1MjA4L3hkLmMKKysrIGIvZHJpdmVy
cy9zdGFnaW5nL3J0czUyMDgveGQuYwpAQCAtMTE1NSwxMCArMTE1NSwxMCBAQCBzdGF0aWMgaW50
IHhkX2NvcHlfcGFnZShzdHJ1Y3QgcnRzeF9jaGlwICpjaGlwLCB1MzIgb2xkX2JsaywgdTMyIG5l
d19ibGssCiAJCQkJCXJldHVybiBTVEFUVVNfRkFJTDsKIAkJCQl9CiAKLQkJCQlpZiAoKChyZWcg
JiAoWERfRUNDMV9FUlJPUiB8IFhEX0VDQzFfVU5DT1JSRUNUQUJMRSkpID09Ci0JCQkJCQkoWERf
RUNDMV9FUlJPUiB8IFhEX0VDQzFfVU5DT1JSRUNUQUJMRSkpIHx8Ci0JCQkJCSgocmVnICYgKFhE
X0VDQzJfRVJST1IgfCBYRF9FQ0MyX1VOQ09SUkVDVEFCTEUpKSA9PQotCQkJCQkJKFhEX0VDQzJf
RVJST1IgfCBYRF9FQ0MyX1VOQ09SUkVDVEFCTEUpKSkgeworCQkJCWlmICgoKHJlZyAmIFhEX0VD
QzFfRVJST1IpICYmCisJCQkJICAgICAocmVnICYgWERfRUNDMV9VTkNPUlJFQ1RBQkxFKSkgfHwK
KwkJCQkgICAgKChyZWcgJiBYRF9FQ0MyX0VSUk9SKSAmJgorCQkJCSAgICAgKHJlZyAmIFhEX0VD
QzJfVU5DT1JSRUNUQUJMRSkpKSB7CiAJCQkJCXJ0c3hfd3JpdGVfcmVnaXN0ZXIoY2hpcCwKIAkJ
CQkJCQkgICAgWERfUEFHRV9TVEFUVVMsCiAJCQkJCQkJICAgIDB4RkYsCi0tIAoyLjE3LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
