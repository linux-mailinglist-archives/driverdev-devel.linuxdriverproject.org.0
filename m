Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 954CB16A049
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 09:45:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5D018628A;
	Mon, 24 Feb 2020 08:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fJcqV7Ml9oKR; Mon, 24 Feb 2020 08:45:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF743861A0;
	Mon, 24 Feb 2020 08:45:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C3F881BF410
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 08:45:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BCBD320014
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 08:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Qhdwd5iCVYd for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 08:45:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by silver.osuosl.org (Postfix) with ESMTPS id ECB7320013
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 08:45:50 +0000 (UTC)
X-Originating-IP: 86.201.231.92
Received: from xps13 (lfbn-tou-1-149-92.w86-201.abo.wanadoo.fr [86.201.231.92])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id B8DBF60015;
 Mon, 24 Feb 2020 08:45:44 +0000 (UTC)
Date: Mon, 24 Feb 2020 09:45:44 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH] docs: dt: fix several broken doc references
Message-ID: <20200224094544.63f10b7c@xps13>
In-Reply-To: <0e530494349b37eb2eab4a8eccf56626e0b18e6d.1582448388.git.mchehab+huawei@kernel.org>
References: <0e530494349b37eb2eab4a8eccf56626e0b18e6d.1582448388.git.mchehab+huawei@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: alsa-devel@alsa-project.org, Olivier Moysan <olivier.moysan@st.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-mtd@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 Vignesh Raghavendra <vigneshr@ti.com>, devel@driverdev.osuosl.org,
 Jonathan Corbet <corbet@lwn.net>, Richard Weinberger <richard@nod.at>,
 Piotr Sroka <piotrs@cadence.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-spi@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgTWF1cm8sCgpNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5v
cmc+IHdyb3RlIG9uIFN1biwgMjMgRmViCjIwMjAgMDk6NTk6NTMgKzAxMDA6Cgo+IFRoZXJlIGFy
ZSBzZXZlcmFsIERUIGRvYyByZWZlcmVuY2VzIHRoYXQgcmVxdWlyZSBtYW51YWwgZml4ZXMuCj4g
SSBmb3VuZCAzIGNhc2VzIGZpeGVkIG9uIHRoaXMgcGF0Y2g6Cj4gCj4gCS0gZGlyZWN0b3J5IG5h
bWVkICJiaW5kaW5nLyIgaW5zdGVhZCBvZiAiYmluZGluZ3MvIjsKPiAJLSAudHh0IHRvIC55YW1s
IHJlbmFtZXM7Cj4gCS0gZmlsZSByZW5hbWVzIChzdGlsbCBvbiB0eHQgZm9ybWF0KTsKPiAKPiBT
aWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5l
bC5vcmc+Cj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9jYWRlbmNlLW5hbmQt
Y29udHJvbGxlci50eHQgICAgICAgfCAyICstCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25l
dC9icmNtLGJjbTc0NDUtc3dpdGNoLXY0LjAudHh0ICAgICAgfCAyICstCj4gIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9zdCxzdG0zMi1zYWkudHh0ICAgICAgfCAyICst
Cj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9zdCxzdG0zMi1zcGRp
ZnJ4LnR4dCAgfCAyICstCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkv
c3Qsc3RtMzItc3BpLnlhbWwgICAgICAgfCAyICstCj4gIE1BSU5UQUlORVJTICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA0ICsrLS0KPiAgLi4uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNzL3NpbGlhYnMsd2Z4LnR4dCAgICAgICAgICB8
IDIgKy0KPiAgNyBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0p
CgpGb3IgdGhlIENhZGVuY2UgZmlsZSwKClJldmlld2VkLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1
ZWwucmF5bmFsQGJvb3RsaW4uY29tPgoKVGhhbmtzLApNaXF1w6hsCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
