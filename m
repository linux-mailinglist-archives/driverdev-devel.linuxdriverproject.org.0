Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AED2975FF
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 19:46:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED8028743E;
	Fri, 23 Oct 2020 17:46:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FOz4yS9BXCo1; Fri, 23 Oct 2020 17:46:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9406872CC;
	Fri, 23 Oct 2020 17:46:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C44B21BF3CC
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 17:46:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C0829876BB
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 17:46:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WGKdzoTXMxTL for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 17:46:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AD6CD87606
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 17:46:26 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 1C0101BF20F;
 Fri, 23 Oct 2020 17:46:23 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-sunxi@googlegroups.com
Subject: [PATCH 06/14] media: sun6i-csi: Support feeding from the MIPI CSI-2
 controller
Date: Fri, 23 Oct 2020 19:45:38 +0200
Message-Id: <20201023174546.504028-7-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
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
Cc: =?UTF-8?q?K=C3=A9vin=20L=27h=C3=B4pital?= <kevin.lhopital@bootlin.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhlIEEzMSBDU0kgY29udHJvbGxlciBzdXBwb3J0cyBNSVBJIENTSS0yLCB0aHJvdWdoIGEgZGVk
aWNhdGVkIGNvbnRyb2xsZXIuClRoZSBNSVBJIENTSS0yIGNvbnRyb2xsZXIgKHdoaWNoIGRpZmZl
cnMgYmV0d2VlbiBBMzEgYW5kIEE4M1QpIGlzIHN1cHBvcnRlZAphcyBhIHNlcGFyYXRlIGRyaXZl
ciBhbmQgY29ubmVjdGVkIHRocm91Z2ggdGhlIGZ3bm9kZSBncmFwaC4KClRoZSB0d28gY29udHJv
bGxlcnMgYXJlIGxpa2VseSBjb25uZWN0ZWQgdGhyb3VnaCBzb21lIGtpbmQgb2YgRklGTywKc28g
dGhlIENTSSBjb250cm9sbGVyIGRvZXNuJ3QgaGF2ZSBtdWNoIHRvIGRvIGl0c2VsZiBleGNlcHQg
Zm9yIHNlbGVjdGluZwp0aGUgTUlQSSBDU0ktMiBpbnB1dC4KCkNvLWRldmVsb3BlZC1ieTogS8Op
dmluIEwnaMO0cGl0YWwgPGtldmluLmxob3BpdGFsQGJvb3RsaW4uY29tPgpTaWduZWQtb2ZmLWJ5
OiBLw6l2aW4gTCdow7RwaXRhbCA8a2V2aW4ubGhvcGl0YWxAYm9vdGxpbi5jb20+ClNpZ25lZC1v
ZmYtYnk6IFBhdWwgS29jaWFsa293c2tpIDxwYXVsLmtvY2lhbGtvd3NraUBib290bGluLmNvbT4K
LS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjZpLWNzaS9zdW42aV9jc2kuYyB8
IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1bjZpX2NzaS5jIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW42aS1jc2kvc3VuNmlfY3NpLmMKaW5kZXggYTg3NmEw
NWVhM2M3Li5lNzcwMTUzY2YzYWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
c3VueGkvc3VuNmktY3NpL3N1bjZpX2NzaS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
c3VueGkvc3VuNmktY3NpL3N1bjZpX2NzaS5jCkBAIC00NTksNiArNDU5LDkgQEAgc3RhdGljIHZv
aWQgc3VuNmlfY3NpX3NldHVwX2J1cyhzdHJ1Y3Qgc3VuNmlfY3NpX2RldiAqc2RldikKIAkJaWYg
KGZsYWdzICYgVjRMMl9NQlVTX1BDTEtfU0FNUExFX0ZBTExJTkcpCiAJCQljZmcgfD0gQ1NJX0lG
X0NGR19DTEtfUE9MX0ZBTExJTkdfRURHRTsKIAkJYnJlYWs7CisJY2FzZSBWNEwyX01CVVNfQ1NJ
Ml9EUEhZOgorCQljZmcgfD0gQ1NJX0lGX0NGR19NSVBJX0lGX01JUEk7CisJCWJyZWFrOwogCWRl
ZmF1bHQ6CiAJCWRldl93YXJuKHNkZXYtPmRldiwgIlVuc3VwcG9ydGVkIGJ1cyB0eXBlOiAlZFxu
IiwKIAkJCSBlbmRwb2ludC0+YnVzX3R5cGUpOwpAQCAtNzEzLDYgKzcxNiw3IEBAIHN0YXRpYyBp
bnQgc3VuNmlfY3NpX2Z3bm9kZV9wYXJzZShzdHJ1Y3QgZGV2aWNlICpkZXYsCiAJfQogCiAJc3dp
dGNoICh2ZXAtPmJ1c190eXBlKSB7CisJY2FzZSBWNEwyX01CVVNfQ1NJMl9EUEhZOgogCWNhc2Ug
VjRMMl9NQlVTX1BBUkFMTEVMOgogCWNhc2UgVjRMMl9NQlVTX0JUNjU2OgogCQljc2ktPnY0bDJf
ZXAgPSAqdmVwOwotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
