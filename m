Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C4064FC96
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Dec 2022 23:18:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D68141578;
	Sat, 17 Dec 2022 22:18:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D68141578
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tMNIA4vU7_bk; Sat, 17 Dec 2022 22:18:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29C9741581;
	Sat, 17 Dec 2022 22:18:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29C9741581
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A132F1BF418
 for <devel@linuxdriverproject.org>; Sat, 17 Dec 2022 22:18:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 81ADA41578
 for <devel@linuxdriverproject.org>; Sat, 17 Dec 2022 22:18:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81ADA41578
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id chcJPefNMKcw for <devel@linuxdriverproject.org>;
 Sat, 17 Dec 2022 22:17:59 +0000 (UTC)
X-Greylist: delayed 00:08:19 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8D4A4156E
Received: from mail.satv.tv (mail.satv.tv [45.251.58.122])
 by smtp4.osuosl.org (Postfix) with ESMTP id D8D4A4156E
 for <devel@driverdev.osuosl.org>; Sat, 17 Dec 2022 22:17:58 +0000 (UTC)
Received: from localhost (unknown [127.0.0.1])
 by mail.satv.tv (Postfix) with ESMTP id EA35A76800B1
 for <devel@driverdev.osuosl.org>; Sun, 18 Dec 2022 04:09:29 +0600 (BDT)
X-Virus-Scanned: amavisd-new at mail.satv.tv
Received: from mail.satv.tv ([127.0.0.1])
 by localhost (mail.satv.tv [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rH9cnfBIk4Sn for <devel@driverdev.osuosl.org>;
 Sun, 18 Dec 2022 04:09:29 +0600 (BDT)
Received: from [141.98.10.236] (unknown [141.98.10.236])
 by mail.satv.tv (Postfix) with ESMTPSA id ED850F676120;
 Sat, 20 Aug 2022 08:07:37 +0600 (BDT)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Maria Elisabeth Schaeffler Spende
To: Recipients <support@satv.tv>
From: "Maria Elisabeth" <support@satv.tv>
Date: Fri, 19 Aug 2022 19:07:13 -0700
Message-Id: <20220820020738.ED850F676120@mail.satv.tv>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=satv.tv; h=
 message-id:reply-to:date:date:from:from:to:subject:subject
 :content-description:content-transfer-encoding:mime-version
 :content-type:content-type; s=dkim; t=1671314969; x=1672178969;
 bh=vhSpQMSoqwsQQ2DGR2OAtYGNcqSDhp1Jk9/rMND4l6Q=; b=AymlUrjKGNl3
 0dd3cQreHl6p601eKY8u65Cw0F+zZ5EPfLn8Yb0lHDvFShjv9lt8xHCuZjKo46Rk
 LLKB+DQWkSYXT5+VPrhiq3xxT9UwlZEnECBpXORHxnKtgyENGgvY3xrFe1qvQ55O
 zG1+sxS45s/dLj5s8OEypZmJfMM2PjI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=satv.tv header.i=@satv.tv
 header.a=rsa-sha256 header.s=dkim header.b=AymlUrjK
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
bmVuLiBGcmF1IE1hcmlhIEVsaXNhYmV0aCBTY2hhZWZmbGVyIEdlc2Now6RmdHNmw7xocmVyaW4g
U0NIQUVGRkxFUi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
