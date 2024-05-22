Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EC48CC4EF
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2024 18:35:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95B35606EA;
	Wed, 22 May 2024 16:35:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id js736bIcsiKi; Wed, 22 May 2024 16:35:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD36A60763
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD36A60763;
	Wed, 22 May 2024 16:35:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A069A1C5D74
 for <devel@linuxdriverproject.org>; Wed, 22 May 2024 16:35:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8C92260708
 for <devel@linuxdriverproject.org>; Wed, 22 May 2024 16:35:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xti9oCm2_Kmg for <devel@linuxdriverproject.org>;
 Wed, 22 May 2024 16:35:38 +0000 (UTC)
X-Greylist: delayed 605 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 22 May 2024 16:35:37 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ED006606EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED006606EA
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=137.220.233.98;
 helo=mail0.zwe484.com; envelope-from=no-reply@zwe484.com; receiver=<UNKNOWN> 
Received: from mail0.zwe484.com (unknown [137.220.233.98])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED006606EA
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2024 16:35:36 +0000 (UTC)
From: =?utf-8?B?U0FJU09O?= <no-reply@zwe484.com>
To: =?utf-8?B?ZGV2ZWw=?= <devel@driverdev.osuosl.org>
Subject: =?utf-8?B?44CQU0FJU09O44CR5YWl6YeR44Gu44GU6YCj57Wh77yI44Kr?=
 =?utf-8?B?44O844OJ5oOF5aCx77yJ?=
Date: Thu, 23 May 2024 00:25:27 +0800
Message-ID: <NACHOIOCJKIFPICKCLMKENJHHPFA.no-reply@zwe484.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=zwe484.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@zwe484.com;
 bh=RcUPutadiS+6hteC9o31cRmNPF1Auc4eD3LT8PHVb2k=;
 b=UvvsHlY8LevIdQ2SX1sVKlWMaOR8ECA7mYPOdYU9TxVQqxpE5fXboBwbHZScQLRnfRa6vrW7RV8t
 tSPXItRb6iev4iqhY3mSyTWnm8d9I6PV8a6IgiFjq9Eweyt0iwUrsIQ3OhYlzsNtqbmtrLK3p1ry
 ykjcSZKswuKljMlc688=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=zwe484.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zwe484.com header.i=no-reply@zwe484.com
 header.a=rsa-sha256 header.s=default header.b=UvvsHlY8
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

44K744K+44Oz44Kr44O844OJ44KS44GU5Yip55So44Gu44GK5a6i5qeY44G4DQoNCuOBhOOBpOOC
guOCu+OCvuODs+OCq+ODvOODieOCkuOBlOWIqeeUqOOBhOOBn+OBoOOBjeOAgeiqoOOBq+OBguOC
iuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBmeOAgg0K44GK5a6i44GV44G+44Gu5Y+j5bqn44G45YWl
6YeR44GM44GU44GW44GE44G+44GX44Gf44Gu44Gn44CB44GK55+l44KJ44Gb44GE44Gf44GX44G+
44GZ44CCDQoNCuWFpemHkeaXpeaZgu+8mjIwMjTlubQwNeaciDIy5pelIDIx5pmCMTjliIYNCuWF
pemHkemHkemhje+8mjM5LDgwMOWGhg0K5Y+W5omx55Wq5Y+377yaTjAwMjAyNDA1MjIyMTE4MTgw
DQoNCjI0IOaZgumWk+S7peWGheOBq+izh+mHkeOBruWPl+mgmOOBjOeiuuiqjeOBp+OBjeOBquOB
hOWgtOWQiOOBr+OAgeizh+mHkeOBjOi/lOmChOOBleOCjOOCi+WgtOWQiOOBjOOBguOCiuOBvuOB
meOBruOBp+OAgeS7peS4i+OBruODquODs+OCr+OCkuOCr+ODquODg+OCr+OBl+OBpuizh+mHkeOB
ruips+e0sOOCkuihqOekuuOBl+OAgeizh+mHkeOBruWPl+mgmOOCkueiuuiqjeOBl+OBpuOBj+OB
oOOBleOBhOOAgg0KaHR0cHM6Ly93ZWlxaXllaGFvLmNvbQ0KDQroqqDjgavli53miYvjgarjgYzj
gonmnKzjg6Hjg7zjg6vjga/nmbrkv6HlsILnlKjjgqLjg4njg6zjgrnjgojjgorphY3kv6HjgZfj
gabjgYrjgorjgb7jgZnjgIINCuacrOODoeODvOODq+OBq+OBlOi/lOS/oeOBhOOBn+OBoOOBjeOB
vuOBl+OBpuOCguOBiuetlOOBiOOBmeOCi+OBk+OBqOOBjOOBp+OBjeOBvuOBm+OCk+OBruOBp+OB
lOS6huaJv+OBj+OBoOOBleOBhOOAgg0KDQrilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIENCuKW
oOmFjeS/oeWFg+KWoA0K44CSMTcwLTYwNzMNCuagquW8j+S8muekvuOCr+ODrOODh+OCo+OCu+OC
vuODs++8iOiLseaWh+ekvuWQjSBDcmVkaXQgU2Fpc29uIENvLixMdGQu77yJDQrmnbHkuqzpg73o
sYrls7bljLrmnbHmsaDoooszLTEtMSDjgrXjg7Pjgrfjg6PjgqTjg7M2MOODuzUyRg0K4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSBDQpDb3B5cmlnaHQoQykgQ3JlZGl0IFNhaXNvbiBKYXBhbiBD
by4sIEx0ZC4gQWxsIFJpZ2h0cyBSZXNlcnZlZC4NCueEoeaWrei7oui8ieOBiuOCiOOBs+WGjemF
jeW4g+OCkuemgeOBmOOBvuOBmeOAggpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
