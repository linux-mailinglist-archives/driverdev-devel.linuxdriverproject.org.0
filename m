Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A42D3A99E9
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Jun 2021 14:07:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 05B0A40450;
	Wed, 16 Jun 2021 12:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RFWtuMgrtTFB; Wed, 16 Jun 2021 12:07:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44DD240443;
	Wed, 16 Jun 2021 12:07:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 94A781BF2FA
 for <devel@linuxdriverproject.org>; Wed, 16 Jun 2021 12:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8195581D98
 for <devel@linuxdriverproject.org>; Wed, 16 Jun 2021 12:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oss.com.pe
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MfNDPb-WGy1d for <devel@linuxdriverproject.org>;
 Wed, 16 Jun 2021 12:07:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.consorciolp.com.pe (mail.consorciolp.com.pe
 [161.132.100.45])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B5C2681D18
 for <devel@driverdev.osuosl.org>; Wed, 16 Jun 2021 12:07:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.consorciolp.com.pe (Postfix) with ESMTP id 2C797320041C9;
 Wed, 16 Jun 2021 01:58:13 -0500 (-05)
Received: from mail.consorciolp.com.pe ([127.0.0.1])
 by localhost (mail.consorciolp.com.pe [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 9cYTsqa-OUZ3; Wed, 16 Jun 2021 01:58:12 -0500 (-05)
Received: from localhost (localhost [127.0.0.1])
 by mail.consorciolp.com.pe (Postfix) with ESMTP id 4F43534BD3560;
 Wed, 16 Jun 2021 01:55:48 -0500 (-05)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.consorciolp.com.pe 4F43534BD3560
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oss.com.pe;
 s=675A380C-4679-11E8-96E4-C0788CA36BC0; t=1623826548;
 bh=7Y6RtNhSVAIVHdJEU2gHHWYvaP8LRgEAhMNj0EoKaAA=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=hZAXnhfr750KzXIzt6PTl+HOBrCTP/p+iEHdZObesVyF/vOfzkFfwkpI9bUS6i0oS
 iuFW7eEBbAH/OsCkmM5NV7PlWXxmcxIMBB6fmvqklipeCUIRAjeYenpzQxrh/DWdHo
 GLVEaZjnvxw2LP53yDA6ZgXothlKroIi4yO+bAZt6JEnvXCeCd+vN2erO7dkUXal8q
 2kkfcqLr/oir/l6eVJRm2h6N2Hs/B5qzm2jK4isNpWa1PLUJr+7H/9X2Sl0duoQzLr
 KkCe1R+KhnHsbqQAhlRGE/v8g2xl07ftydeSlHKnycUOJGQ/if2Up0+hHJ59X5EhGa
 vSVhf0xR1mYiw==
X-Virus-Scanned: amavisd-new at consorciolp.com.pe
Received: from mail.consorciolp.com.pe ([127.0.0.1])
 by localhost (mail.consorciolp.com.pe [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 2uztmuDSvuka; Wed, 16 Jun 2021 01:55:48 -0500 (-05)
Received: from cris-PC.wifi (unknown [105.9.118.225])
 by mail.consorciolp.com.pe (Postfix) with ESMTPSA id 23AB734B50DCE;
 Wed, 16 Jun 2021 01:53:09 -0500 (-05)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: spende von 2,000,000 euro
To: Recipients <sechegaray@oss.com.pe>
From: ''Tayeb souami'' <sechegaray@oss.com.pe>
Date: Wed, 16 Jun 2021 08:54:45 +0200
Message-Id: <20210616065310.23AB734B50DCE@mail.consorciolp.com.pe>
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
Reply-To: Tayebsouam.spende@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGllYmVyIEZyZXVuZCwKCkljaCBiaW4gSGVyciBUYXllYiBTb3VhbWksIE5ldyBKZXJzZXksIFZl
cmVpbmlndGUgU3RhYXRlbiB2b24gQW1lcmlrYSwgZGVyIE1lZ2EtR2V3aW5uZXIgdm9uICQgMzE1
bWlsbGlvbiBJbiBNZWdhIE1pbGxpb25zIEphY2twb3QsIHNwZW5kZSBpY2ggYW4gNSB6dWbDpGxs
aWdlIFBlcnNvbmVuLCB3ZW5uIFNpZSBkaWVzZSBFLU1haWwgZXJoYWx0ZW4sIGRhbm4gd3VyZGUg
SWhyZSBFLU1haWwgbmFjaCBlaW5lbSBTcGluYmFsbCBhdXNnZXfDpGhsdC5JY2ggaGFiZSBkZW4g
Z3LDtsOfdGVuIFRlaWwgbWVpbmVzIFZlcm3DtmdlbnMgYXVmIGVpbmUgUmVpaGUgdm9uIFdvaGx0
w6R0aWdrZWl0c29yZ2FuaXNhdGlvbmVuIHVuZCBPcmdhbmlzYXRpb25lbiB2ZXJ0ZWlsdC5JY2gg
aGFiZSBtaWNoIGZyZWl3aWxsaWcgZGF6dSBlbnRzY2hpZWRlbiwgZGllIFN1bW1lIHZvbiDigqwg
Mi4wMDAuMDAwLDAwIGFuIFNpZSBhbHMgZWluZSBkZXIgYXVzZ2V3w6RobHRlbiA1IHp1IHNwZW5k
ZW4sIHVtIG1laW5lIEdld2lubmUgenUgw7xiZXJwcsO8ZmVuLCBzZWhlbiBTaWUgYml0dGUgbWVp
bmUgWW91IFR1YmUgU2VpdGUgdW50ZW4uCgpVSFIgTUlDSCBISUVSOiBodHRwczovL3d3dy55b3V0
dWJlLmNvbS93YXRjaD92PVo2dWk4WkRRNktzCgoKCkRhcyBpc3QgZGVpbiBTcGVuZGVuY29kZTog
W1RTNTMwMzQyMDE4XQoKCgpBbnR3b3J0ZW4gU2llIG1pdCBkZW0gU1BFTkRFLUNPREUgYW4gZGll
c2UKCkUtTWFpbDpUYXllYnNvdWFtLnNwZW5kZUBnbWFpbC5jb20KCgpJY2ggaG9mZmUsIFNpZSB1
bmQgSWhyZSBGYW1pbGllIGdsw7xja2xpY2ggenUgbWFjaGVuLgoKR3LDvMOfZQpIZXJyIFRheWVi
IFNvdWFtaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
