Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2DB8C93FE
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2024 10:37:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4495140546;
	Sun, 19 May 2024 08:37:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MDbgjZGol_PC; Sun, 19 May 2024 08:37:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3652440520
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3652440520;
	Sun, 19 May 2024 08:37:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CFE8E1C3BA4
 for <devel@linuxdriverproject.org>; Sun, 19 May 2024 08:37:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B5EC360621
 for <devel@linuxdriverproject.org>; Sun, 19 May 2024 08:37:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ml-POwRnBCit for <devel@linuxdriverproject.org>;
 Sun, 19 May 2024 08:37:33 +0000 (UTC)
X-Greylist: delayed 604 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 19 May 2024 08:37:31 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E950A6060E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E950A6060E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=137.220.233.94;
 helo=mail0.zni512.com; envelope-from=no-reply@zni512.com; receiver=<UNKNOWN> 
Received: from mail0.zni512.com (unknown [137.220.233.94])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E950A6060E
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2024 08:37:31 +0000 (UTC)
From: =?utf-8?B?6Ieq5YuV44Oh44O844Or6YCa55+l?= <no-reply@zni512.com>
To: <devel@driverdev.osuosl.org>
Subject: =?utf-8?B?44CQIOOCpOOCquODs+OCq+ODvOODiSDjgJHmsbrmuIjlrow=?=
 =?utf-8?B?5LqG44Gu44GK55+l44KJ44Gb?=
Date: Sun, 19 May 2024 16:27:23 +0800
Message-ID: <NHKLGIAPPFOAEIIBPGJNCMIPJGHN.no-reply@zni512.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=zni512.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@zni512.com;
 bh=LphooPz+YBzKTPLHe9bPT4ilnpfIbjythFCMjfIE71g=;
 b=SyOY76HE95L/1n7Mw++LIF5GGe6ujcJeXsan7cD4lYR/mWp1dWbToeBZ/SXlv++TIXrkYtM1Wvv4
 JKizaXeHklvkC4egN34XzatfFWT4EgW0K4cq/yMqcRjxbxbPmqZzimVnb51EL4hcHOCkWM3WMSjM
 mfuhaZgK+J4pmcM75QE=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=zni512.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zni512.com header.i=no-reply@zni512.com
 header.a=rsa-sha256 header.s=default header.b=SyOY76HE
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
CuOBlCDliKkg55SoIOaXpSDmmYIg77yaMjAyNOW5tDA15pyIMTjml6UgMjE6NDkgUE0NCuOBlCDl
iKkg55SoIOWgtCDmiYAg77ya5Y2D5Luj55Sw5LiA44OE5qmLIDEg5LiB55uu5bqXICjjgrvjg5bj
g7PjgqTjg6zjg5bjg7MpDQrjgZQg5YipIOeUqCDph5Eg6aGNIO+8mjk1MzDlhoYNCg0K44Kr44O8
44OJ44KS5L2/55So44GX44Gf6Kaa44GI44GM44Gq44GE5aC05ZCI44Gv44CB5Lul5LiL44Gu44Oq
44Oz44Kv44KS44Kv44Oq44OD44Kv44GX44Gm44Kv44Os44K444OD44OIIOOCq+ODvOODieaUr+aJ
leOBhOOBruaJv+iqjeOCkuOCreODo+ODs+OCu+ODq+OBl+OBpuOBj+OBoOOBleOBhOOAgg0KaHR0
cHM6Ly9weXdlaWVyLmNvbQ0KDQrjgqTjgqrjg7NORVTjgavjgZTnmbvpjLLjgYTjgZ/jgaDjgYTj
gabjgYTjgovjg6Hjg7zjg6vjgqLjg4njg6zjgrnjgbjjgYrnn6XjgonjgZvjgZnjgovjgrXjg7zj
g5PjgrnjgafjgZnjgIINCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQrilqAg
55m6IOihjCDogIUg4pagDQrmoKrlvI/kvJrnpL7jgqTjgqrjg7PpioDooYwNCuKWoCDmpa3li5nl
j5foqJfkvJrnpL4g4pagDQrjgqTjgqrjg7Pjg5XjgqPjg4rjg7Pjgrfjg6Pjg6vjgrXjg7zjg5Pj
grnmoKrlvI/kvJrnpL4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
