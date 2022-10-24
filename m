Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8349F60BB42
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Oct 2022 22:53:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EF9F40331;
	Mon, 24 Oct 2022 20:53:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EF9F40331
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EAzKxg_Y8AD5; Mon, 24 Oct 2022 20:53:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AD99402E7;
	Mon, 24 Oct 2022 20:53:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0AD99402E7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B04151BF338
 for <devel@linuxdriverproject.org>; Mon, 24 Oct 2022 20:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8BB8780CE0
 for <devel@linuxdriverproject.org>; Mon, 24 Oct 2022 20:53:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BB8780CE0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hyawR1N2a14d for <devel@linuxdriverproject.org>;
 Mon, 24 Oct 2022 20:53:48 +0000 (UTC)
X-Greylist: delayed 14:42:02 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 356EA80C29
Received: from mail.dabacenter.ir (mail.dabacenter.ir [81.31.238.26])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 356EA80C29
 for <devel@driverdev.osuosl.org>; Mon, 24 Oct 2022 20:53:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.dabacenter.ir (Postfix) with ESMTP id 5B072265AA42;
 Mon, 24 Oct 2022 04:57:13 +0330 (+0330)
Received: from mail.dabacenter.ir ([127.0.0.1])
 by localhost (mail.dabacenter.ir [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id O8pLBCdD4IQZ; Mon, 24 Oct 2022 04:57:13 +0330 (+0330)
Received: from localhost (localhost [127.0.0.1])
 by mail.dabacenter.ir (Postfix) with ESMTP id 25730265AA53;
 Mon, 24 Oct 2022 04:08:45 +0330 (+0330)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.dabacenter.ir 25730265AA53
X-Virus-Scanned: amavisd-new at dabacenter.ir
Received: from mail.dabacenter.ir ([127.0.0.1])
 by localhost (mail.dabacenter.ir [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id gUSdoMVf8XAA; Mon, 24 Oct 2022 04:08:44 +0330 (+0330)
Received: from [91.103.252.94] (unknown [91.103.252.94])
 by mail.dabacenter.ir (Postfix) with ESMTPSA id 9C387261197C;
 Mon, 24 Oct 2022 03:47:56 +0330 (+0330)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Hallo
To: Recipients <no-reply@dabacenter.ir>
From: "Maria Elisabeth" <no-reply@dabacenter.ir>
Date: Sun, 23 Oct 2022 17:18:03 -0700
Message-Id: <20221024001757.9C387261197C@mail.dabacenter.ir>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabacenter.ir; 
 s=42C10FF2-97A6-11EC-8F3C-6C82338213BD; t=1666571925;
 bh=vUDLicfKHs+vmbidmNVuY2M1Vb1kyIVJlSGn9WGs7A0=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=n3+0bsbNKRKwWoG4C9lVDiB9gPkyFgUjfmYaXraSFbV2JeKxWy8YlndQpzNGTy2aH
 W+n39Bhp5BLibmnvtLa+37VidfrENzedDkwyZzrE0AQkpl1mQN6Oga5v15LZokDrz9
 MnueC10JYalZScq42g/dFN+nL7MBckVBkGdoZLu8X2VqDjnSt5JGgmSV5xZntevVLm
 a8IGyXn6OnVM1sml/vTw0emAtRBSwxj9dZsPC01jdBxAUpf8nunEbnXEP7glIquLtP
 abPBhHePw6CuAIAeBR/hu7C3legEQikLdNoDeSMOOkKMXngmaZLt+I76ld9/aBXxVc
 YZ7IdA3IYaCvA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=dabacenter.ir header.i=@dabacenter.ir
 header.a=rsa-sha256 header.s=42C10FF2-97A6-11EC-8F3C-6C82338213BD
 header.b=n3+0bsbN
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
Reply-To: mariaelisabeth7788@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3LDvMOfZSwKCkljaCBiaW4gTWFyaWEgRWxpc2FiZXRoIFNjaGFlZmZsZXIsIGVpbmUgZGV1dHNj
aGUgVW50ZXJuZWhtZXJpbiwgSW52ZXN0b3JpbiB1bmQgR2VzY2jDpGZ0c2bDvGhyZXJpbiBkZXIg
U2NoYWVmZmxlciBHcnVwcGUuIEljaCBiaW4gZWluZXIgZGVyIEVpZ2VudMO8bWVyIGRlciBTY2hh
ZWZmbGVyIEdydXBwZS4gSWNoIGhhYmUgMjUlIG1laW5lcyBBbnRlaWxzIGbDvHIgZWluZW4gZ3V0
ZW4gWndlY2sgdmVyc2NoZW5rdC4gVW5kIGljaCBoYWJlIGF1Y2ggenVnZXNhZ3QsIGRpZSByZXN0
bGljaGVuIDI1ICUgZGllc2VzIEphaHIgMjAyMiBhbiBQcml2YXRwZXJzb25lbiB6dSB2ZXJzY2hl
bmtlbi4gSWNoIGhhYmUgbWljaCBlbnRzY2hpZWRlbiwgMS43MDAuMDAwIOKCrCBhbiAxMDAgTWVu
c2NoZW4genUgc3BlbmRlbi4gV2VubiBTaWUgYW4gbWVpbmVyIFNwZW5kZSBpbnRlcmVzc2llcnQg
c2luZCwga29udGFrdGllcmVuIFNpZSBtaWNoIGpldHp0IGbDvHIgd2VpdGVyZSBJbmZvcm1hdGlv
bmVuLgoKRlJBVSBNYXJpYSBFbGlzYWJldGggU2NoYWVmZmxlcgpHZXNjaMOkZnRzZsO8aHJlciBT
Q0hBRUZGTEVSCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
