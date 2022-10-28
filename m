Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF53461201A
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Oct 2022 06:43:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17098606C0;
	Sat, 29 Oct 2022 04:43:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17098606C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eYholF8U5IU8; Sat, 29 Oct 2022 04:43:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAE2A60675;
	Sat, 29 Oct 2022 04:43:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAE2A60675
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A64D31BF232
 for <devel@linuxdriverproject.org>; Sat, 29 Oct 2022 04:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 48272401DA
 for <devel@linuxdriverproject.org>; Sat, 29 Oct 2022 04:43:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48272401DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ahh2QQlIRP_I for <devel@linuxdriverproject.org>;
 Sat, 29 Oct 2022 04:43:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 230C34015C
Received: from mail.bittel.in (unknown [103.250.84.188])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 230C34015C
 for <devel@driverdev.osuosl.org>; Sat, 29 Oct 2022 04:43:23 +0000 (UTC)
Received: from localhost (localhost [IPv6:::1])
 by mail.bittel.in (Postfix) with ESMTP id BF6CA41142C47;
 Fri, 28 Oct 2022 11:57:19 +0530 (IST)
Received: from mail.bittel.in ([IPv6:::1])
 by localhost (mail.bittel.in [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id i9qRg2GvhoHr; Fri, 28 Oct 2022 11:57:19 +0530 (IST)
Received: from localhost (localhost [IPv6:::1])
 by mail.bittel.in (Postfix) with ESMTP id C2AC640FCF537;
 Fri, 28 Oct 2022 09:15:47 +0530 (IST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.bittel.in C2AC640FCF537
X-Virus-Scanned: amavisd-new at bittel.in
Received: from mail.bittel.in ([IPv6:::1])
 by localhost (mail.bittel.in [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id oR0bEz0VssQj; Fri, 28 Oct 2022 09:15:47 +0530 (IST)
Received: from [192.168.100.121] (unknown [41.90.57.18])
 by mail.bittel.in (Postfix) with ESMTPSA id 7AD0740FCE7CE;
 Fri, 28 Oct 2022 07:12:22 +0530 (IST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: GREAT NEWS
To: Recipients <accounts@bittel.in>
From: Susanne <accounts@bittel.in>
Date: Thu, 27 Oct 2022 18:42:34 -0700
X-Antivirus: Avast (VPS 221027-4, 10/27/2022), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20221028014222.7AD0740FCE7CE@mail.bittel.in>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bittel.in; s=dkim; 
 t=1666928747; bh=7TXzSBQ7dPzRauRkj+bzsSMUAUSjcLr9qckNtg38xg8=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=KomXj1KmBmzhhnw23wr0POJ6n/t9gaeLtqUxPsCiIS6unzLngNGchw+ANeA0lB6SS
 b9JYji1486qO1FLSmshtNZPKBStAA7J8N3JObnZGEDSlez6DNSDw0+M7pRe2KC4AFJ
 G90hdMgaoiSG+0dsX+/GRToPEjsoX6ERD6tb+i+DbIT4UNaNDz0O82qeoJJw5S/m4d
 SAygr77S+Cpk6vWpH2LAfpn5jbhcdpiJW61qRdJzGxEc6DzVBYhkVW2Sw0H51BDsqw
 F7EtTW9wHZpADsb9qRnO1vx2b6kzww8kyDy1QonE5fZ2TbRtAT/VCgepazdBNBTWXf
 kWPz5duhodI9w==
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
Reply-To: susanklatten0411@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGFsbG8uCgpJY2ggYmluIFN1c2FubmUgS2xhdHRlbiB1bmQgaWNoIGtvbW1lIGF1cyBEZXV0c2No
bGFuZCwgaWNoIGthbm4gZGljaCBrb250cm9sbGllcmVuCmZpbmFuemllbGxlIFByb2JsZW1lIG9o
bmUgUsO8Y2tncmlmZiBhdWYgQmFua2VuIGltIEtyZWRpdGJlcmVpY2gKR2VsZCAuCgpXaXIgYmll
dGVuIFByaXZhdGtyZWRpdGUgdW5kIEdlc2Now6RmdHNrcmVkaXRlIGFuLCBpY2ggYmluIGVpbiB6
dWdlbGFzc2VuZXIgdW5kCnplcnRpZml6aWVydGVyIEtyZWRpdGdlYmVyIG1pdCBsYW5nasOkaHJp
Z2VyIEVyZmFocnVuZyBpbiBkZXIgS3JlZGl0dmVyZ2FiZSB1bmQgd2lyIGdlYmVuCmJlc2ljaGVy
dGUgdW5kIHVuYmVzaWNoZXJ0ZSBEYXJsZWhlbnNiZXRyw6RnZSBhYiAxMC4wMDAsMDAg4oKsIGF1
c2dlYmVuCiggJCkgYmlzIHp1IGVpbmVtIEjDtmNoc3RiZXRyYWcgdm9uIDUwMC4wMDAuMDAwLDAw
IOKCrCBtaXQgZWluZXIgZmVzdGVuIFZlcnppbnN1bmcgdm9uIDMgJQphdWYgSmFocmVzYmFzaXMu
IEJyYXVjaGVuIFNpZSBlaW5lbiBLcmVkaXQ/CkUtTWFpbDogc3VzYW5rbGF0dGVuMDQxMUBnbWFp
bC5jb20KClNpZSBrw7ZubmVuIGF1Y2ggbWVpbmVuIExpbmsgYW56ZWlnZW4gdW5kIG1laHIgw7xi
ZXIgbWljaCBlcmZhaHJlbi4KCmh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL1N1c2FubmVf
S2xhdHRlbgpodHRwczovL3d3dy5mb3JiZXMuY29tL3Byb2ZpbGUvc3VzYW5uZS1rbGF0dGVuClVu
dGVyc2NocmlmdCwKVm9yc3RhbmRzdm9yc2l0emVuZGVyClN1c2FubmUgS2xhdHRlbi4KCi0tIApU
aGlzIGVtYWlsIGhhcyBiZWVuIGNoZWNrZWQgZm9yIHZpcnVzZXMgYnkgQXZhc3QgYW50aXZpcnVz
IHNvZnR3YXJlLgp3d3cuYXZhc3QuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
