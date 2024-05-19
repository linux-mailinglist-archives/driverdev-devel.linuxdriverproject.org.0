Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E198C9621
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2024 22:21:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3474F81E61;
	Sun, 19 May 2024 20:21:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TjRQyEmwVwFp; Sun, 19 May 2024 20:21:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6ACBC81E67
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6ACBC81E67;
	Sun, 19 May 2024 20:21:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 26C631C420A
 for <devel@linuxdriverproject.org>; Sun, 19 May 2024 20:21:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 13245605ED
 for <devel@linuxdriverproject.org>; Sun, 19 May 2024 20:21:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FD9ZJwDuXU8w for <devel@linuxdriverproject.org>;
 Sun, 19 May 2024 20:21:01 +0000 (UTC)
X-Greylist: delayed 603 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 19 May 2024 20:20:59 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7780B605E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7780B605E6
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=137.220.233.95;
 helo=mail0.fuo457.com; envelope-from=no-reply@fuo457.com; receiver=<UNKNOWN> 
Received: from mail0.fuo457.com (unknown [137.220.233.95])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7780B605E6
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2024 20:20:59 +0000 (UTC)
From: =?utf-8?B?6Ieq5YuV44Oh44O844Or6YCa55+l?= <no-reply@fuo457.com>
To: =?utf-8?B?ZGV2ZWxAZHJpdmVyZGV2Lm9zdW9zbC5vcmc=?=
 <devel@driverdev.osuosl.org>
Subject: =?utf-8?B?44CQIOOCpOOCquODs+OCq+ODvOODiSDjgJHmsbrmuIjlrow=?=
 =?utf-8?B?5LqG44Gu44GK55+l44KJ44Gb?=
Date: Mon, 20 May 2024 04:10:51 +0800
Message-ID: <COCGLGFDAPJKNGPGNDICEJGBHJML.no-reply@fuo457.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=fuo457.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@fuo457.com;
 bh=EjfiNTS5IDyHcoa91UOX1wbC8TE7HFZ27BX1/fxTu+U=;
 b=VqFGf7thSH2FUT8z+qLmpBWjQykAQ6Rd9f/NKjo8c9QqHbHg4n12P8CqeOGfct5Kh4vg6D/toO99
 A3oHzVgym57sopOjgtZcpoR/qYIt5jg1EDhzG3QhbXzLzFzX9g9vbc0qMDIrD3qbhSW1DzSPGkPM
 Z88aUUPMthPDu5tBfQ4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=fuo457.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fuo457.com header.i=no-reply@fuo457.com
 header.a=rsa-sha256 header.s=default header.b=VqFGf7th
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

44Kk44Kq44Oz44Kr44O844OJ44Kv44Op44K344OD44Kv4oC75Lya5ZOhIGRldmVsQGRyaXZlcmRl
di5vc3Vvc2wub3JnDQoNCuOBk+OBruOBn+OBs+OBr+OCpOOCquODs+OCq+ODvOODieOCkuOBlOWI
qeeUqOOBhOOBn+OBoOOBjeOAgeiqoOOBq+OBguOCiuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBmeOA
gg0K5pio5pel44CB44GK5a6i5qeY44Gu44Kv44Os44K444OD44OI44Kr44O844OJ44Gn5raI6LK7
5pSv5Ye644GM55m655Sf44GX44Gf44GT44Go44KS44GK55+l44KJ44Gb44GE44Gf44GX44G+44GZ
44CCDQrjgZ3jga7mlK/miZXjgYTjga7oqbPntLDjga/mrKHjga7jgajjgYrjgorjgafjgZnjgIIN
CuOBlCDliKkg55SoIOaXpSDmmYIg77yaMjAyNOW5tDA15pyIMTnml6UgMjE6NDkgUE0NCuOBlCDl
iKkg55SoIOWgtCDmiYAg77ya5Y2D5Luj55Sw5LiA44OE5qmLIDEg5LiB55uu5bqXICjjgrvjg5bj
g7PjgqTjg6zjg5bjg7MpDQrjgZQg5YipIOeUqCDph5Eg6aGNIO+8mjk1MzDlhoYNCg0K44Kr44O8
44OJ44KS5L2/55So44GX44Gf6Kaa44GI44GM44Gq44GE5aC05ZCI44Gv44CB5Lul5LiL44Gu44Oq
44Oz44Kv44KS44Kv44Oq44OD44Kv44GX44Gm44Kv44Os44K444OD44OIIOOCq+ODvOODieaUr+aJ
leOBhOOBruaJv+iqjeOCkuOCreODo+ODs+OCu+ODq+OBl+OBpuOBj+OBoOOBleOBhOOAgg0KaHR0
cHM6Ly9tZ2Zmb3J1bS5jb20NCg0K44Kk44Kq44OzTkVU44Gr44GU55m76Yyy44GE44Gf44Gg44GE
44Gm44GE44KL44Oh44O844Or44Ki44OJ44Os44K544G444GK55+l44KJ44Gb44GZ44KL44K144O8
44OT44K544Gn44GZ44CCDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K4pag
IOeZuiDooYwg6ICFIOKWoA0K5qCq5byP5Lya56S+44Kk44Kq44Oz6YqA6KGMDQrilqAg5qWt5YuZ
5Y+X6KiX5Lya56S+IOKWoA0K44Kk44Kq44Oz44OV44Kj44OK44Oz44K344Oj44Or44K144O844OT
44K55qCq5byP5Lya56S+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
