Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6180F7C939
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 18:51:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 98393221D5;
	Wed, 31 Jul 2019 16:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mOFg8jM4rHuY; Wed, 31 Jul 2019 16:51:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5791C221A9;
	Wed, 31 Jul 2019 16:51:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 56A5E1BF2F0
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 16:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 51D6585531
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 16:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VbjZXWbcZ04j for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 16:51:50 +0000 (UTC)
X-Greylist: delayed 00:09:58 by SQLgrey-1.7.6
Received: from 6.mo68.mail-out.ovh.net (6.mo68.mail-out.ovh.net
 [46.105.63.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D314A84E55
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 16:51:49 +0000 (UTC)
Received: from player697.ha.ovh.net (unknown [10.108.35.131])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 68E2313BCF8
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:34:15 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player697.ha.ovh.net (Postfix) with ESMTPSA id 580F38831A9A;
 Wed, 31 Jul 2019 16:33:56 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Rui Miguel Silva <rmfrfs@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 3/3] media: dt-bindings: imx7-csi: add i.MX6UL/L support
Date: Wed, 31 Jul 2019 18:33:58 +0200
Message-Id: <20190731163358.32622-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 14053201162921464871
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrleehgddutdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RG9jdW1lbnQgImZzbCxpbXg2dWwtY3NpIiBlbnRyeS4KClJldmlld2VkLWJ5OiBSb2IgSGVycmlu
ZyA8cm9iaEBrZXJuZWwub3JnPgpTaWduZWQtb2ZmLWJ5OiBTw6liYXN0aWVuIFN6eW1hbnNraSA8
c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+Ci0tLQoKQ2hhbmdlcyBmb3IgdjM6CiAt
IG5vbmUKCkNoYW5nZXMgZm9yIHYyOgogLSBOZXcgcGF0Y2ggdG8gZG9jdW1lbnQgbmV3ICJmc2ws
aW14NnVsLWNzaSIgZW50cnkuCgogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21l
ZGlhL2lteDctY3NpLnR4dCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9tZWRpYS9pbXg3LWNzaS50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbWVkaWEvaW14Ny1jc2kudHh0CmluZGV4IDQ0M2FlZjA3MzU2ZS4uZDgwY2VlZmEwYzAwIDEw
MDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvaW14Ny1j
c2kudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9pbXg3
LWNzaS50eHQKQEAgLTksNyArOSw3IEBAIHRvIGNvbm5lY3QgZGlyZWN0bHkgdG8gZXh0ZXJuYWwg
Q01PUyBpbWFnZSBzZW5zb3JzLgogCiBSZXF1aXJlZCBwcm9wZXJ0aWVzOgogCi0tIGNvbXBhdGli
bGUgICAgOiAiZnNsLGlteDctY3NpIjsKKy0gY29tcGF0aWJsZSAgICA6ICJmc2wsaW14Ny1jc2ki
IG9yICJmc2wsaW14NnVsLWNzaSI7CiAtIHJlZyAgICAgICAgICAgOiBiYXNlIGFkZHJlc3MgYW5k
IGxlbmd0aCBvZiB0aGUgcmVnaXN0ZXIgc2V0IGZvciB0aGUgZGV2aWNlOwogLSBpbnRlcnJ1cHRz
ICAgIDogc2hvdWxkIGNvbnRhaW4gQ1NJIGludGVycnVwdDsKIC0gY2xvY2tzICAgICAgICA6IGxp
c3Qgb2YgY2xvY2sgc3BlY2lmaWVycywgc2VlCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
