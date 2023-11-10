Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0197E8981
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Nov 2023 07:23:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5FA383B8B;
	Sat, 11 Nov 2023 06:23:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5FA383B8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qnwHRjXDPD63; Sat, 11 Nov 2023 06:23:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4FF0183B61;
	Sat, 11 Nov 2023 06:23:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FF0183B61
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 798001BF286
 for <devel@linuxdriverproject.org>; Sat, 11 Nov 2023 06:23:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F9C5400F2
 for <devel@linuxdriverproject.org>; Sat, 11 Nov 2023 06:23:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F9C5400F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u9uSNF28p30b for <devel@linuxdriverproject.org>;
 Sat, 11 Nov 2023 06:23:17 +0000 (UTC)
Received: from mail.maprial.com (mail.maprial.com [190.181.35.27])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 26B60400D6
 for <devel@driverdev.osuosl.org>; Sat, 11 Nov 2023 06:23:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26B60400D6
Received: from localhost (localhost [127.0.0.1])
 by mail.maprial.com (Postfix) with ESMTP id 393D07624823;
 Fri, 10 Nov 2023 21:48:24 -0400 (-04)
Received: from mail.maprial.com ([127.0.0.1])
 by localhost (mail.maprial.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 6cydBBFTV4b4; Fri, 10 Nov 2023 21:48:23 -0400 (-04)
Received: from localhost (localhost [127.0.0.1])
 by mail.maprial.com (Postfix) with ESMTP id 5877E8148A85;
 Fri, 10 Nov 2023 17:53:17 -0400 (-04)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.maprial.com 5877E8148A85
X-Virus-Scanned: amavisd-new at mail.maprial.com
Received: from mail.maprial.com ([127.0.0.1])
 by localhost (mail.maprial.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 1DkRa1pfOHt4; Fri, 10 Nov 2023 17:53:17 -0400 (-04)
Received: from [192.168.1.152] (unknown [51.179.104.230])
 by mail.maprial.com (Postfix) with ESMTPSA id 289B37810B76;
 Fri, 10 Nov 2023 17:03:44 -0400 (-04)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?b?4oKsIDEwMC4wMDAuMDAwPw==?=
To: Recipients <gvalencia@maprial.com>
From: gvalencia@maprial.com
Date: Fri, 10 Nov 2023 22:03:36 +0100
Message-Id: <20231110210345.289B37810B76@mail.maprial.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=maprial.com; 
 s=8A254412-65B9-11ED-A564-8B9C10001A2B; t=1699653197;
 bh=WOZURJ77pkiMUL2pPLC14ifVPRvyTQIBEQmxuN1ezAA=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=D59T4y/BbpU3wRv+SFnnitJ/jQT27LVABdB7UwNZdlvOIYvbZP12il4y6bwMnaOeG
 QuCWji4p5bNolFFfXmy9Gn0wJJKNaxBAY/deIL74Iq9KeaJ4tAjScLrhqqkYFIcjIr
 BCBKJpUh78gWx4GSH2flh3p50hg64vbr5UWgfEus=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=fail reason="signature verification failed" (1024-bit key)
 header.d=maprial.com header.i=@maprial.com header.a=rsa-sha256
 header.s=8A254412-65B9-11ED-A564-8B9C10001A2B header.b=D59T4y/B
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
Reply-To: joliushk@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R29lZGVkYWcsCklrIGJlbiBtZXZyb3V3IEpvYW5uYSBMaXUgZW4gZWVuIG1lZGV3ZXJrZXIgdmFu
IENpdGkgQmFuayBIb25nIEtvbmcuCkthbiBpayDigqwgMTAwLjAwMC4wMDAgYWFuIHUgb3Zlcm1h
a2VuPyBLYW4gaWsgamUgdmVydHJvdXdlbgoKCklrIHdhY2h0IG9wIGp1bGxpZSByZWFjdGllcwpN
ZXQgdnJpZW5kZWxpamtlIGdyb2V0ZW4KbWV2cm91dyBKb2FubmEgTGl1Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
