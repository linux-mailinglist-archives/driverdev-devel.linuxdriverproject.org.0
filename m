Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF147378FF
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 17:57:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1C7EB204EA;
	Thu,  6 Jun 2019 15:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MPtL5iRl4utH; Thu,  6 Jun 2019 15:57:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0841F204DF;
	Thu,  6 Jun 2019 15:57:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E6B81BF3ED
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 15:57:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2B51C845D5
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 15:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pQHYjN-Q7qJG for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 15:57:17 +0000 (UTC)
X-Greylist: delayed 00:10:00 by SQLgrey-1.7.6
Received: from 18.mo3.mail-out.ovh.net (18.mo3.mail-out.ovh.net
 [87.98.172.162])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EE9268458E
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 15:57:16 +0000 (UTC)
Received: from player697.ha.ovh.net (unknown [10.108.35.59])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 3CDB12185AA
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 17:38:56 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player697.ha.ovh.net (Postfix) with ESMTPSA id 0AFA9697A5DB;
 Thu,  6 Jun 2019 15:38:36 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH v2 1/3] ARM: dts: imx6ul: Add csi node
Date: Thu,  6 Jun 2019 17:38:23 +0200
Message-Id: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3715188221214217412
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrudeggedgledvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
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
Cc: Mark Rutland <mark.rutland@arm.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QWRkIGNzaSBub2RlIGZvciBpLk1YNlVMIFNvQy4KClJldmlld2VkLWJ5OiBGYWJpbyBFc3RldmFt
IDxmZXN0ZXZhbUBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFPDqWJhc3RpZW4gU3p5bWFuc2tp
IDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KLS0tCgpDaGFuZ2VzIGZvciB2MjoK
IC0gb25seSAibWNsayIgY2xvY2sgaXMgcmVxdWlyZWQgbm93LgoKIGFyY2gvYXJtL2Jvb3QvZHRz
L2lteDZ1bC5kdHNpIHwgOSArKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaSBiL2FyY2gvYXJt
L2Jvb3QvZHRzL2lteDZ1bC5kdHNpCmluZGV4IGJiZjAxMGM3MzMzNi4uZjEwMDEyZGU1ZWI2IDEw
MDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaQorKysgYi9hcmNoL2FybS9i
b290L2R0cy9pbXg2dWwuZHRzaQpAQCAtOTUxLDYgKzk1MSwxNSBAQAogCQkJCX07CiAJCQl9Owog
CisJCQljc2k6IGNzaUAyMWM0MDAwIHsKKwkJCQljb21wYXRpYmxlID0gImZzbCxpbXg2dWwtY3Np
IiwgImZzbCxpbXg3LWNzaSI7CisJCQkJcmVnID0gPDB4MDIxYzQwMDAgMHg0MDAwPjsKKwkJCQlp
bnRlcnJ1cHRzID0gPEdJQ19TUEkgNyBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCQljbG9ja3Mg
PSA8JmNsa3MgSU1YNlVMX0NMS19DU0k+OworCQkJCWNsb2NrLW5hbWVzID0gIm1jbGsiOworCQkJ
CXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCQl9OworCiAJCQlsY2RpZjogbGNkaWZAMjFjODAwMCB7
CiAJCQkJY29tcGF0aWJsZSA9ICJmc2wsaW14NnVsLWxjZGlmIiwgImZzbCxpbXgyOC1sY2RpZiI7
CiAJCQkJcmVnID0gPDB4MDIxYzgwMDAgMHg0MDAwPjsKLS0gCjIuMTkuMgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
