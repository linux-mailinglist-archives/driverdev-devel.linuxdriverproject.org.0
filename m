Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 881AF3B33B
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 12:32:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 38D1620417;
	Mon, 10 Jun 2019 10:32:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UfPyv7d-endC; Mon, 10 Jun 2019 10:32:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 02840203E8;
	Mon, 10 Jun 2019 10:32:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4872D1BF3AA
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 10:32:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 44C76863D5
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 10:32:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T+wIz0ySD-8c for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 10:32:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8070884EAD
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 10:32:40 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id 22so7634533wmg.2
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 03:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=IkG1E0AYyaW7+6Dt1fH+3V0jkXsmdfRM9uUK4jdUh+w=;
 b=Yfo8EUqarFT7nPkF1aeKi1R8SH3rF0IbMaxPFbHD5BQef/cTOgwy1X/WI0zGiITxEX
 jPeF/HOSXo3Qf0jFyOC2mSzVaSnASG/UpSuS2zNVb55CS8hRjSgBFQ9cfOSzDSNxx6Uz
 FT+OBn8OrrCVB4V5V6YCIJhc9gwFGLARBwcGcYxgfn59c630P2IYvl9pFuCdqV4DjsA6
 Sx92LVIpPcRLrdmqe444Idcck7Dgj09/ZSurEmcgyIGeQs1LYorx0pA5P03Vv8gQH62n
 YIO1lG/oVeF0n4VkBxQQpD3JJa8tpu5TlY9a+Dj0ZxaST59vZwZRjsopxlD6YKsLcyMG
 eBXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=IkG1E0AYyaW7+6Dt1fH+3V0jkXsmdfRM9uUK4jdUh+w=;
 b=QeYTBkxmrosKjx+wj1P7mP5JH1I+oloiMLiKr2utSHOp5b0CL6i/9AoKXb2MVRREL/
 xMFWQUnLkAlbiQY4goKtZWP/WVa7uaqjcm7bb6lWuyPKBUq++cZqvb4mE3X1xBbJ18/Y
 nzHnPYyRnct8Z2HgCMcL2HUGYBDSCQpwvNnKLj/b4uXzlxqXzry1LC3D+1aaiiPggsNK
 +8N4ALsM8o7xHdgDlN8aUXV2yYQlyYI4p7Gs/EJEIJpRekbdZAl50DVDu8uJXDD6Yvhq
 GYR1xE20KNIixijyKwvx466mO5a69UKkr01CxNnTcDA1y6Q0nrl/lGBLZTsWg21PjpST
 sGJQ==
X-Gm-Message-State: APjAAAWP3V1Vmyq0Dtsbsy0T58lb8RebjylQIoSF/Kg9Qxa/7I8bD5bI
 dxPKkVGLvUgWfHC7dn+qoF8=
X-Google-Smtp-Source: APXvYqzibcwpB846QHozkg6IQp2B/oYTBKhsZYSYuuwjsqFbx1LuXZFZoi9TZb/x6Ii+Fr9hHWLjGA==
X-Received: by 2002:a1c:7a10:: with SMTP id v16mr13435253wmc.98.1560162759118; 
 Mon, 10 Jun 2019 03:32:39 -0700 (PDT)
Received: from arch-late ([87.196.73.9])
 by smtp.gmail.com with ESMTPSA id o15sm12661526wrw.42.2019.06.10.03.32.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 03:32:38 -0700 (PDT)
References: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
 <20190606153825.8183-2-sebastien.szymanski@armadeus.com>
 <92ca6e6e-2ebd-cec4-4f75-2674fd2c3d99@infradead.org>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: driverdev-devel@linuxdriverproject.org
Subject: Re: [PATCH v2 2/3] media: imx7-media-csi: add i.MX6UL support
In-reply-to: <92ca6e6e-2ebd-cec4-4f75-2674fd2c3d99@infradead.org>
Date: Mon, 10 Jun 2019 11:32:36 +0100
Message-ID: <m336khpw6z.fsf@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Mark Rutland <mark.rutland@arm.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 =?utf-8?Q?S=C3=A9bastien?= Szymanski <sebastien.szymanski@armadeus.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgUmFuZHksCk9uIEZyaSAwNyBKdW4gMjAxOSBhdCAwMDoxMCwgUmFuZHkgRHVubGFwIHdyb3Rl
Ogo+IE9uIDYvNi8xOSA4OjM4IEFNLCBTw6liYXN0aWVuIFN6eW1hbnNraSB3cm90ZToKPj4gaS5N
WDcgYW5kIGkuTVg2VUwvTCBoYXZlIHRoZSBzYW1lIENTSSBjb250cm9sbGVyLiBTbyBhZGQgaS5N
WDZVTC9MIHN1cHBvcnQKPj4gdG8gaW14Ny1tZWRpYS1jc2kgZHJpdmVyLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBTw6liYXN0aWVuIFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1
cy5jb20+Cj4+IC0tLQo+Pgo+PiBDaGFuZ2VzIGZvciB2MjoKPj4gIC0gcmViYXNlIG9uIHRvcCBv
ZiBsaW51eHR2L21hc3Rlcgo+PiAgLSBtZW50aW9uIGkuTVg2VUwvTCBpbiBoZWFkZXIgYW5kIEtj
b25maWcgaGVscCB0ZXh0Cj4+ICAtIHJlbmFtZSBjc2lfdHlwZSB0byBjc2lfc29jX2lkCj4+Cj4+
ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L0tjb25maWcgICAgICAgICAgfCAgNCArLQo+PiAg
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9pbXg3LW1lZGlhLWNzaS5jIHwgNjIgKysrKysrKysr
KysrKysrKy0tLS0tLQo+PiAgMiBmaWxlcyBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCAxNyBk
ZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgv
S2NvbmZpZyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvS2NvbmZpZwo+PiBpbmRleCBhZDNk
N2RmNmJiM2MuLjhiNmRjNDJjMzllMCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL2lteC9LY29uZmlnCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvS2NvbmZp
Zwo+PiBAQCAtMjIsMTEgKzIyLDExIEBAIGNvbmZpZyBWSURFT19JTVhfQ1NJCj4+ICAJICBBIHZp
ZGVvNGxpbnV4IGNhbWVyYSBzZW5zb3IgaW50ZXJmYWNlIGRyaXZlciBmb3IgaS5NWDUvNi4KPj4K
Pj4gIGNvbmZpZyBWSURFT19JTVg3X0NTSQo+PiAtCXRyaXN0YXRlICJpLk1YNyBDYW1lcmEgU2Vu
c29yIEludGVyZmFjZSBkcml2ZXIiCj4+ICsJdHJpc3RhdGUgImkuTVg2VUwvTCAvIGkuTVg3IENh
bWVyYSBTZW5zb3IgSW50ZXJmYWNlIGRyaXZlciIKPj4gIAlkZXBlbmRzIG9uIFZJREVPX0lNWF9N
RURJQSAmJiBWSURFT19ERVYgJiYgSTJDCj4+ICAJZGVmYXVsdCB5Cj4KPiBIaSwKPiBJIHJlYWxp
emUgdGhhdCB0aGlzICJkZWZhdWx0IHkiIGlzIG5vdCBwYXJ0IG9mIHRoaXMgcGF0Y2ggc2V0LCBi
dXQgd2UgaGF2ZQo+IHByZXR0eSBzdHJvbmcgZ3VpZGFuY2UgdGhhdCBhIGRyaXZlciBzaG91bGQg
bm90IGRlZmF1bHQgdG8gJ3knIHVubGVzcyBpdCBpcwo+IG5lZWRlZCBmb3IgYSBzeXN0ZW0gdG8g
Ym9vdC4gIElmIHRoaXMgZHJpdmVyIGlzIG9wdGlvbmFsLCB0aGVuIHBsZWFzZSBkcm9wCj4gdGhl
IDIgb2NjdXJyZW5jZXMgb2YgImRlZmF1bHQgeSIgaW4gdGhpcyBLY29uZmlnIGZpbGUuCgpZZWFo
LCBldmVuIHRob3VnaCBib3RoIGRlcGVuZHMgb24gaW14X21lZGlhLCBJIGFncmVlIHRoYXQgdGhl
eQpzaG91bGQgbm90IGRlZmF1bHQgdG8geS4gSSB3aWxsIHNlbmQgYSBwYXRjaCBmb3IgdGhpcy4K
VGhhbmtzLgoKLS0tCkNoZWVycywKICAgICAgICBSdWkKCgo+Cj4gdGhhbmtzLgo+PiAgCWhlbHAK
Pj4gIAkgIEVuYWJsZSBzdXBwb3J0IGZvciB2aWRlbzRsaW51eCBjYW1lcmEgc2Vuc29yIGludGVy
ZmFjZSBkcml2ZXIgZm9yCj4+IC0JICBpLk1YNy4KPj4gKwkgIGkuTVg2VUwvTCBvciBpLk1YNy4K
Pj4gIGVuZG1lbnUKPj4gIGVuZGlmCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
