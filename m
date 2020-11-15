Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F132B36F7
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Nov 2020 18:10:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2CB387271;
	Sun, 15 Nov 2020 17:10:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NFMsUecEILyS; Sun, 15 Nov 2020 17:10:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3BFA87236;
	Sun, 15 Nov 2020 17:10:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA56D1BF3D2
 for <devel@linuxdriverproject.org>; Sun, 15 Nov 2020 17:10:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B40CA863B7
 for <devel@linuxdriverproject.org>; Sun, 15 Nov 2020 17:10:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id euP1d3eYJt9e for <devel@linuxdriverproject.org>;
 Sun, 15 Nov 2020 17:10:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 48BF3860DB
 for <devel@driverdev.osuosl.org>; Sun, 15 Nov 2020 17:10:02 +0000 (UTC)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 12A4124198;
 Sun, 15 Nov 2020 17:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605460202;
 bh=nLQvhMPRPmn8OBYUS7haupcAM25cdbBYOxtHEx0ld1E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=U84DhcaoqGc5ScNqf/gUzmoe3lK2x7woUgZ2YR83LVYwL4il15/VjE1A83CrMWzD4
 EqboYDLGRo+lHGcZ3VILVGxtMrtg4zqXdQ27FuDOoXg9eoSw7rFg7+xX2HLG+NpCGp
 Nf5csY7BoO+zqJ+LnWl6v2gXW/c48MlQgjuFwbAk=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, alsa-devel@alsa-project.org
Subject: [PATCH 1/3] clk: fix redefinition of clk_prepare on MIPS with
 HAVE_LEGACY_CLK
Date: Sun, 15 Nov 2020 18:09:48 +0100
Message-Id: <20201115170950.304460-2-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201115170950.304460-1-krzk@kernel.org>
References: <20201115170950.304460-1-krzk@kernel.org>
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Q09NTU9OX0NMSyBldmVuIHRob3VnaCBpcyBhIHVzZXItc2VsZWN0YWJsZSBzeW1ib2wsIGlzIHN0
aWxsIHNlbGVjdGVkIGJ5Cm11bHRpcGxlIG90aGVyIGNvbmZpZyBvcHRpb25zLiAgQ09NTU9OX0NM
SyBzaG91bGQgbm90IGJlIHVzZWQgd2hlbgpsZWdhY3kgY2xvY2tzIGFyZSBwcm92aWRlZCBieSBh
cmNoaXRlY3R1cmUsIHNvIGl0IGNvcnJlY3RseSBkZXBlbmRzIG9uCiFIQVZFX0xFR0FDWV9DTEsu
CgpIb3dldmVyIGl0IGlzIHBvc3NpYmxlIHRvIGNyZWF0ZSBhIGNvbmZpZyB3aGljaCBzZWxlY3Rz
IGJvdGggQ09NTU9OX0NMSwooYnkgU05EX1NVTjhJX0NPREVDKSBhbmQgSEFWRV9MRUdBQ1lfQ0xL
IChieSBTT0NfUlQzMDVYKSB3aGljaCBsZWFkcyB0bwpjb21waWxlIGVycm9ycyAoTUlQUyBhcmNo
aXRlY3R1cmUpOgoKICAgIGRyaXZlcnMvY2xrL2Nsay5jOjg1NTo2OiBlcnJvcjogcmVkZWZpbml0
aW9uIG9mIOKAmGNsa191bnByZXBhcmXigJkKICAgIEluIGZpbGUgaW5jbHVkZWQgZnJvbSBkcml2
ZXJzL2Nsay9jbGsuYzo5OgogICAgaW5jbHVkZS9saW51eC9jbGsuaDoyNjM6MjA6IG5vdGU6IHBy
ZXZpb3VzIGRlZmluaXRpb24gb2Yg4oCYY2xrX3VucHJlcGFyZeKAmSB3YXMgaGVyZQoKVGhlIGRl
ZmluaXRpb25zIGNsa19idWxrX3ByZXBhcmUoKSAoYW5kIHVucHJlcGFyZSkgYWxyZWFkeSBoYXZl
IHByb3BlcgpzdXJyb3VuZGluZyAjaWZkZWYgc28gYWRkIHRoZW0gYWxzbyBmb3IgY2xrX3ByZXBh
cmUoKS9jbGtfdW5wcmVwYXJlKCkuCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tp
IDxrcnprQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9jbGsvY2xrLmMgfCA0ICsrKysKIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9jbGsu
YyBiL2RyaXZlcnMvY2xrL2Nsay5jCmluZGV4IGY4M2RhYzU0ZWQ4NS4uZjRmNjhjN2MyZmI1IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2Nsay9jbGsuYworKysgYi9kcml2ZXJzL2Nsay9jbGsuYwpAQCAt
ODQxLDYgKzg0MSw3IEBAIHN0YXRpYyB2b2lkIGNsa19jb3JlX3VucHJlcGFyZV9sb2NrKHN0cnVj
dCBjbGtfY29yZSAqY29yZSkKIAljbGtfcHJlcGFyZV91bmxvY2soKTsKIH0KIAorI2lmZGVmIENP
TkZJR19IQVZFX0NMS19QUkVQQVJFCiAvKioKICAqIGNsa191bnByZXBhcmUgLSB1bmRvIHByZXBh
cmF0aW9uIG9mIGEgY2xvY2sgc291cmNlCiAgKiBAY2xrOiB0aGUgY2xrIGJlaW5nIHVucHJlcGFy
ZWQKQEAgLTg2MCw2ICs4NjEsNyBAQCB2b2lkIGNsa191bnByZXBhcmUoc3RydWN0IGNsayAqY2xr
KQogCWNsa19jb3JlX3VucHJlcGFyZV9sb2NrKGNsay0+Y29yZSk7CiB9CiBFWFBPUlRfU1lNQk9M
X0dQTChjbGtfdW5wcmVwYXJlKTsKKyNlbmRpZgogCiBzdGF0aWMgaW50IGNsa19jb3JlX3ByZXBh
cmUoc3RydWN0IGNsa19jb3JlICpjb3JlKQogewpAQCAtOTIxLDYgKzkyMyw3IEBAIHN0YXRpYyBp
bnQgY2xrX2NvcmVfcHJlcGFyZV9sb2NrKHN0cnVjdCBjbGtfY29yZSAqY29yZSkKIAlyZXR1cm4g
cmV0OwogfQogCisjaWZkZWYgQ09ORklHX0hBVkVfQ0xLX1BSRVBBUkUKIC8qKgogICogY2xrX3By
ZXBhcmUgLSBwcmVwYXJlIGEgY2xvY2sgc291cmNlCiAgKiBAY2xrOiB0aGUgY2xrIGJlaW5nIHBy
ZXBhcmVkCkBAIC05NDEsNiArOTQ0LDcgQEAgaW50IGNsa19wcmVwYXJlKHN0cnVjdCBjbGsgKmNs
aykKIAlyZXR1cm4gY2xrX2NvcmVfcHJlcGFyZV9sb2NrKGNsay0+Y29yZSk7CiB9CiBFWFBPUlRf
U1lNQk9MX0dQTChjbGtfcHJlcGFyZSk7CisjZW5kaWYgLyogQ09ORklHX0hBVkVfQ0xLX1BSRVBB
UkUgKi8KIAogc3RhdGljIHZvaWQgY2xrX2NvcmVfZGlzYWJsZShzdHJ1Y3QgY2xrX2NvcmUgKmNv
cmUpCiB7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
