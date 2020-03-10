Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3C117F78D
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Mar 2020 13:38:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE78E859D2;
	Tue, 10 Mar 2020 12:38:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FKfKkLABOm-T; Tue, 10 Mar 2020 12:38:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F480859D6;
	Tue, 10 Mar 2020 12:38:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4879E1BF29F
 for <devel@linuxdriverproject.org>; Tue, 10 Mar 2020 12:38:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 41F9685955
 for <devel@linuxdriverproject.org>; Tue, 10 Mar 2020 12:38:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8OrsfQYhnquu for <devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 12:38:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.11d01.mspz7.gob.ec (mail.11d01.mspz7.gob.ec
 [190.152.145.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5975D835D3
 for <devel@driverdev.osuosl.org>; Tue, 10 Mar 2020 12:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.11d01.mspz7.gob.ec (Postfix) with ESMTP id 5D78E2F666A3;
 Tue, 10 Mar 2020 04:14:20 -0500 (-05)
Received: from mail.11d01.mspz7.gob.ec ([127.0.0.1])
 by localhost (mail.11d01.mspz7.gob.ec [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id IOTVATokbsjR; Tue, 10 Mar 2020 04:14:19 -0500 (-05)
Received: from localhost (localhost [127.0.0.1])
 by mail.11d01.mspz7.gob.ec (Postfix) with ESMTP id DE9FF2F6D9A9;
 Tue, 10 Mar 2020 03:38:48 -0500 (-05)
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.11d01.mspz7.gob.ec DE9FF2F6D9A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=11d01.mspz7.gob.ec;
 s=50CBC7E4-8BED-11E9-AF6C-F1A741A224D3; t=1583829529;
 bh=o+H3O7n1+zJcXo0FhJs7spyf8HmE4ClnBa/Y2Gk0DL0=;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:To:
 From:Date:Reply-To:Message-Id;
 b=Ruvo3BY125MamdOsoW4wmWjJH4Uq/8G5QV/XS20w3yuW5BzgF5wo4e1M9I0knTzS2
 5qqaxZxLWY80KL0qjzy80RdQr7hfqOPY8ii9/Nm6mLUG5jDNIOglPlDzuBRC/SZAYC
 1WL3xsWQYuu2rKg8jKlqd4Qy8j9Ge/jRUpVC89VE=
X-Virus-Scanned: amavisd-new at 11d01.mspz7.gob.ec
Received: from mail.11d01.mspz7.gob.ec ([127.0.0.1])
 by localhost (mail.11d01.mspz7.gob.ec [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id hBuTwWP_EmOO; Tue, 10 Mar 2020 03:38:48 -0500 (-05)
Received: from [10.19.167.32] (unknown [105.0.4.171])
 by mail.11d01.mspz7.gob.ec (Postfix) with ESMTPSA id 274EA2F6D3EC;
 Tue, 10 Mar 2020 03:06:43 -0500 (-05)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?q?Wohlt=C3=A4tigkeitsspende_von_2=2E000=2E000_Millionen_Euro?=
To: Recipients <ronald.pena@11d01.mspz7.gob.ec>
From: ''Michael weirsky'' <ronald.pena@11d01.mspz7.gob.ec>
Date: Tue, 10 Mar 2020 10:36:11 +0200
Message-Id: <20200310080645.274EA2F6D3EC@mail.11d01.mspz7.gob.ec>
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
Reply-To: mikeweirskyspende@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGllYmVyIEZyZXVuZCwKCkljaCBiaW4gSGVyciBNaWtlIFdlaXJza3ksIE5ldyBKZXJzZXksIFZl
cmVpbmlndGUgU3RhYXRlbiB2b24gQW1lcmlrYSwgZGVyIE1lZ2EtR2V3aW5uZXIgdm9uICQgMjcz
bWlsbGlvbiBJbiBNZWdhIE1pbGxpb25zIEphY2twb3QsIHNwZW5kZSBpY2ggYW4gNSB6dWbDpGxs
aWdlIFBlcnNvbmVuLCB3ZW5uIFNpZSBkaWVzZSBFLU1haWwgZXJoYWx0ZW4sIGRhbm4gd3VyZGUg
SWhyZSBFLU1haWwgbmFjaCBlaW5lbSBTcGluYmFsbCBhdXNnZXfDpGhsdC5JY2ggaGFiZSBkZW4g
Z3LDtsOfdGVuIFRlaWwgbWVpbmVzIFZlcm3DtmdlbnMgYXVmIGVpbmUgUmVpaGUgdm9uIFdvaGx0
w6R0aWdrZWl0c29yZ2FuaXNhdGlvbmVuIHVuZCBPcmdhbmlzYXRpb25lbiB2ZXJ0ZWlsdC5JY2gg
aGFiZSBtaWNoIGZyZWl3aWxsaWcgZGF6dSBlbnRzY2hpZWRlbiwgZGllIFN1bW1lIHZvbiDigqwg
Mi4wMDAuMDAwLDAwIGFuIFNpZSBhbHMgZWluZSBkZXIgYXVzZ2V3w6RobHRlbiA1IHp1IHNwZW5k
ZW4sIHVtIG1laW5lIEdld2lubmUgenUgw7xiZXJwcsO8ZmVuLgpEYXMgaXN0IGRlaW4gU3BlbmRl
bmNvZGU6IFtNVzUzMDM0MjAxOV0Kd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9dW44eVJUbXJZTVkK
CkFudHdvcnRlbiBTaWUgbWl0IGRlbSBTUEVOREUtQ09ERSBhbiBkaWVzZSAKCkUtTWFpbDptaWtl
d2VpcnNreXNwZW5kZUBnbWFpbC5jb20KCkljaCBob2ZmZSwgU2llIHVuZCBJaHJlIEZhbWlsaWUg
Z2zDvGNrbGljaCB6dSBtYWNoZW4uCgpHcsO8w59lCkhlcnIgTWlrZSBXZWlyc2t5Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
