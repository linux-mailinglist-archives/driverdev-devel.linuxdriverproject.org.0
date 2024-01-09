Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D23829AE9
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jan 2024 14:08:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12C55614DA;
	Wed, 10 Jan 2024 13:08:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12C55614DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id opJQgDQkvpBp; Wed, 10 Jan 2024 13:08:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E69CF614BB;
	Wed, 10 Jan 2024 13:08:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E69CF614BB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A10021BF359
 for <devel@linuxdriverproject.org>; Wed, 10 Jan 2024 13:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7ADC883339
 for <devel@linuxdriverproject.org>; Wed, 10 Jan 2024 13:07:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7ADC883339
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qt5xnWz8QquA for <devel@linuxdriverproject.org>;
 Wed, 10 Jan 2024 13:07:58 +0000 (UTC)
X-Greylist: delayed 4111 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 10 Jan 2024 13:07:57 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D42A781EC5
Received: from mail.makebiz.pl (mail.makebiz.pl [141.95.160.213])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D42A781EC5
 for <devel@driverdev.osuosl.org>; Wed, 10 Jan 2024 13:07:57 +0000 (UTC)
Received: by mail.makebiz.pl (Postfix, from userid 1002)
 id 80D89A5A8C; Tue,  9 Jan 2024 09:15:38 +0000 (UTC)
Received: by mail.makebiz.pl for <devel@driverdev.osuosl.org>;
 Tue,  9 Jan 2024 09:15:30 GMT
Message-ID: <20240109074500-0.1.ah.lqfr.0.62cqxac7jo@makebiz.pl>
Date: Tue,  9 Jan 2024 09:15:30 GMT
From: "Kamil Wejerowski" <kamil.wejerowski@makebiz.pl>
To: <devel@driverdev.osuosl.org>
Subject: Mobilny handlowiec?
X-Mailer: mail.makebiz.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=makebiz.pl; s=mail; 
 t=1704791739; bh=rzosZF7FWqny0v9UUUVRTSaSsUUA/JEVyw2ViOBy+ug=;
 h=Date:From:To:Subject:From;
 b=w6Fh36Ck5PMJtX3bGqnCvf4yTttd93cMaXbcutqzP+catzGAocVn85qPSn2Vj0ws6
 OFOiQGXte2uRUtMbAlVpXyXCAw+OJXkfdF+1uhI2m+36QqkNrAjUQ+5/183SAEegvd
 SZYtv4y+kyOq+EpClXE3ozLmtBtlSV3OyK3zB78NDB3gz5ciQXoLozlPC4kSkqmjwC
 bmvaWe/wuVNZzfkcvcFoOqa9/1hETk1ZyolRm3DFdE/ZuNvgt2hzw8UB+vfn8Ssx6F
 bIDjH12mVupoQ+nXqUZG+lrCtiOr97A0JaJgnG0RazzXq0PlHEps8jONu8U+HbB0T/
 dD+G834R1yR+g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=makebiz.pl header.i=@makebiz.pl header.a=rsa-sha256 header.s=mail
 header.b=w6Fh36Ck
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

U3phbm93bmkgUGHFhHN0d28sCgpjenkgY2hjaWVsaWJ5IFBhxYRzdHdvIHp3acSZa3N6ecSHIHNw
cnplZGHFvCBiZXogcG90cnplYnkgemF0cnVkbmlhbmlhIGRvZGF0a293eWNoIGhhbmRsb3djw7N3
PwoKU3R3b3J6eWxpxZtteSBhcGxpa2FjasSZIG1vYmlsbsSFIGRvIHphcnrEhWR6YW5pYSBzcHJ6
ZWRhxbzEhSBkbGEgaGFuZGxvd2PDs3cgaSBtYW5hZ2Vyw7N3IHNwcnplZGHFvHksIGt0w7NyYSBh
dXRvbWF0eXp1amUgemFkYW5pYSB3eWtvbnl3YW5lIHByemV6IHplc3DDs8WCIGhhbmRsb3d5LgoK
WiBwb3ppb211IGplZG5lZ28gbmFyesSZZHppYSBwcmFjb3duaWN5IG1hasSFIGRvc3TEmXAgZG8g
d3N6ZWxraWVqIGRva3VtZW50YWNqaSwgc8SFIHcgc3RhbmllIHN6eWJjaWVqIHNrxYJhZGHEhyB6
YW3Ds3dpZW5pYSwga3TDs3JlIHRyYWZpYWrEhSBiZXpwb8WbcmVkbmlvIGRvIHN5c3RlbXUgRVJQ
LCBhIGtpZXJvd25pY3kgbW9uaXRvcm93YcSHIHJlYWxpemFjasSZIGR6aWHFgmHFhC4KClXFvHl0
a293bmljeSBvZG5vdG93dWrEhSBkd3Vrcm90bmllIHdpxJlrc3plIG9icm90eSwgendpxJlrc3pv
bsSFIG8gMzAlIGVmZWt0eXdub8WbxIcgb2ZlcnRvd2FuaWEgaSBza3JhY2FqxIUgamVnbyBjemFz
IHogMjAgZG8gMiBtaW51dC4KCk1vxbxlbXkgcG9yb3ptYXdpYcSHIG8gbW/FvGxpd2/Fm2NpIHd5
a29yenlzdGFuaWEgdGFraWVnbyBuYXJ6xJlkemlhIHcgUGHFhHN0d2EgZmlybWllPwoKClBvemRy
YXdpYW0KS2FtaWwgV2VqZXJvd3NraQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
