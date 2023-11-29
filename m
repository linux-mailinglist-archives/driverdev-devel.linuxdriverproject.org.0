Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 440707FD15A
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Nov 2023 09:49:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99589843A8;
	Wed, 29 Nov 2023 08:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99589843A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zu9GFt7XIANr; Wed, 29 Nov 2023 08:49:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D526820BD;
	Wed, 29 Nov 2023 08:49:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D526820BD
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85B421BF276
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Nov 2023 08:49:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E85260B2F
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Nov 2023 08:49:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E85260B2F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oJcAIV1mpP6k
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Nov 2023 08:49:24 +0000 (UTC)
X-Greylist: delayed 527 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 29 Nov 2023 08:49:23 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD9DE60AFE
Received: from mail.venturelinkbiz.com (mail.venturelinkbiz.com
 [51.195.119.142])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BD9DE60AFE
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Nov 2023 08:49:23 +0000 (UTC)
Received: by mail.venturelinkbiz.com (Postfix, from userid 1002)
 id 775AF47397; Wed, 29 Nov 2023 08:40:24 +0000 (UTC)
Received: by mail.venturelinkbiz.com for
 <driverdev-devel@linuxdriverproject.org>; Wed, 29 Nov 2023 08:40:22 GMT
Message-ID: <20231129074500-0.1.3v.b7wl.0.ngq1m0oe1u@venturelinkbiz.com>
Date: Wed, 29 Nov 2023 08:40:22 GMT
From: "Michal Rmoutil" <michal.rmoutil@venturelinkbiz.com>
To: <driverdev-devel@linuxdriverproject.org>
Subject: =?UTF-8?Q?Bezplatn=C3=A1_60denn=C3=AD_zku=C5=A1ebn=C3=AD_verze:_Vylep=C5=A1ete_sv=C3=A9_v=C3=BDrobn=C3=AD_procesy?=
X-Mailer: mail.venturelinkbiz.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=venturelinkbiz.com; s=mail; t=1701247234;
 bh=Mjfq+hZZ0+rPTC06HjjASvlnsTMgj1yAndWxi/OAu2M=;
 h=Date:From:To:Subject:From;
 b=G826ZIgIG5iZ3b1WZt5ymCXm5MxUUNiMLGsfqbh2oaov/3sMDCnqR4J++GOGQb8UN
 0kpBfjcc22tY1Rt85aJ2bbpoHCIQzgst9ycb3SXpIv0d8r3GkSoULSUWibKamoT6cX
 RQ8FeUzRua8w/0RmPZFd3bX3IHlhKzrv1oTSrPLEOQ6YdRzn9dBpNztwBQyS/AsbdM
 MQ7PWvlPEmi+pQMX/yHaZ70/tMYwFCNCAEtc7acd3z/g87KEXA9NBuZRGnxOH38yH8
 5dK5DNbDDTuTRBsnz11Qk2srYTNqFID9VfXJMc88babLJ9e0FD3W+dJKx7pzLf+u6J
 62ktsQd+7v4uQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=venturelinkbiz.com
 header.i=@venturelinkbiz.com header.a=rsa-sha256 header.s=mail
 header.b=G826ZIgI
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

RG9icsOpIHLDoW5vCgpabsOhdGUgc3lzdMOpbSwga3RlcsO9IG5lamVuIGhsw61kw6EsIGFsZSBp
IG9wdGltYWxpenVqZSB2w71yb2J1IGEgcMWZaW7DocWhw60gc3TDoWzDvSBwxZnDrWplbT8KCkTD
rWt5IG5lam5vdsSbasWhw61tIHRlY2hub2xvZ2nDrW0gYSBhbmFsw716ZSBkYXQgbmHFoWUgxZll
xaFlbsOtIGlkZW50aWZpa3VqZSBvYmxhc3RpIG9wdGltYWxpemFjZSwgenbDvcWhZW7DrSBlZmVr
dGl2aXR5IGEgc27DrcW+ZW7DrSBuw6FrbGFkxa8uIE5hxaFpIGtsaWVudGkgemF6bmFtZW5hbGkg
bsOhcsWvc3QgcMWZw61qbcWvIHYgcHLFr23Em3J1IG8gMjAgJSBhIGRuZXMgc2kgdG8gbcWvxb5l
dGUgdnl6a291xaFldCBuYSA2MCBkbsOtIHpkYXJtYS4KClBva3VkIGNoY2V0ZSBkYWzFocOtIHBv
ZHJvYm5vc3RpLCBvZHBvdsSbenRlIHByb3PDrW0gbmEga29udGFrdG7DrSDEjcOtc2xvLgoKClBv
emRyYXZ5Ck1pY2hhbCBSbW91dGlsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
