Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3707F5A9D
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Nov 2023 09:54:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 788AA60E7A;
	Thu, 23 Nov 2023 08:54:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 788AA60E7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id np3f45MOmszg; Thu, 23 Nov 2023 08:54:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75E5160AB9;
	Thu, 23 Nov 2023 08:54:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75E5160AB9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A44B1BF855
 for <devel@linuxdriverproject.org>; Thu, 23 Nov 2023 08:54:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B0C541695
 for <devel@linuxdriverproject.org>; Thu, 23 Nov 2023 08:54:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B0C541695
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KTA6cFy8Eqvb for <devel@linuxdriverproject.org>;
 Thu, 23 Nov 2023 08:54:14 +0000 (UTC)
X-Greylist: delayed 478 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 23 Nov 2023 08:54:14 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F3BC4097A
Received: from mail.venturelinkbiz.com (mail.venturelinkbiz.com
 [51.195.119.142])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F3BC4097A
 for <devel@driverdev.osuosl.org>; Thu, 23 Nov 2023 08:54:13 +0000 (UTC)
Received: by mail.venturelinkbiz.com (Postfix, from userid 1002)
 id 3F39047C0B; Thu, 23 Nov 2023 08:46:07 +0000 (UTC)
Received: by mail.venturelinkbiz.com for <devel@driverdev.osuosl.org>;
 Thu, 23 Nov 2023 08:46:03 GMT
Message-ID: <20231123074500-0.1.3r.assk.0.ibeekrpne3@venturelinkbiz.com>
Date: Thu, 23 Nov 2023 08:46:03 GMT
From: "Michal Rmoutil" <michal.rmoutil@venturelinkbiz.com>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Efektivn=C3=AD_sledov=C3=A1n=C3=AD_a_optimalizace_v=C3=BDroby_pro_va=C5=A1i_spole=C4=8Dnost?=
X-Mailer: mail.venturelinkbiz.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=venturelinkbiz.com; s=mail; t=1700729173;
 bh=JBV4b8UUo1MSngn/QBoedt1Dv52bT8rWeq4R22MtJMs=;
 h=Date:From:To:Subject:From;
 b=Tx9dxHurHD0R2wyS2KfaxwPyyUqAMlr6K/UPdzArPFzlyuDoRHTEGIiRUUeUJmywt
 AoRDoS0HhQnnjq8a2G6xeIP9mgP/ea6bns3vi3OlFfinDURZs/eVBhB2hz53v5DngM
 venqWqtc2yU/6Udn9OMKEq0iJwZ6/Xfalhw07GzD2qQfyqf+JpRGZ83PBVhbylqXq8
 PFj3H+UftH+j6Ofv7KvZclyXcpvwdg4+PFFmSY7bx+lehgal87az6AlJKibmnDhEte
 mchYFsdGbJ2cXeIRgimH/khrHS+979M32RUW7YezoRbxPbY/XpfMlYJ6LSPU8lJEa0
 9+FZvcrQ92TsA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=venturelinkbiz.com
 header.i=@venturelinkbiz.com header.a=rsa-sha256 header.s=mail
 header.b=Tx9dxHur
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

RG9icsOpIHLDoW5vLAoKbcOhdGUgbW/Fvm5vc3Qgc2xlZG92YXQgc3RhdiBrYcW+ZMOpaG8gc3Ry
b2plIGEgdsO9cm9ibsOtaG8gcHJvY2VzdSB6IGthbmNlbMOhxZllLCBrb25mZXJlbsSNbsOtIG3D
rXN0bm9zdGkgbmVibyBkb2tvbmNlIHogZG9tb3ZhIMSNaSBuYSBjZXN0w6FjaCDigJMgbmEgdmHF
oWVtIHRlbGVmb251PwoKUG9za3l0dWplbWUgcnljaGxlIGltcGxlbWVudG92YXRlbG7DvSBhIHNu
YWRubyBwb3XFvml0ZWxuw70gbsOhc3Ryb2osIGt0ZXLDvSB6YWNoeXTDrSBpIG7Em2tvbGlrYXNl
a3VuZG92w70gbWlrcm9wcm9zdG9qIGEgb2thbcW+aXTEmyBwxZllcG/EjcOtdMOhIHZ5dcW+aXTD
rSBzdHJvamUgdiBrb250ZXh0dSBkYW7DqSB2w71yb2Juw60gemFrw6F6a3kuCgpLZHlrb2xpIHZp
ZMOtdGUgc3RhdiBvYmplZG7DoXZreSBhIGpzdGUgaW5mb3Jtb3bDoW5pIG8gcMWZw61wYWRuw6lt
IHNuw63FvmVuw60gZWZla3Rpdml0eS4gU3lzdMOpbSBzw6FtIGFuYWx5enVqZSBkYXRhIGEgcMWZ
aXByYXZ1amUgY2VubsOpIHJlcG9ydHksIGNvxb4gb3BlcsOhdG9yxa9tIHVtb8W+xYh1amUgc291
c3TFmWVkaXQgc2UgbmEgdsO9cm9ibsOtIGPDrWwuCgpDw61sIGplIGplZG5vZHVjaMO9OiBqZWRl
biBwb2hsZWQg4oCTIGNlbMOhIHRvdsOhcm5hLiDEjGVrw6FtIG5hIG9kcG92xJvEjywgamVzdGxp
IHZpZMOtdGUgbW/Fvm5vc3Qgdnl1xb5pdMOtIHRha292w6lobyBuw6FzdHJvamUgdmUgdmHFocOt
IGZpcm3Emy4KCgpQb3pkcmF2eQpNaWNoYWwgUm1vdXRpbApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
