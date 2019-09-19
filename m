Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F52FB75AD
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 11:06:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 001F6860C0;
	Thu, 19 Sep 2019 09:06:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Ku_QREMV6bH; Thu, 19 Sep 2019 09:06:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 647698606C;
	Thu, 19 Sep 2019 09:06:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0213D1BF5F4
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 09:06:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F350D2041B
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 09:06:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ew9vxMiYVdua for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 09:06:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 0795520402
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 09:06:12 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id m19so585782otp.1
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 02:06:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wDQS67j3lG7TwomTYu6phRtQVo+Lq0+3xuq57RPV6D8=;
 b=bvGx00XzE1HezMIAJuKlTf/XXu2Mn/aoN3XQ5UgWUxyxf3DlqrW7tmiDi6gtoFK6fO
 Pmgky+A+Z0kF7KcpNNqXwWanVEyGugc/xDOGp7pnNmAutORYDPpxJcuLpLF6z+7K5S4/
 MIrNR7ny10w91XqFN1Hrou5+CuPQta06VsQkeMXFyGKUqDJIg2zJCAQjC6In98VcIndL
 obdIvaLR+QhtC1lfMXQAU3vjZbFiYN2I5cCep8dDykKCt66NIlhjr9fTmRdfPup6WMnQ
 O39HgEsHfo0Qn11lB7xQfkZkwj+HNabv2Ba8wx3bjsp9CwGXJDDAwORAvyEmWfFkNSo/
 kNuQ==
X-Gm-Message-State: APjAAAWOIMc8xdZ5ttrfL6inEFwYRZ28ndaUeF9NLq3rQncxolZsRQLA
 SfpCQgS/d7o1qTo7z07GDbsAJ5MpsuIUXMiJUb4=
X-Google-Smtp-Source: APXvYqzkCVuzCTBNypl4Lg61PDxEIAb1NQVdXkZR4+Hm131qcRPrUobeyAbVKE3pL8YI02rUdNiF6OshW6FylYOc9ac=
X-Received: by 2002:a9d:4d0d:: with SMTP id n13mr5907611otf.297.1568883971244; 
 Thu, 19 Sep 2019 02:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190731.094150.851749535529247096.davem@davemloft.net>
 <20190731185023.20954-1-natechancellor@gmail.com>
 <b3444283-7a77-ece8-7ac6-41756aa7dc60@infradead.org>
 <64f7ef68-c373-5ff5-ff6d-8a7ce0e30798@infradead.org>
In-Reply-To: <64f7ef68-c373-5ff5-ff6d-8a7ce0e30798@infradead.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Sep 2019 11:06:00 +0200
Message-ID: <CAMuHMdXya55UJttU1xvX5+-N658Xqfa0k8sSKTGbtdBHgPEFcg@mail.gmail.com>
Subject: Re: [PATCH] net: mdio-octeon: Fix build error and Kconfig warning
To: Randy Dunlap <rdunlap@infradead.org>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, kernel-build-reports@lists.linaro.org,
 Greg KH <gregkh@linuxfoundation.org>, Matthew Wilcox <willy@infradead.org>,
 Mark Brown <broonie@kernel.org>, Linux-Next <linux-next@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBBdWcgMSwgMjAxOSBhdCAxOjUyIEFNIFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZy
YWRlYWQub3JnPiB3cm90ZToKPiBIb3dldmVyLCB0aGVyZSBhcmUgbG90cyBvZiB0eXBlL2Nhc3Qg
d2FybmluZ3MgaW4gYm90aCBtZGlvLW9jdGVvbiBhbmQgbWRpby1jYXZpdW06Cj4KPiAuLi9kcml2
ZXJzL25ldC9waHkvbWRpby1vY3Rlb24uYzogSW4gZnVuY3Rpb24g4oCYb2N0ZW9uX21kaW9idXNf
cHJvYmXigJk6Cj4gLi4vZHJpdmVycy9uZXQvcGh5L21kaW8tb2N0ZW9uLmM6NDg6Mzogd2Fybmlu
ZzogY2FzdCBmcm9tIHBvaW50ZXIgdG8gaW50ZWdlciBvZiBkaWZmZXJlbnQgc2l6ZSBbLVdwb2lu
dGVyLXRvLWludC1jYXN0XQo+ICAgICh1NjQpZGV2bV9pb3JlbWFwKCZwZGV2LT5kZXYsIG1kaW9f
cGh5cywgcmVnc2l6ZSk7Cj4gICAgXgoKY2F2aXVtX21kaW9idXMucmVnaXN0ZXJfYmFzZSBzaG91
bGQgYmUgInZvaWQgX19pb21lbSAqIiBpbnN0ZWFkIG9mICJ1NjQiLAphbmQgdGhlIGNhc3Qgc2hv
dWxkIGJlIGRyb3BwZWQuCgo+IEluIGZpbGUgaW5jbHVkZWQgZnJvbSAuLi9kcml2ZXJzL25ldC9w
aHkvbWRpby1vY3Rlb24uYzoxNDowOgo+IC4uL2RyaXZlcnMvbmV0L3BoeS9tZGlvLWNhdml1bS5o
OjExMzo0ODogd2FybmluZzogY2FzdCB0byBwb2ludGVyIGZyb20gaW50ZWdlciBvZiBkaWZmZXJl
bnQgc2l6ZSBbLVdpbnQtdG8tcG9pbnRlci1jYXN0XQo+ICAjZGVmaW5lIG9jdF9tZGlvX3dyaXRl
cSh2YWwsIGFkZHIpIHdyaXRlcSh2YWwsICh2b2lkICopYWRkcikKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCgouLi4gd2hpY2ggYWxsb3dzIHRvIGRy
b3AgdGhpcyBjYXN0IGFzIHdlbGwuCgpDYXN0cyBhcmUgZXZpbCwgYW5kIHVzdWFsbHkgYSBzaWdu
IHRoYXQgeW91J3JlIGRvaW5nIHNvbWV0aGluZyB3cm9uZy4KCkdye29ldGplLGVldGluZ31zLAoK
ICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0g
VGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3Jn
CgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxs
IG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBq
dXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
