Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B32823770
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jan 2024 23:05:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65F6682664;
	Wed,  3 Jan 2024 22:05:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65F6682664
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lrWcU7B-Ofrb; Wed,  3 Jan 2024 22:05:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4886082438;
	Wed,  3 Jan 2024 22:05:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4886082438
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2C62D1BF48B
 for <devel@linuxdriverproject.org>; Wed,  3 Jan 2024 22:05:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 05AA560F9D
 for <devel@linuxdriverproject.org>; Wed,  3 Jan 2024 22:05:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05AA560F9D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DJI9x45dT6Gb for <devel@linuxdriverproject.org>;
 Wed,  3 Jan 2024 22:05:30 +0000 (UTC)
X-Greylist: delayed 602 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 03 Jan 2024 22:05:29 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DF6C60D90
Received: from mail0.mianfenjisb.com (unknown [45.67.200.157])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9DF6C60D90
 for <devel@driverdev.osuosl.org>; Wed,  3 Jan 2024 22:05:29 +0000 (UTC)
Message-ID: <e308e1b70ee38e4c32b89535288b5b03@myna.go.jp>
From: =?utf-8?B?RSBUIEMg5Yip55So54Wn5Lya44K144O844OT44K5?= <info@myna.go.jp>
To: <devel@driverdev.osuosl.org>
Subject: =?utf-8?B?RVRD44K144O844OT44K544GL44KJ44Gu6YeN6KaB44Gq44GK?=
 =?utf-8?B?55+l44KJ44Gb77yI5b+F44Ga44GU56K66KqN44GP44Gg44GV44GE77yJ?=
Date: Wed, 03 Jan 2024 21:55:24 +0000
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=mianfenjisb.com; 
 h=Message-ID:Sender:From:To:Subject:Date:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=contact@mianfenjisb.com;
 bh=NDSaxYZYqXRE92VcY+otBhKD8s7bIF4QLdHcccI5xT0=;
 b=rLrlPhrM60V04igId5iH+z25KVZ8jwlkdTScSfkNpureb5gCkiJEwFgX9sbf7NbHt9OcxnvDX/6G
 3Hcha99r/LKxpJs8q4MHsjZw8/TawFwxzwaljZ+5pPhePoas8J+8PTzsrQEwyyjk0ky4RjS70/4r
 fucdg0SnW3uXn//0ROc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=mianfenjisb.com
 header.i=contact@mianfenjisb.com header.a=rsa-sha256 header.s=default
 header.b=rLrlPhrM
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

5bmz57Sg44KI44KK44CBRSBUIEMg5Yip55So54Wn5Lya44K144O844OT44K544KS44GU5Yip55So
44GE44Gf44Gg44GN44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQrml6XmnKzpq5jp
gJ/pgZPot6/moKrlvI/kvJrnpL7jgojjgorph43opoHjgarjgYrnn6XjgonjgZvjgafjgZnjgIIN
CuOBiuWuouanmOOBruODpuODvOOCtuODvElE44Gv44CMIGRldmVsQGRyaXZlcmRldi5vc3Vvc2wu
b3JnIOOAjeOBp+OBlOOBluOBhOOBvuOBmeOAgg0KRVRD5Yip55So54Wn5Lya44K144O844OT44K5
77yI55m76Yyy5Z6L77yJ44Gn44Gv44CB44GK5a6i44GV44G+44Gu44Ki44Kv44OG44Kj44OT44OG
44Kj44Go44K744Kt44Ol44Oq44OG44Kj44KS56K65L+d44GZ44KL44Gf44KB44CBNDUw5pel5Lul
5YaF44Gr44Ot44Kw44Kk44Oz44GM44Gq44GE5aC05ZCI44CB44Om44O844K244O8SUTjgpLoh6rl
i5XnmoTjgavjg63jgrDjgqLjgqbjg4jjgZnjgovku5XntYTjgb/jgpLoqK3jgZHjgabjgYTjgb7j
gZnjgIINCuino+e0hOS6iOWumuaXpeOBr+OAjDIwMjTlubQx5pyINOaXpeOAjeOBqOOBquOBo+OB
puOBiuOCiuOBvuOBmeOBruOBp+OAgeOBiuaJi+aVsOOBp+OBmeOBjOOAgeODreOCsOOCpOODs+OB
qOWAi+S6uuaDheWgseOBruabtOaWsOOCkuOBiumhmOOBhOeUs+OBl+S4iuOBkuOBvuOBmeOAgg0K
44Om44O844K244O8SUQgICBkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZw0K6Kej57SE5LqI5a6a
5pelMjAyNOW5tDHmnIg05pelIA0K4pa86Kej57SE5LqI5a6a5pel44G+44Gn44Gr5LiL6KiY44Gu
VVJM44GL44KJ5pys44K144O844OT44K544Gr44Ot44Kw44Kk44Oz44GX44CB5YCL5Lq65oOF5aCx
44Gu5pu05paw44KS44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCDQoNCmh0dHBzOi8vaGVkYmVy
Z2FxdWF0aWNhZGRpY3Rpb24uY29tL2V0Yy5waHA/bm92OD0wDQoNCuODreOCsOOCpOODs+W+jOOB
q+OAgeOBiuWuouanmOOBrueZu+mMsuaDheWgseOCkuWGjeeiuuiqjeOBl+OAgeW/heimgeOBquaD
heWgseOCkuacgOaWsOOBrueKtuaFi+OBq+abtOaWsOOBl+OBpuOBj+OBoOOBleOBhOOAguino+e0
hOS6iOWumuaXpeOBvuOBp+OBq+ODreOCsOOCpOODs+OBhOOBn+OBoOOBkeOCjOOBsOOAgeeZu+mM
suOBr+e2mee2muOBleOCjOOBvuOBmeOBruOBp+OAgeOBlOazqOaEj+OBj+OBoOOBleOBhOOAgg0K
5LiH44GM5LiA44CB6Kej57SE44GM6Ieq5YuV55qE44Gr6KGM44KP44KM44Gf5aC05ZCI44Gn44GC
44Gj44Gm44KC44CB5YaN5bqm55m76Yyy44GE44Gf44Gg44GR44KM44GwRVRD5Yip55So54Wn5Lya
44K144O844OT44K544KS5byV44GN57aa44GN44GU5Yip55So44GE44Gf44Gg44GR44G+44GZ44Gu
44Gn44CB44GU5a6J5b+D44GP44Gg44GV44GE44CCDQrjgYrlrqLmp5jjgavjga/jgZTov7fmg5Hj
gIHjgZTlv4PphY3jgpLjgYrmjpvjgZHjgZfjgIHoqqDjgavnlLPjgZfoqLPjgZTjgZbjgYTjgb7j
gZvjgpPjgIINCuKWoEVUQ+WIqeeUqOeFp+S8muOCteODvOODk+OCueS6i+WLmeWxgA0KIOW5tOS4
reeEoeS8kSA577yaMDDvvZ4xOO+8mjAwDQog6Zu76Kmx55Wq5Y+3IDA1NzAtMDAxMDY5DQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
