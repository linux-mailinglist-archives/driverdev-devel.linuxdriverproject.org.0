Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C60CB8D687B
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2024 19:53:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 047C0423DA;
	Fri, 31 May 2024 17:53:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KzQlkJWKVleR; Fri, 31 May 2024 17:53:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7E4F423EC
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7E4F423EC;
	Fri, 31 May 2024 17:53:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3D8F91D5531
 for <devel@linuxdriverproject.org>; Fri, 31 May 2024 17:53:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 29B7661127
 for <devel@linuxdriverproject.org>; Fri, 31 May 2024 17:53:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IbwX1H_Os6ZL for <devel@linuxdriverproject.org>;
 Fri, 31 May 2024 17:53:03 +0000 (UTC)
X-Greylist: delayed 604 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 31 May 2024 17:53:01 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 91E7C6073A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91E7C6073A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=137.220.181.221;
 helo=mail0.wmmlw.com; envelope-from=no-reply@wmmlw.com; receiver=<UNKNOWN> 
Received: from mail0.wmmlw.com (unknown [137.220.181.221])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 91E7C6073A
 for <devel@linuxdriverproject.org>; Fri, 31 May 2024 17:53:01 +0000 (UTC)
From: =?utf-8?B?5LiJIOS6lSDkvY8g5Y+L?= <no-reply@wmmlw.com>
To: "devel@linuxdriverproject.org" <devel@linuxdriverproject.org>
Subject: =?utf-8?B?44CQIOS4ieS6leS9j+WPi+OCq+ODvOODiSDjgJE15pyI44GU?=
 =?utf-8?B?6KuL5rGC6aGN44Gu44GK55+l44KJ44Gb?=
Date: Sat, 01 Jun 2024 01:42:52 +0800
Message-ID: <GKFMPJMJIAGNOJMKCPLJIEKKIHKI.no-reply@wmmlw.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=wmmlw.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@wmmlw.com;
 bh=eU8eFfoGajfOWI2fkL60Zp5gUtb5uEG6/IVEgG1y7EI=;
 b=CRnYcZPEJJIyCqc9L/fk6cZ21Ni6Yh8Udw8eGPb7Z01ep5SgwmqBf8LvVr86/zp4BMqcUcMWWnOs
 HSuZ/+FtSesB/q8CnWFHCj4CXplb9sGj7TM1CVapVR0LpqSZbGQj/NwhnNKJgMyQh3F4fhKj9mwb
 nYwdzvkssrVap38DcvI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=wmmlw.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=wmmlw.com header.i=no-reply@wmmlw.com
 header.a=rsa-sha256 header.s=default header.b=CRnYcZPE
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

44GE44Gk44KC5LiJ5LqV5L2P5Y+L44Kr44O844OJ44KS44GU5Yip55So44GE44Gf44Gg44GN44CB
44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCCuacrOODoeODvOODq+OBr1dlYuaYjue0
sCjnkrDlooPlrqPoqIAp44Gr44GU55m76Yyy44GE44Gf44Gg44GE44Gm44GE44KL44GK5a6i44GV
44G+44Gr44GK6YCB44KK44GX44Gm44GK44KK44G+44GZ44CCCgo15pyI44Gu44GU6KuL5rGC6aGN
44GM56K65a6a44GE44Gf44GX44G+44GX44Gf44CCCuKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgeKUgeKUgeKUgeKUgeKUgeKUgQrjgYrmlK/miZXjgYTjgavjgaTjgYTjgaYK4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSBCuOBlOWIqeeUqOOCq+ODvOOD
iSDvvJog5LiJ5LqV5L2P5Y+L44Kr44O844OJCuOBiuaUr+aJleaXpSDvvJoyMDI05bm0NuaciDLm
l6UKCuWPo+W6p+aui+mrmOOBruOBlOeiuuiqjeODu+OBlOWFpemHkeOBr+OAgeOBiuaUr+aJleaX
peOBruWJjeWWtualreaXpeOBvuOBp+OBq+OBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAggoK4pa8
44GU6KuL5rGC5piO57Sw44Gu44GU56K66KqN44Gv44GT44Gh44KJCmh0dHBzOi8vemdzamhsLmNv
bQoK4oC744Oh44O844Or5L2c5oiQ5pmC54K544Gn44Gu6KuL5rGC56K65a6a6aGN44Gr44Gq44KK
44G+44GZ44CC44GU5Yip55So54q25rOB44Gr44KI44KK5YaN5bqm6KuL5rGC6aGN56K65a6a44Oh
44O844Or44KS44GK6YCB44KK44GZ44KL5aC05ZCI44GM44GU44GW44GE44G+44GZ44CCCuKUgeKU
geKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgQrnmbrooYzvvJrmoKrl
vI/kvJrnpL7kuInkupXkvY/lj4vjgqvjg7zjg4kK44CSMTM1LTAwNjEgCuadseS6rOmDveaxn+ad
seWMuuixiua0sjLkuIHnm64y55WqMzHlj7cgU01CQ+ixiua0suODk+ODqwrjgZPjga7jg6Hjg7zj
g6vjgavmjrLovInjgZXjgozjgZ/lhoXlrrnjgpLoqLHlj6/jgarjgY/ou6LovInjgZnjgovjgZPj
gajjgpLnpoHjgZjjgb7jgZnjgIIK4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSBCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
