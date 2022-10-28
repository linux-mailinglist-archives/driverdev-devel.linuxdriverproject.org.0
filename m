Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E7F6111BD
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Oct 2022 14:42:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E2BC7400AF;
	Fri, 28 Oct 2022 12:42:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2BC7400AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zE2fWkm_7fIx; Fri, 28 Oct 2022 12:42:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A469740012;
	Fri, 28 Oct 2022 12:42:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A469740012
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EFC31BF32B;
 Fri, 28 Oct 2022 12:42:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB4CE400AF;
 Fri, 28 Oct 2022 12:42:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB4CE400AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PBHV8XMnCIHt; Fri, 28 Oct 2022 12:42:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 861B340012
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.bittel.in (unknown [103.250.84.188])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 861B340012;
 Fri, 28 Oct 2022 12:42:08 +0000 (UTC)
Received: from localhost (localhost [IPv6:::1])
 by mail.bittel.in (Postfix) with ESMTP id DD2F340D93B9A;
 Fri, 28 Oct 2022 12:04:11 +0530 (IST)
Received: from mail.bittel.in ([IPv6:::1])
 by localhost (mail.bittel.in [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id BkZTGy46TQ4C; Fri, 28 Oct 2022 12:04:11 +0530 (IST)
Received: from localhost (localhost [IPv6:::1])
 by mail.bittel.in (Postfix) with ESMTP id BD7D240FCD3E4;
 Fri, 28 Oct 2022 09:25:42 +0530 (IST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.bittel.in BD7D240FCD3E4
X-Virus-Scanned: amavisd-new at bittel.in
Received: from mail.bittel.in ([IPv6:::1])
 by localhost (mail.bittel.in [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id jGbJvf2E7GVy; Fri, 28 Oct 2022 09:25:42 +0530 (IST)
Received: from [192.168.100.121] (unknown [41.90.57.18])
 by mail.bittel.in (Postfix) with ESMTPSA id D71B740FCD3EB;
 Fri, 28 Oct 2022 07:11:38 +0530 (IST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: GREAT NEWS
To: Recipients <accounts@bittel.in>
From: Susanne <accounts@bittel.in>
Date: Thu, 27 Oct 2022 18:41:52 -0700
X-Antivirus: Avast (VPS 221027-4, 10/27/2022), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20221028014139.D71B740FCD3EB@mail.bittel.in>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bittel.in; s=dkim; 
 t=1666929343; bh=7TXzSBQ7dPzRauRkj+bzsSMUAUSjcLr9qckNtg38xg8=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=n0TuGNAk/fDqzm9lbdyGjvfcU7udOkfbWeqJ9J1go/XwWspvFVnJy5GotBiRHKM3N
 OnjAOEazwur6+EnA0paKoj+Q8t0tDgJx/VmBzTRyrt8P6MuUanzftUqIUCisfJ3/xG
 05bBEjI8UzoYrC2k7iPqzDJSf6O7B9E9PTiYo6k91MCysezVAAq2q5YKu8b8nEUFNJ
 yvs3X0puAWYEG7T1NxUQ8YlRe649/jKF5qVzIxoF4SCF358iPV4IoXyiiH/iPWQ/kU
 fyb57NK01t0DOX1IxH510o55lF1RgbFi5ong0IBVGHAZr4ASbfajDxeV+BYcSJpSst
 WIq7S164BgPPA==
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
