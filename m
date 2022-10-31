Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACC161304E
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Oct 2022 07:31:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C890D40227;
	Mon, 31 Oct 2022 06:31:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C890D40227
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GnQwHm9aGN5Y; Mon, 31 Oct 2022 06:31:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A99040257;
	Mon, 31 Oct 2022 06:31:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A99040257
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 754901BF3A1;
 Mon, 31 Oct 2022 06:31:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6A387812DF;
 Mon, 31 Oct 2022 06:31:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A387812DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g8lgDHE4tCeu; Mon, 31 Oct 2022 06:31:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B4F581275
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from email.pdamkotamalang.com (unknown [114.4.39.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B4F581275;
 Mon, 31 Oct 2022 06:31:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by email.pdamkotamalang.com (Postfix) with ESMTP id E00EC654B7;
 Mon, 31 Oct 2022 13:05:53 +0700 (WIB)
Received: from email.pdamkotamalang.com ([127.0.0.1])
 by localhost (email.pdamkotamalang.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id PVJ4hcKiWrAo; Mon, 31 Oct 2022 13:05:53 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by email.pdamkotamalang.com (Postfix) with ESMTP id A5E2265D64;
 Mon, 31 Oct 2022 13:05:53 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.9.2 email.pdamkotamalang.com A5E2265D64
X-Virus-Scanned: amavisd-new at email.pdamkotamalang.com
Received: from email.pdamkotamalang.com ([127.0.0.1])
 by localhost (email.pdamkotamalang.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Asd7CT3D-6Qw; Mon, 31 Oct 2022 13:05:53 +0700 (WIB)
Received: from [192.168.100.121] (unknown [188.214.125.153])
 by email.pdamkotamalang.com (Postfix) with ESMTPSA id 4743B654B7;
 Mon, 31 Oct 2022 13:05:37 +0700 (WIB)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: GREAT NEWS
To: Recipients <lpse@pdamkotamalang.com>
From: Susanne <lpse@pdamkotamalang.com>
Date: Sun, 30 Oct 2022 23:05:28 -0700
X-Antivirus: Avast (VPS 221030-4, 10/30/2022), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20221031060538.4743B654B7@email.pdamkotamalang.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pdamkotamalang.com; 
 s=62829964-9E69-11EB-BD22-25F53CE53079; t=1667196353;
 bh=7TXzSBQ7dPzRauRkj+bzsSMUAUSjcLr9qckNtg38xg8=;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:To:
 From:Date:Reply-To:Message-Id;
 b=wInLPIHueji0Kjt6bCb3naSoz4A/51qbGlRF1garfzYXnGfA1e9zVcB/6dcqA/dNr
 owT3GmvmL2mukpXYZ0OqS7NYoH7HEU3yNoAj+cMu5RleQCHKk8SIo5LJ9dqD0g4LH9
 TBYXBIxjymygVrxFLs6DWGSj5Eyb6Kd+DcR+vu4g=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=pdamkotamalang.com
 header.i=@pdamkotamalang.com header.a=rsa-sha256
 header.s=62829964-9E69-11EB-BD22-25F53CE53079 header.b=wInLPIHu
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
