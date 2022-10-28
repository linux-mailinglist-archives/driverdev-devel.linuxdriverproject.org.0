Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC146111BF
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Oct 2022 14:42:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36C73817A3;
	Fri, 28 Oct 2022 12:42:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36C73817A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hiZSo9cw93Or; Fri, 28 Oct 2022 12:42:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E469C81400;
	Fri, 28 Oct 2022 12:42:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E469C81400
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FA771BF32B
 for <devel@linuxdriverproject.org>; Fri, 28 Oct 2022 12:42:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 08CEA60AC0
 for <devel@linuxdriverproject.org>; Fri, 28 Oct 2022 12:42:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08CEA60AC0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PilX4W5jkOe6 for <devel@linuxdriverproject.org>;
 Fri, 28 Oct 2022 12:42:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16F0260A7B
Received: from mail.bittel.in (unknown [103.250.84.188])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 16F0260A7B
 for <devel@linuxdriverproject.org>; Fri, 28 Oct 2022 12:42:29 +0000 (UTC)
Received: from localhost (localhost [IPv6:::1])
 by mail.bittel.in (Postfix) with ESMTP id CC1C5410A700D;
 Fri, 28 Oct 2022 12:04:12 +0530 (IST)
Received: from mail.bittel.in ([IPv6:::1])
 by localhost (mail.bittel.in [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id w8xP25R_4Kx2; Fri, 28 Oct 2022 12:04:11 +0530 (IST)
Received: from localhost (localhost [IPv6:::1])
 by mail.bittel.in (Postfix) with ESMTP id CEF4A40FCD3E6;
 Fri, 28 Oct 2022 09:25:42 +0530 (IST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.bittel.in CEF4A40FCD3E6
X-Virus-Scanned: amavisd-new at bittel.in
Received: from mail.bittel.in ([IPv6:::1])
 by localhost (mail.bittel.in [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id HgWaAZJb0HLr; Fri, 28 Oct 2022 09:25:42 +0530 (IST)
Received: from [192.168.100.121] (unknown [41.90.57.18])
 by mail.bittel.in (Postfix) with ESMTPSA id EE8B940FCD3EC;
 Fri, 28 Oct 2022 07:11:38 +0530 (IST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: GREAT NEWS
To: Recipients <accounts@bittel.in>
From: Susanne <accounts@bittel.in>
Date: Thu, 27 Oct 2022 18:41:52 -0700
X-Antivirus: Avast (VPS 221027-4, 10/27/2022), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20221028014139.EE8B940FCD3EC@mail.bittel.in>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bittel.in; s=dkim; 
 t=1666929343; bh=7TXzSBQ7dPzRauRkj+bzsSMUAUSjcLr9qckNtg38xg8=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=uZNU1Fvn9mAotYXz15JhqcB41mQR0qph1c33nqpaxQWekeEluacSzIlISf+UxRjZP
 9c7JoUBEpQx7ShQXphN2p1qa6HZ/M3dyFh904zTqMrRm438AEpl/sfayahNpvENxnd
 UmhzpNvCRYsUVQx2PdXXoNOnF9jAbLoVdQAyd3zNU3NRGVIVH3TIkEr7vF4dZzUhJD
 nTaXn11Q4inUQecUrluWZ+GvOblT2RgCsUPrha+6YMz/uSGggc5aHlB5+jM/yOR2zc
 qsQLoGiOiG5Wos9gVScTdmXZRJEi7qT+dIpLuysJBw4Ih2DrNnnPGKIvJmPV/CPTTt
 hL6DbFEw5hycQ==
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
