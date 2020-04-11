Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 627251A5291
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Apr 2020 17:03:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 72F7E2271C;
	Sat, 11 Apr 2020 15:03:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3D2ISHref9wZ; Sat, 11 Apr 2020 15:03:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 09D011FC7D;
	Sat, 11 Apr 2020 15:03:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE8CD1BF410
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 15:03:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DBC9E8306B
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 15:03:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xq2GG1-QtZ7E for <devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 15:03:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2F130869CA
 for <devel@driverdev.osuosl.org>; Sat, 11 Apr 2020 15:03:30 +0000 (UTC)
Received: from ip5f5bd698.dynamic.kabel-deutschland.de ([95.91.214.152]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1jNHfI-0005ch-C2; Sat, 11 Apr 2020 15:03:24 +0000
Date: Sat, 11 Apr 2020 17:03:23 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] binderfs: Fix binderfs.c selftest compilation warning
Message-ID: <20200411150323.7kthapiuj4wstvtv@wittgenstein>
References: <20200411145151.5576-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200411145151.5576-1-tangbin@cmss.chinamobile.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, arve@android.com, joel@joelfernandes.org,
 maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCBBcHIgMTEsIDIwMjAgYXQgMTA6NTE6NTFQTSArMDgwMCwgVGFuZyBCaW4gd3JvdGU6
Cj4gRml4IG1pc3NpbmcgYnJhY2VzIGNvbXBpbGF0aW9uIHdhcm5pbmcgaW4gdGhlIEFSTQo+IGNv
bXBpbGVyIGVudmlyb25tZW50Ogo+ICAgICBkcml2ZXJzL2FuZHJvaWQvYmluZGVyZnMuYzogSW4g
ZnVuY3Rpb24gJ2JpbmRlcmZzX2ZpbGxfc3VwZXInOgo+ICAgICBkcml2ZXJzL2FuZHJvaWQvYmlu
ZGVyZnMuYzo2NTA6OTogd2FybmluZzogbWlzc2luZyBicmFjZXMgYXJvdW5kIGluaXRpYWxpemVy
IFstV21pc3NpbmctYnJhY2VzXQo+ICAgICAgIHN0cnVjdCBiaW5kZXJmc19kZXZpY2UgZGV2aWNl
X2luZm8gPSB7IDAgfTsKPiAgICAgZHJpdmVycy9hbmRyb2lkL2JpbmRlcmZzLmM6NjUwOjk6IHdh
cm5pbmc6IChuZWFyIGluaXRpYWxpemF0aW9uIGZvciDigJhkZXZpY2VfaW5mby5uYW1l4oCZKSBb
LVdtaXNzaW5nLWJyYWNlc10KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUYW5nIEJpbiA8dGFuZ2JpbkBj
bXNzLmNoaW5hbW9iaWxlLmNvbT4KPiAtLS0KClRoYW5rcyEKQWNrZWQtYnk6IENocmlzdGlhbiBC
cmF1bmVyIDxjaHJpc3RpYW4uYnJhdW5lckB1YnVudHUuY29tPgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
