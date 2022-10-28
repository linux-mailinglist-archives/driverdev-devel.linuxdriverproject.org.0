Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1016111BA
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Oct 2022 14:41:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3391414CE;
	Fri, 28 Oct 2022 12:41:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3391414CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4bWP75cDjQFm; Fri, 28 Oct 2022 12:41:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32D2E414E6;
	Fri, 28 Oct 2022 12:41:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32D2E414E6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8BAC61BF32B
 for <devel@linuxdriverproject.org>; Fri, 28 Oct 2022 12:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E953817A8
 for <devel@linuxdriverproject.org>; Fri, 28 Oct 2022 12:41:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E953817A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wadiRdY8vYCD for <devel@linuxdriverproject.org>;
 Fri, 28 Oct 2022 12:41:39 +0000 (UTC)
X-Greylist: delayed 00:25:07 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD594817A3
Received: from mail.bittel.in (unknown [103.250.84.188])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DD594817A3
 for <devel@driverdev.osuosl.org>; Fri, 28 Oct 2022 12:41:38 +0000 (UTC)
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
