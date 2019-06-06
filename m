Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CD837843
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 17:39:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D7EC687601;
	Thu,  6 Jun 2019 15:39:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4eoqEC4V2UvI; Thu,  6 Jun 2019 15:39:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 427048740E;
	Thu,  6 Jun 2019 15:39:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DCBA61BF3ED
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 15:39:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D7FB88758D
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 15:39:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EnL3quaC7qzD for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 15:39:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from 6.mo2.mail-out.ovh.net (6.mo2.mail-out.ovh.net [87.98.165.38])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4CD9D8740E
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 15:39:44 +0000 (UTC)
Received: from player697.ha.ovh.net (unknown [10.109.146.163])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id DA1D019E39A
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 17:39:41 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player697.ha.ovh.net (Postfix) with ESMTPSA id 20984697A803;
 Thu,  6 Jun 2019 15:39:22 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH v2 3/3] media: dt-bindings: imx7-csi: add i.MX6UL/L support
Date: Thu,  6 Jun 2019 17:38:25 +0200
Message-Id: <20190606153825.8183-3-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
References: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3728136069398615236
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

RG9jdW1lbnQgImZzbCxpbXg2dWwtY3NpIiBlbnRyeS4KClNpZ25lZC1vZmYtYnk6IFPDqWJhc3Rp
ZW4gU3p5bWFuc2tpIDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KLS0tCgpDaGFu
Z2VzIGZvciB2MjoKIC0gTmV3IHBhdGNoIHRvIGRvY3VtZW50IG5ldyAiZnNsLGlteDZ1bC1jc2ki
IGVudHJ5LgoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9pbXg3LWNz
aS50eHQgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEv
aW14Ny1jc2kudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL2lt
eDctY3NpLnR4dAppbmRleCAzYzA3YmM2NzZiYzMuLjQ5ZTlhZjE5YjNlYSAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL2lteDctY3NpLnR4dAorKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvaW14Ny1jc2kudHh0CkBA
IC05LDcgKzksNyBAQCB0byBjb25uZWN0IGRpcmVjdGx5IHRvIGV4dGVybmFsIENNT1MgaW1hZ2Ug
c2Vuc29ycy4KIAogUmVxdWlyZWQgcHJvcGVydGllczoKIAotLSBjb21wYXRpYmxlICAgIDogImZz
bCxpbXg3LWNzaSI7CistIGNvbXBhdGlibGUgICAgOiAiZnNsLGlteDctY3NpIiBvciAiZnNsLGlt
eDZ1bC1jc2kiOwogLSByZWcgICAgICAgICAgIDogYmFzZSBhZGRyZXNzIGFuZCBsZW5ndGggb2Yg
dGhlIHJlZ2lzdGVyIHNldCBmb3IgdGhlIGRldmljZTsKIC0gaW50ZXJydXB0cyAgICA6IHNob3Vs
ZCBjb250YWluIENTSSBpbnRlcnJ1cHQ7CiAtIGNsb2NrcyAgICAgICAgOiBsaXN0IG9mIGNsb2Nr
IHNwZWNpZmllcnMsIHNlZQotLSAKMi4xOS4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
