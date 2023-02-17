Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1783C69A870
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Feb 2023 10:41:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5D67400BF;
	Fri, 17 Feb 2023 09:41:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5D67400BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TfEcAk1u13md; Fri, 17 Feb 2023 09:41:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96A20400A4;
	Fri, 17 Feb 2023 09:41:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96A20400A4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7A3381BF5DE
 for <devel@linuxdriverproject.org>; Fri, 17 Feb 2023 09:41:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5307D41A17
 for <devel@linuxdriverproject.org>; Fri, 17 Feb 2023 09:41:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5307D41A17
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ReLlfLrnxDu4 for <devel@linuxdriverproject.org>;
 Fri, 17 Feb 2023 09:41:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5556B41A10
Received: from mail.dufert24.com (mail.dufert24.com [38.242.205.183])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5556B41A10
 for <devel@driverdev.osuosl.org>; Fri, 17 Feb 2023 09:41:34 +0000 (UTC)
Received: by mail.dufert24.com (Postfix, from userid 1001)
 id ECE0D41F82; Fri, 17 Feb 2023 10:10:34 +0100 (CET)
Received: by mail.dufert24.com for <devel@driverdev.osuosl.org>;
 Fri, 17 Feb 2023 09:10:34 GMT
Message-ID: <20230217084500-0.1.22.6s3r.0.f204hrxwrp@dufert24.com>
Date: Fri, 17 Feb 2023 09:10:34 GMT
From: "Nikolaus Mazal" <nikolaus.mazal@dufert24.com>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Dropshipping_-_spolupr=C3=A1ce?=
X-Mailer: mail.dufert24.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=dufert24.com; s=mail; 
 t=1676625034; bh=oIICWKo9u1D1jW6PXE1Xkws2aZgemRr9S/HRdzov8s4=;
 h=Date:From:To:Subject:From;
 b=kHcAvhTXH2XuhuEyvdWysJzM6TPzIX6l/eDnj49MVz9sHdRpnIOGeD4WAczRZJQ4F
 2ZLl0i7SKztMRGRuVl+5h79Wx+7RjJwjFMZ8zQWPRuGziQp+L4T9XxuHnuGRkgI4YF
 0KHIbObAc77kaahXbjwWk41Lciu5fJ4K9XYBsTCQcK7fT8uUuBxOcVHIVJPqtvjWam
 brU4iz+llZ2p2/YlR6rVZaN2rYbT3WC3hvZBmVaJ/WUivoB+KC0S57Ms5JnBYI8o3j
 1CqEvrYFLAEO1iBeTqArVEOMyfrk4sIJSFkOiq6mSi4txYbuyv48uZNPXrv4eOWJM8
 Xb2LUbSgQWfsQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=dufert24.com header.i=@dufert24.com
 header.a=rsa-sha256 header.s=mail header.b=kHcAvhTX
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RG9icsOpIHLDoW5vLAoKUHJvc3TFmWVkbmljdHbDrW0gc3lzdMOpbXUgZHJvcHNoaXBwaW5nb3bD
qWhvIHByb2RlamUgcG9kcG9ydWplbWUgcG9kbmlrYXRlbGUgamnFviAyMCBsZXQuCgpIbGVkw6Ft
ZSBwYXJ0bmVyeSBwcm8gc3BvbHVwcsOhY2kgemFtxJvFmWVub3UgbmEga29ua3LDqXRuw60gemlz
a3kgeiBwcm9kZWplIG1vZGVybsOtY2ggcHJvZHVrdMWvIG5hIHBsYXRmb3JtxJsgQW1hem9uIG5l
Ym8gamluw6ltIHRyxb5pxaF0aSDigJMgYmV6IG51dG5vc3RpIG3DrXQgc2tsYWQsIG5ha3Vwb3Zh
dCB6Ym/FvsOtIG5hIHNrbGFkIGEgcMWZaXByYXZvdmF0IHrDoXNpbGt5IHBybyB6w6FrYXpuw61r
eS4KIApWeXLDoWLDrW1lIG5hIHpha8Ohemt1IHJvbGV0eSwgb2JyYXp5LCB0YXBldHkgYSBkYWzF
ocOtIHRpxaF0xJtuw6kgZGVrb3JhxI1uw60gcHJ2a3ksIGt0ZXLDqSBqc291IG1lemkgb2JkYXJv
dmFuw71taSB2ZWxtaSBvYmzDrWJlbsOpLiBaYSBwb3Vow70gbcSbc8OtYyDEjWluaWwgcHJvZGVq
IHJvbGV0IG5hIG7Em21lY2vDqW0gdHJodSBBbWF6b24gMTIgNTAwIDAwMCBFVVIuCgpQb3NreXR1
amVtZSBwcm9kdWt0eSBuZWp2ecWhxaHDrSBrdmFsaXR5LCBuZW9tZXplbsOpIHNrbGFkb3bDqSB6
w6Fzb2J5LCBzcHLDoXZuxJsgb3JnYW5pem92YW5vdSBsb2dpc3Rpa3UgcG8gY2Vsw6kgRXZyb3DE
mywgcHJvZGVqbsOtIG1hdGVyacOhbHkgYSBwb2Rwb3J1IHN1cGVydml6b3JhIHDFmWkgc3BvbHVw
csOhY2kuCgpNw6F0ZSB6w6FqZW0gZGlza3V0b3ZhdCBvIG1vxb5ub3N0aSBuYXbDoXrDoW7DrSBz
cG9sdXByw6FjZT8KCgpQb3pkcmF2eQpOaWtvbGF1cyBNYXphbApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
