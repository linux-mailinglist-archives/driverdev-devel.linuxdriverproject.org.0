Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0248CA1F2
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2024 20:23:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB6AB4014E;
	Mon, 20 May 2024 18:23:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pq3k_qURS86N; Mon, 20 May 2024 18:23:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACB794017F
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACB794017F;
	Mon, 20 May 2024 18:23:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 813381BF3BC
 for <devel@linuxdriverproject.org>; Mon, 20 May 2024 18:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7ABD940149
 for <devel@linuxdriverproject.org>; Mon, 20 May 2024 18:23:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EiYXa4do9WMn for <devel@linuxdriverproject.org>;
 Mon, 20 May 2024 18:23:27 +0000 (UTC)
X-Greylist: delayed 604 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 20 May 2024 18:23:24 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A16334004E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A16334004E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=137.220.233.92;
 helo=mail0.gey970.com; envelope-from=no-reply@gey970.com; receiver=<UNKNOWN> 
Received: from mail0.gey970.com (unknown [137.220.233.92])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A16334004E
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2024 18:23:24 +0000 (UTC)
From: =?utf-8?B?6Ieq5YuV44Oh44O844Or6YCa55+l?= <no-reply@gey970.com>
To: =?utf-8?B?ZGV2ZWxAZHJpdmVyZGV2Lm9zdW9zbC5vcmc=?=
 <devel@driverdev.osuosl.org>
Subject: =?utf-8?B?44CQIOOCpOOCquODs+OCq+ODvOODiSDjgJHmsbrmuIjlrow=?=
 =?utf-8?B?5LqG44Gu44GK55+l44KJ44Gb?=
Date: Tue, 21 May 2024 02:13:15 +0800
Message-ID: <BNOBLEPFLEJJPCKICHJGNAGOJPAJ.no-reply@gey970.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=gey970.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@gey970.com;
 bh=ttSDK4NZGRMwf5QpFS3oULEB1/rG3PG3PICG7MjsNYk=;
 b=HFFrG+odncp/fJq+y0hAB7yNvZY2zDY438ENji4SgvjXwnuLtQFgVMES7cDvGB1w3vglmtZbyOwA
 rpD77F9baEIJqtXrgll4OSMw7BBvIHE/M0R0r3W9g1txn3rgqDgYs/qNqViQMEm5nfUR7A8y6FBG
 1qy0x8aLQjcX3BGrm1Q=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gey970.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gey970.com header.i=no-reply@gey970.com
 header.a=rsa-sha256 header.s=default header.b=HFFrG+od
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
CuOBlCDliKkg55SoIOaXpSDmmYIg77yaMjAyNOW5tDA15pyIMjDml6UgMjE6NDkgUE0NCuOBlCDl
iKkg55SoIOWgtCDmiYAg77ya5Y2D5Luj55Sw5LiA44OE5qmLIDEg5LiB55uu5bqXICjjgrvjg5bj
g7PjgqTjg6zjg5bjg7MpDQrjgZQg5YipIOeUqCDph5Eg6aGNIO+8mjk1MzDlhoYNCg0K44Kr44O8
44OJ44KS5L2/55So44GX44Gf6Kaa44GI44GM44Gq44GE5aC05ZCI44Gv44CB5Lul5LiL44Gu44Oq
44Oz44Kv44KS44Kv44Oq44OD44Kv44GX44Gm44Kv44Os44K444OD44OIIOOCq+ODvOODieaUr+aJ
leOBhOOBruaJv+iqjeOCkuOCreODo+ODs+OCu+ODq+OBl+OBpuOBj+OBoOOBleOBhOOAgg0KaHR0
cHM6Ly9pZGVhMndlYXIuY29tDQoNCuOCpOOCquODs05FVOOBq+OBlOeZu+mMsuOBhOOBn+OBoOOB
hOOBpuOBhOOCi+ODoeODvOODq+OCouODieODrOOCueOBuOOBiuefpeOCieOBm+OBmeOCi+OCteOD
vOODk+OCueOBp+OBmeOAgg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCuKW
oCDnmbog6KGMIOiAhSDilqANCuagquW8j+S8muekvuOCpOOCquODs+mKgOihjA0K4pagIOalreWL
meWPl+iol+S8muekviDilqANCuOCpOOCquODs+ODleOCo+ODiuODs+OCt+ODo+ODq+OCteODvOOD
k+OCueagquW8j+S8muekvgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
