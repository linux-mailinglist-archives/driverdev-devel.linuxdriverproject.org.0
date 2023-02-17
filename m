Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 289F569A727
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Feb 2023 09:40:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D625981F5B;
	Fri, 17 Feb 2023 08:39:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D625981F5B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id khzOKhksEwgC; Fri, 17 Feb 2023 08:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEDF381F0C;
	Fri, 17 Feb 2023 08:39:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEDF381F0C
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2944A1BF3C3
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 Feb 2023 08:39:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 096F760BA1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 Feb 2023 08:39:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 096F760BA1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8zvgU1qP_r5T
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 Feb 2023 08:39:54 +0000 (UTC)
X-Greylist: delayed 00:08:53 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E57B660B98
Received: from mail.amblevebiz.com (mail.amblevebiz.com [80.211.239.97])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E57B660B98
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 Feb 2023 08:39:53 +0000 (UTC)
Received: by mail.amblevebiz.com (Postfix, from userid 1002)
 id CAA6982284; Fri, 17 Feb 2023 09:30:51 +0100 (CET)
Received: by mail.amblevebiz.com for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 Feb 2023 08:30:48 GMT
Message-ID: <20230217084500-0.1.7.2w8.0.pka7ghplaa@amblevebiz.com>
Date: Fri, 17 Feb 2023 08:30:48 GMT
From: =?UTF-8?Q?"Luk=C3=A1=C5=A1_Horv=C3=A1th"?= <lukas.horvath@amblevebiz.com>
To: <driverdev-devel@linuxdriverproject.org>
Subject: =?UTF-8?Q?Technick=C3=BD_audit_podlah?=
X-Mailer: mail.amblevebiz.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=amblevebiz.com; s=mail; t=1676622657;
 bh=mG5KF9rXIT2hCcIXZaMY449X9Ndwb1czFhgZLlqDg7A=;
 h=Date:From:To:Subject:From;
 b=YpgMxCoNlIPzOQaoWkZ77dRuT6knDRCoIRHk8MGbwno6dGm95voYwTu5jHpYjHTxV
 D/OZNRUfkeXnaM3nPCCqBigJ0oGTvrkeqy+rd6T7gChV+I9DWQK3G5kAtgRq6uC7iq
 +f4zvOaXUtUO1JclC4hBzgYBEmL38xqK80FXA+HeyM1Tv6T2dD2VWjqdT2RwEE+qvu
 eCAw6Gq+pVWRYbuLSSEGZ+depEHkXaDGZ3nqjDWomT8BLf8H7yRgJcW7w8uo6nYpd7
 eRHVWxq1dPtNIDEvB+Uo9yXuyF/KhWl8VoSNsUqAoFxSLhE+EDhhNZkev6LMSodpqT
 tOKjxxIch+uzQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=amblevebiz.com header.i=@amblevebiz.com
 header.a=rsa-sha256 header.s=mail header.b=YpgMxCoN
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RG9icsOpIHLDoW5vLAoKdXZhxb51amV0ZSBvIGJlemVzcMOhcm92w6kgcG9kbGF6ZSBwcm8gdsO9
cm9ibsOtIHByb3Zvej8KCkpha28gc3bEm3RvdsO9IGzDrWRyIHZlIHbDvXJvYsSbIGEgcG9rbMOh
ZGNlIHBvZGxhaCDFmWXFocOtbWUgcHJvYmzDqW15IHZ5cGzDvXZhasOtY8OtIHogdmxpdnUgY2hl
bWlja8O9Y2ggc2xvdcSNZW5pbiwgb3TEm3J1LCBuw6FyYXrFrywgdmxoa29zdGkgbmVibyBuw6Fo
bMO9Y2ggem3Em24gdGVwbG90IC0gbmHFoWUgcG9kbGFob3bDqSBzeXN0w6lteSBqc291IHDFmWl6
cMWvc29iZW55IG5lanTEm8W+xaHDrW0gcG9kbcOtbmvDoW0gcHJvc3TFmWVkw60uCgpHYXJhbnR1
amVtZSB2w6FtIMWZZcWhZW7DrSwga3RlcsOhIGpzb3UgxaFldHJuw6EgayDFvml2b3Ruw61tdSBw
cm9zdMWZZWTDrSwgb2RvbG7DoSBhIHNuYWRubyBzZSDEjWlzdMOtLCBoeWdpZW5pY2vDoSwgcHJv
dGlza2x1em92w6EgYSBiZXpwZcSNbsOhIHBybyB6YW3Em3N0bmFuY2UuCgpQb3NreXR1amVtZSBr
csOhdGtvdSBkb2J1IGluc3RhbGFjZSBhIG5lcMWZZXRyxb5pdMO9IHByb3ZveiBpIG8gdsOta2Vu
ZGVjaCBhIHN2w6F0Y8OtY2gsIMSNw61txb4gZWxpbWludWplbWUgcml6aWtvIHByb3N0b2rFry4K
Ck1vaHUgVsOhbSB6ZGFybWEgbmFiw61kbm91dCB0ZWNobmlja8O9IGF1ZGl0IHBvZGxhaCBzIGtv
bXBsZXhuw61tIHJvemJvcmVtIHBvZGtsYWR1LgoKTcWvxb5lbWUgcHJvIHbDoXMgbWx1dml0IG8g
xZllxaFlbsOtY2g/CgoKTHVrw6HFoSBIb3J2w6F0aApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
