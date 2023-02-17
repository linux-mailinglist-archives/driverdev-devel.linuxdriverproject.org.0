Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A38EB69B270
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Feb 2023 19:39:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0D5981DF9;
	Fri, 17 Feb 2023 18:39:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0D5981DF9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OqL4lUYzZMno; Fri, 17 Feb 2023 18:39:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EE0F81C44;
	Fri, 17 Feb 2023 18:39:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EE0F81C44
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C14961BF32C
 for <devel@linuxdriverproject.org>; Fri, 17 Feb 2023 18:39:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B85981DF9
 for <devel@linuxdriverproject.org>; Fri, 17 Feb 2023 18:39:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B85981DF9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 12ipUsKdjs4i for <devel@linuxdriverproject.org>;
 Fri, 17 Feb 2023 18:39:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AAFF781C44
Received: from mail.dufert24.com (mail.dufert24.com [38.242.205.183])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AAFF781C44
 for <devel@linuxdriverproject.org>; Fri, 17 Feb 2023 18:39:48 +0000 (UTC)
Received: by mail.dufert24.com (Postfix, from userid 1001)
 id 36359436B5; Fri, 17 Feb 2023 10:10:39 +0100 (CET)
Received: by mail.dufert24.com for <devel@linuxdriverproject.org>;
 Fri, 17 Feb 2023 09:10:34 GMT
Message-ID: <20230217084500-0.1.22.6sb7.0.0t55qzrboj@dufert24.com>
Date: Fri, 17 Feb 2023 09:10:34 GMT
From: "Nikolaus Mazal" <nikolaus.mazal@dufert24.com>
To: <devel@linuxdriverproject.org>
Subject: =?UTF-8?Q?Dropshipping_-_spolupr=C3=A1ce?=
X-Mailer: mail.dufert24.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=dufert24.com; s=mail; 
 t=1676625051; bh=oIICWKo9u1D1jW6PXE1Xkws2aZgemRr9S/HRdzov8s4=;
 h=Date:From:To:Subject:From;
 b=LstDh2849htcGEyheRH1MnGW7igP0uiVloInd1CDK1hVdI0rNn5xBGzKjUdEb3t1M
 jq1GDxcogKsradQdSRcSQOb9QoB5O6hqYRVKSqOTjUoqfbH0WWFUaEOu1hCyX5Lqy6
 sbJcpCLCTC0YppBa7q4grFmNO8pdm/mwnvh6VyxROCPL4pbS6POLEE/QTOUwGje2Oq
 Ffh/X3vd7FF1YmVor5OKHAcAFNayvVLqgQG3drbvzrXUSXi4rHaJCtSn4OSYN1tppW
 oKzZyctVfqww82+SRgFK17RwQfw4pqvtvZrlYFMPgs3LjDDY0SHAbI3eIehLPDkwhx
 nmtwh0LwrzcxQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=dufert24.com header.i=@dufert24.com
 header.a=rsa-sha256 header.s=mail header.b=LstDh284
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
