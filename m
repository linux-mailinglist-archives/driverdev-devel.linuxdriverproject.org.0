Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A96917C8F5
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 18:41:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 37ACE85E14;
	Wed, 31 Jul 2019 16:41:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NC0vkuVL6GWE; Wed, 31 Jul 2019 16:41:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 375A385C88;
	Wed, 31 Jul 2019 16:41:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BFA01BF2F0
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 16:41:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 87CEC87D6C
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 16:41:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WzUA6LCfRZ6K for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 16:41:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from 10.mo3.mail-out.ovh.net (10.mo3.mail-out.ovh.net
 [87.98.165.232])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6078287D40
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 16:41:02 +0000 (UTC)
Received: from player756.ha.ovh.net (unknown [10.108.54.36])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 725562217D2
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:33:18 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player756.ha.ovh.net (Postfix) with ESMTPSA id B74A77ADA712;
 Wed, 31 Jul 2019 16:32:56 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Rui Miguel Silva <rmfrfs@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 1/3] ARM: dts: imx6ul: Add csi node
Date: Wed, 31 Jul 2019 18:32:57 +0200
Message-Id: <20190731163257.32448-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 14036875616662541351
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QWRkIGNzaSBub2RlIGZvciBpLk1YNlVMIFNvQy4KClJldmlld2VkLWJ5OiBGYWJpbyBFc3RldmFt
IDxmZXN0ZXZhbUBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFPDqWJhc3RpZW4gU3p5bWFuc2tp
IDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KLS0tCgpDaGFuZ2VzIGZvciB2MzoK
IC0gbm9uZQoKQ2hhbmdlcyBmb3IgdjI6CiAtIG9ubHkgIm1jbGsiIGNsb2NrIGlzIHJlcXVpcmVk
IG5vdy4KCiBhcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaSB8IDkgKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9k
dHMvaW14NnVsLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaQppbmRleCA4MWQ0
YjQ5MjUxMjcuLjU2Y2ZjZjBlNTA4NCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14
NnVsLmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLmR0c2kKQEAgLTk1Nyw2ICs5
NTcsMTUgQEAKIAkJCQl9OwogCQkJfTsKIAorCQkJY3NpOiBjc2lAMjFjNDAwMCB7CisJCQkJY29t
cGF0aWJsZSA9ICJmc2wsaW14NnVsLWNzaSIsICJmc2wsaW14Ny1jc2kiOworCQkJCXJlZyA9IDww
eDAyMWM0MDAwIDB4NDAwMD47CisJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDcgSVJRX1RZUEVf
TEVWRUxfSElHSD47CisJCQkJY2xvY2tzID0gPCZjbGtzIElNWDZVTF9DTEtfQ1NJPjsKKwkJCQlj
bG9jay1uYW1lcyA9ICJtY2xrIjsKKwkJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCQkJfTsKKwog
CQkJbGNkaWY6IGxjZGlmQDIxYzgwMDAgewogCQkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDZ1bC1s
Y2RpZiIsICJmc2wsaW14MjgtbGNkaWYiOwogCQkJCXJlZyA9IDwweDAyMWM4MDAwIDB4NDAwMD47
Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
