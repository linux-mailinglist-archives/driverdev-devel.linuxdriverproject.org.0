Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1ADA91EA56
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2024 23:29:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01F224028D;
	Mon,  1 Jul 2024 21:29:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HQb1xKiCiu_y; Mon,  1 Jul 2024 21:29:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE5EA401B7
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE5EA401B7;
	Mon,  1 Jul 2024 21:29:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A2401BF329
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2024 21:29:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16D8B4061E
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2024 21:29:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pXu3dlWFO5UT for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2024 21:29:16 +0000 (UTC)
X-Greylist: delayed 416 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 01 Jul 2024 21:29:15 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 554AD405A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 554AD405A7
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=154.38.104.70;
 helo=runbovip.cn; envelope-from=kefu@runbovip.cn; receiver=<UNKNOWN> 
Received: from runbovip.cn (unknown [154.38.104.70])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 554AD405A7
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2024 21:29:15 +0000 (UTC)
Received: from v-prime.info (c-73-67-253-89.hsd1.or.comcast.net [73.67.253.89])
 by runbovip.cn (Postfix) with ESMTPA id 847E522191
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2024 05:22:18 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 runbovip.cn 847E522191
Message-ID: <2b7ea50903cbef413980c8df0b8c9e33@runbovip.cn>
From: =?utf-8?B?6Ieq5YuV44Oh44O844Or6YCa55+l?= <kefu@runbovip.cn>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: =?utf-8?B?44CQIOOCiuOBneOBqumKgOihjCDjgJHlj5blvJXjgpLopo8=?=
 =?utf-8?B?5Yi244GE44Gf44GX44G+44GX44Gf?=
Date: Mon, 01 Jul 2024 21:22:17 +0000
X-Priority: 3
X-Mailer: xsendEmail-1.535
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=runbovip.cn; s=default; t=1719868938;
 bh=j8/HijMgLl7Nj3T7Ncve5QtIGn1diYUVmMX7pFnCcyQ=;
 h=From:To:Subject:Date:From;
 b=fyF2O0mKDNXxBQ3OYMLeYYmNeWhbnI1luE4HbwoyohwUIcwZGFbCvPmYyGH35nbq8
 SK5qdwG8GyA++v+J436/9wWjHMeFzYtWm0IAF7zb9ePyzq3HQeONtBGNfCeIOQZNLm
 dgew/zrbJwfH1deXEb23z7MFf5xj+9qENrw084Fo=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=runbovip.cn
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=runbovip.cn header.i=@runbovip.cn header.a=rsa-sha256
 header.s=default header.b=fyF2O0mK
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

44GE44Gk44KC44CQ44KK44Gd44Gq6YqA6KGM44CR44KS44GU5Yip55So44GE44Gf44Gg44GN44CB
44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQoNCuOBiuWuouOBleOBvuOBruOBiuWP
luW8leOCkuimj+WItuOBleOBm+OBpuOBhOOBn+OBoOOBjeOBvuOBl+OBn+OBruOBp+OAgeOBiuef
peOCieOBm+OBl+OBvuOBmeOAgg0K6KaP5Yi25YaF5a6544Gv5LiL6KiY44KS44GU56K66KqN44GP
44Gg44GV44GE44CCDQoNCuWPluW8leimj+WItuaXpeaZgu+8mjIwMjQvNy8wMg0KDQrlj5blvJXo
po/liLblhoXlrrkNCuODu+WHuumHkeimj+WItg0K44O75YWl6YeR6KaP5Yi2DQoNCuimj+WItuin
o+mZpOOBmeOCi+OBq+OBr+S4i+iomOOBuOOCouOCr+OCu+OCueOBl+OAgeOBiuaJi+e2muOBjeOB
l+OBpuOBj+OBoOOBleOBhOOAgg0KaHR0cHM6Ly9tdG90ZW0uY29tDQoNCuKAu+WPluW8leWItumZ
kOOBq+OBpOOBhOOBpiAyMDI0LzcvMDLjgb7jgafjgavjgZTlm57nrZTjgYTjgZ/jgaDjgZHjgarj
gYTloLTlkIjjgIENCuOBiuWuouanmOOBruOBlOWbnuetlOOBq+iRl+OBl+OBhOS4jei2s+OBjOOB
guOCi+WgtOWQiOOAgSDjgoLjgZfjgY/jga8NCuOBlOWbnuetlOOBi+OCieW9k+ekvuimj+e0hOes
rO+8mOadoe+8iOemgeatouS6i+mghe+8ieOBq+aKteinpuOBmeOCi+OBqOWIpOaWreOBl+OBn+Wg
tOWQiOOAgQ0K44KE44KA44KS5b6X44Ga44CB44GK5a6i5qeY44Gu5Y+j5bqn44KS6Kej57SE44GV
44Gb44Gm44GE44Gf44Gg44GP44GT44Go44GM44GU44GW44GE44G+44GZ44Gu44Gn44CB44GC44KJ
44GL44GY44KB44GU5LqG5om/44GP44Gg44GV44GE44CCDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tDQrmoKrlvI/kvJrnpL7jgorjgZ3jgarpioDooYwNCumHkeiejeapn+mWouOCs+ODvOODiSA6
IDAwMTANCueZu+mMsumHkeiejeapn+mWoiA6IOi/keeVv+iyoeWLmeWxgOmVtyjnmbvph5Ep56ys
M+WPtw0K5Yqg5YWl5Y2U5LyaIDog5pel5pys6Ki85Yi45qWt5Y2U5LyaIOS4gOiIrOekvuWbo+az
leS6uumHkeiejeWFiOeJqeWPluW8lealreWNlOS8mg0K5LiA6Iis56S+5Zuj5rOV5Lq65pel5pys
44Kv44Os44K444OD44OI5Y2U5LyaIOS4gOiIrOekvuWbo+azleS6uuaXpeacrOaKleizh+mhp+WV
j+alreWNlOS8mg0KQ29weXJpZ2h0IChjKSBSZXNvbmEgQmFuaywgTGltaXRlZCBBbGwgUmlnaHRz
IFJlc2VydmVkLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
