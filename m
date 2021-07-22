Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA793D2D1D
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Jul 2021 22:05:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7721260614;
	Thu, 22 Jul 2021 20:05:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HmHXBC12XIMh; Thu, 22 Jul 2021 20:05:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 910F8605CC;
	Thu, 22 Jul 2021 20:05:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 32A341BF3C8
 for <devel@linuxdriverproject.org>; Thu, 22 Jul 2021 20:05:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C591605CC
 for <devel@linuxdriverproject.org>; Thu, 22 Jul 2021 20:05:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mvoQ4D1ozUpG for <devel@linuxdriverproject.org>;
 Thu, 22 Jul 2021 20:05:43 +0000 (UTC)
X-Greylist: delayed 00:20:04 by SQLgrey-1.8.0
Received: from 1ndax.top (unknown [175.7.199.226])
 by smtp3.osuosl.org (Postfix) with ESMTP id D9DF2605C9
 for <devel@driverdev.osuosl.org>; Thu, 22 Jul 2021 20:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=1ndax; d=1ndax.top;
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=etc-melsal@1ndax.top; bh=s3qRrQIsDvL/UQPzP60YK/fTlGU=;
 b=gUIT9nOrdv4J8RekwDkigkiv9w10zXalsRzgaELSaq7GyPb7pjjBFW5j62ihgYXwnqCloSrvXw/h
 wZgQmSiS7f9iXs0uR0GIdZh8xdxL6jMnfYmOiMN0wPjDVqKLOitFiovgf7pDKxtEpcSvhS9oehPm
 sItMUsxcQUFkOq+Eh4o=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=1ndax; d=1ndax.top;
 b=DuOQ6Lt19vHjdyTquB0PWbPSTLVGCifMsvkxzRMxvckvv//bwoCjMlywtrPso8PC8dcugKBrhHFF
 0QbrrQUGIuaqlfuPxOwnPuuRSH5FYZ9ooQgeMyDm0s2AVrZRnZ6O84mOxz+K2oD5tE8ojf5hhQ3K
 Q0UARf4sbvXPDWF6Yxo=;
Message-ID: <F0A0AEB402D8D421401FED854696B0D2@hv>
From: =?utf-8?B?RVRD44Oh44OD44K744O844K4?= <etc-melsal@1ndax.top>
To: <devel@driverdev.osuosl.org>
Subject: =?utf-8?B?5oOF5aCx44KS55+l44KJ44Gb44KL?=
Date: Fri, 23 Jul 2021 03:44:56 +0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.5512
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.5512
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

RVRD44K144O844OT44K544KS44GU5Yip55So44Gu44GK5a6i5qeYOg0KDQoNCkVUQ+OCteODvOOD
k+OCueOBr+eEoeWKueOBq+OBquOCiuOBvuOBl+OBn+OAgg0K5byV44GN57aa44GN44K144O844OT
44K544KS44GU5Yip55So44GE44Gf44Gg44GN44Gf44GE5aC05ZCI44Gv44CB5LiL6KiY44Oq44Oz
44Kv44KI44KK6Kmz57Sw44KS44GU56K66KqN44GP44Gg44GV44GE44CCDQoNCg0K5LiL6KiY44Gu
5o6l57aa44GL44KJ5YGc5q2i5Y6f5Zug44KS56K66KqN44GX44Gm44GP44Gg44GV44GEDQpodHRw
czovL2V0Yy1tZWthaS1qcC5yYWRpby5hbQ0KDQoo55u05o6l44Ki44Kv44K744K544Gn44GN44Gq
44GE5aC05ZCI44Gv44CB5omL5YuV44Gn44OW44Op44Km44K244Gr44Kz44OU44O844GX44Gm6ZaL
44GE44Gm44GP44Gg44GV44GEKQ0KDQoNCg0K4oC744GT44Gu44Oh44O844Or44Gv6YCB5L+h5bCC
55So44Gn44GZ44CCDQrjgIDjgZPjga7jgqLjg4njg6zjgrnjgavpgIHkv6HjgYTjgZ/jgaDjgYTj
gabjgoLov5Tkv6HjgYTjgZ/jgZfjgYvjga3jgb7jgZnjga7jgafjgIHjgYLjgonjgYvjgZjjgoHj
gZTkuobmib/poZjjgYTjgb7jgZnjgIINCuKAu+OBquOBiuOAgeOBlOS4jeaYjuOBqueCueOBq+OB
pOOBjeOBvuOBl+OBpuOBr+OAgeOBiuaJi+aVsOOBp+OBmeOBjOOAgQ0Kw4tUQ+OCteODvOODk+OC
ueS6i+WLmeWxgOOBq+OBiuWVj+OBhOWQiOOCj+OBm+OBj+OBoOOBleOBhOOAgg0KDQoNCg0K4pag
RVRD5Yip55So54Wn5Lya44K144O844OT44K55LqL5YuZ5bGADQrlubTkuK3nhKHkvJHjgIA5OjAw
772eMTg6MDANCuODiuODk+ODgOOCpOODpOODq+OAgDA1NzAtMDEwMTM5DQrvvIjjg4rjg5Pjg4Dj
gqTjg6Tjg6vjgYzjgZTliKnnlKjjgYTjgZ/jgaDjgZHjgarjgYTjgYrlrqLjgZXjgb7jgIAwNDUt
NzQ0LTEzNzLvvIkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
