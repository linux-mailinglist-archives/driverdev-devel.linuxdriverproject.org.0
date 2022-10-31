Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA4961304A
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Oct 2022 07:31:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1148881275;
	Mon, 31 Oct 2022 06:31:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1148881275
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vU3NwWAmmWdF; Mon, 31 Oct 2022 06:31:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9514812D8;
	Mon, 31 Oct 2022 06:31:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9514812D8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E84AB1BF3A1
 for <devel@linuxdriverproject.org>; Mon, 31 Oct 2022 06:31:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C33EF81275
 for <devel@linuxdriverproject.org>; Mon, 31 Oct 2022 06:31:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C33EF81275
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4C7NfBtwDuVv for <devel@linuxdriverproject.org>;
 Mon, 31 Oct 2022 06:31:20 +0000 (UTC)
X-Greylist: delayed 00:20:40 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5143F81270
Received: from email.pdamkotamalang.com (unknown [114.4.39.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5143F81270
 for <devel@driverdev.osuosl.org>; Mon, 31 Oct 2022 06:31:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by email.pdamkotamalang.com (Postfix) with ESMTP id 381E86604A;
 Mon, 31 Oct 2022 13:07:27 +0700 (WIB)
Received: from email.pdamkotamalang.com ([127.0.0.1])
 by localhost (email.pdamkotamalang.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id isuiG4niHssh; Mon, 31 Oct 2022 13:07:27 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by email.pdamkotamalang.com (Postfix) with ESMTP id 0B1A46616A;
 Mon, 31 Oct 2022 13:07:27 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.9.2 email.pdamkotamalang.com 0B1A46616A
X-Virus-Scanned: amavisd-new at email.pdamkotamalang.com
Received: from email.pdamkotamalang.com ([127.0.0.1])
 by localhost (email.pdamkotamalang.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id lyTRGYXeoZjs; Mon, 31 Oct 2022 13:07:26 +0700 (WIB)
Received: from [192.168.100.121] (unknown [188.214.125.153])
 by email.pdamkotamalang.com (Postfix) with ESMTPSA id A8D3D6604A;
 Mon, 31 Oct 2022 13:07:11 +0700 (WIB)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: GREAT NEWS
To: Recipients <lpse@pdamkotamalang.com>
From: Susanne <lpse@pdamkotamalang.com>
Date: Sun, 30 Oct 2022 23:07:05 -0700
X-Antivirus: Avast (VPS 221030-4, 10/30/2022), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20221031060711.A8D3D6604A@email.pdamkotamalang.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pdamkotamalang.com; 
 s=62829964-9E69-11EB-BD22-25F53CE53079; t=1667196447;
 bh=7TXzSBQ7dPzRauRkj+bzsSMUAUSjcLr9qckNtg38xg8=;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:To:
 From:Date:Reply-To:Message-Id;
 b=Am2s4XA4PH/vODWTWACqwRQZbizxAomSwxEJ5S9Y3ui0aqZz6N4EeFhnuyPHx2Gw7
 QbZdHJr3czM+raIXI/uflD+gMMFRvh4P0j2+2JcrXK0G/kcsN02oAu2nRTS5KyacXT
 x3zYZbNLBgWN/ptn+hNRJG29XA+8nDNMvOyIuf5k=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=pdamkotamalang.com
 header.i=@pdamkotamalang.com header.a=rsa-sha256
 header.s=62829964-9E69-11EB-BD22-25F53CE53079 header.b=Am2s4XA4
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
