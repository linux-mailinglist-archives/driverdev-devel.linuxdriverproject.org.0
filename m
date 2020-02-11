Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6E5158B87
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 09:54:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 382968798F;
	Tue, 11 Feb 2020 08:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Non-encoded 8-bit data (char C3 hex): To:
	"J\303\251r\303\264me Pouiller[...]
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3n488IYKrllq; Tue, 11 Feb 2020 08:54:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5531878A0;
	Tue, 11 Feb 2020 08:54:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C54A1BF3C6
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 08:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7942A20450
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 08:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Non-encoded 8-bit data (char C3 hex):
 To:\t"J\303\251r\303\264me Pouiller[...]
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dg9mzsLGVtCL for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 08:54:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by silver.osuosl.org (Postfix) with ESMTPS id D316B20447
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 08:54:28 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 48GxGP3wMVz6x;
 Tue, 11 Feb 2020 09:46:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1581410814; bh=6Wjtjeu42GaguDxWNgXMfeMdZchdlOi+TKUVzKOn1DI=;
 h=Date:From:Subject:To:Cc:From;
 b=kjAB8BTw/Ay/B/ReqmSk7uy/P4ZRoLApo5WbOgYnPpwXwbp4v20t0io+VkTqJnqXu
 Clts9/iktYzSELTzxR7hybe9vTwQ/wW9x7XQWOb/zeRpffhoJfHipJWHGhI/ANFGg0
 RgDuGSwiBpFpNYpfGWu0xPXq3KbEMAgkioVNaW1it1VxT04GrDZjiOxEI5hEeekXwO
 SnVlkSpYLI99N82w9DVEY7bmduK+cYAG3LgB1OS2t2z65cSuN5tZsbKOp0tN1R7WKk
 VrSHIqAbMKmqQvkajR+mLLcpuZvFLxYxwF401voo/+GtTD0BX8OFPJBfmvIinAd8kk
 ksa8qyRGjIGbQ==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.1 at mail
Date: Tue, 11 Feb 2020 09:46:53 +0100
Message-Id: <cover.1581410026.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH staging 0/7] WF200 driver fixes
MIME-Version: 1.0
To: "Jérôme Pouiller" <jerome.pouiller@silabs.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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

QSBzZXQgb2YgZml4ZXMgZm9yIFdGMjAwIFdpRmkgbW9kdWxlIGRyaXZlci4gVGhyZWUgYXJlIGJ1
ZyBmaXhlcywKYWxsIHRoZSByZXN0OiBjbGVhbnVwcyBhbmQgb3B0aW1pemF0aW9ucy4KCk1pY2hh
xYIgTWlyb3PFgmF3ICg3KToKICBzdGFnaW5nOiB3Zng6IGFkZCBwcm9wZXIgImNvbXBhdGlibGUi
IHN0cmluZwogIHN0YWdpbmc6IHdmeDogZm9sbG93IGNvbXBhdGlibGUgPSB2ZW5kb3IsY2hpcCBm
b3JtYXQKICBzdGFnaW5nOiB3Zng6IGZpeCBpbml0L3JlbW92ZSB2cyBJUlEgcmFjZQogIHN0YWdp
bmc6IHdmeDogYW5ub3RhdGUgbmVzdGVkIGdjX2xpc3QgdnMgdHggcXVldWUgbG9ja2luZwogIHN0
YWdpbmc6IHdmeDogdHJ5IDE2LWJpdCB3b3JkIG1vZGUgZmlyc3QKICBzdGFnaW5nOiB3Zng6IHVz
ZSBzbGVlcGluZyBncGlvIGFjY2Vzc29ycwogIHN0YWdpbmc6IHdmeDogdXNlIG1vcmUgcG93ZXIt
ZWZmaWNpZW50IHNsZWVwIGZvciByZXNldAoKIC4uLi9iaW5kaW5ncy9uZXQvd2lyZWxlc3Mvc2ls
aWFicyx3ZngudHh0ICAgICB8IDExICsrLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2JoLmMgICAg
ICAgICAgICAgICAgICAgICAgfCAgOCArKy0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zZGlv
LmMgICAgICAgICAgICAgICAgfCAxNyArKysrLS0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9idXNf
c3BpLmMgICAgICAgICAgICAgICAgIHwgNDEgKysrKysrKysrKysrLS0tLS0tLQogZHJpdmVycy9z
dGFnaW5nL3dmeC9od2lvLmMgICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvc3Rh
Z2luZy93ZngvbWFpbi5jICAgICAgICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL3N0YWdp
bmcvd2Z4L3F1ZXVlLmMgICAgICAgICAgICAgICAgICAgfCAxNiArKysrLS0tLQogNyBmaWxlcyBj
aGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspLCA0MiBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
