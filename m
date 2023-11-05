Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C807E1732
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Nov 2023 23:00:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10F2C40184;
	Sun,  5 Nov 2023 22:00:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10F2C40184
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Q9kVhZWifhU; Sun,  5 Nov 2023 22:00:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E9D340586;
	Sun,  5 Nov 2023 22:00:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E9D340586
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EBEE21BF869
 for <devel@linuxdriverproject.org>; Sun,  5 Nov 2023 22:00:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C481461059
 for <devel@linuxdriverproject.org>; Sun,  5 Nov 2023 22:00:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C481461059
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5RqaKxx3gHrT for <devel@linuxdriverproject.org>;
 Sun,  5 Nov 2023 22:00:33 +0000 (UTC)
X-Greylist: delayed 5240 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 05 Nov 2023 22:00:33 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 223EC61058
Received: from SMTP-HCRC-200.brggroup.vn (unknown [42.112.212.144])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 223EC61058
 for <devel@driverdev.osuosl.org>; Sun,  5 Nov 2023 22:00:32 +0000 (UTC)
Received: from SMTP-HCRC-200.brggroup.vn (localhost [127.0.0.1])
 by SMTP-HCRC-200.brggroup.vn (SMTP-CTTV) with ESMTP id A586618EFD;
 Mon,  6 Nov 2023 01:57:33 +0700 (+07)
Received: from zimbra.hcrc.vn (unknown [192.168.200.66])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by SMTP-HCRC-200.brggroup.vn (SMTP-CTTV) with ESMTPS id 9D3341909F;
 Mon,  6 Nov 2023 01:57:33 +0700 (+07)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.hcrc.vn (Postfix) with ESMTP id 364511B8203A;
 Mon,  6 Nov 2023 01:57:35 +0700 (+07)
Received: from zimbra.hcrc.vn ([127.0.0.1])
 by localhost (zimbra.hcrc.vn [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Uq5rommShO1a; Mon,  6 Nov 2023 01:57:35 +0700 (+07)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.hcrc.vn (Postfix) with ESMTP id 050B21B8253E;
 Mon,  6 Nov 2023 01:57:35 +0700 (+07)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra.hcrc.vn 050B21B8253E
X-Virus-Scanned: amavisd-new at hcrc.vn
Received: from zimbra.hcrc.vn ([127.0.0.1])
 by localhost (zimbra.hcrc.vn [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id c6_6wKo2WC2V; Mon,  6 Nov 2023 01:57:34 +0700 (+07)
Received: from [192.168.1.152] (unknown [51.179.100.52])
 by zimbra.hcrc.vn (Postfix) with ESMTPSA id BB4D31B8203A;
 Mon,  6 Nov 2023 01:57:28 +0700 (+07)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?b?4oKsIDEwMC4wMDAuMDAwPw==?=
To: Recipients <ch.31hamnghi@hcrc.vn>
From: ch.31hamnghi@hcrc.vn
Date: Sun, 05 Nov 2023 19:57:18 +0100
Message-Id: <20231105185728.BB4D31B8203A@zimbra.hcrc.vn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hcrc.vn; 
 s=64D43D38-C7D6-11ED-8EFE-0027945F1BFA; t=1699210655;
 bh=WOZURJ77pkiMUL2pPLC14ifVPRvyTQIBEQmxuN1ezAA=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=e3sM4jQ3SHlS5unL4YpNQ1ThweCNn2sIhiiMoGrLzhoT97RtUYpQWkbqyxiEYSmLq
 xYMa6zYYfFOOs6JFIbTJXrFCzu+004njRhUZ8jLt75d8FOck1AjrUXM2hRbnT+i8k9
 FiKPNQy6pDi1QQTJugMzNRKxWGzC1tR6h89kMulPt3ZiSmY5n0wm9lSJK8wDl4U85A
 fLMsW/vxmUfznL4fH5+eF01NedPC6cERBJ/3BQEN2LoRj3fwXgtJuBybbVTlw6/KFz
 5hIwS8M8cVV+3Q++WQ2hUZrzz2+g6Z2Z90dG4nUnVLx+YwBvhYrxa/uc5slYP2pN6L
 /Elk3/mfY/0Nw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=hcrc.vn header.i=@hcrc.vn
 header.a=rsa-sha256 header.s=64D43D38-C7D6-11ED-8EFE-0027945F1BFA
 header.b=e3sM4jQ3
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
ZXQgdnJpZW5kZWxpamtlIGdyb2V0ZW4KbWV2cm91dyBKb2FubmEgTGl1CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
