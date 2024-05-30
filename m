Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB688D4F67
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2024 17:49:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA1B2403FC;
	Thu, 30 May 2024 15:49:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pHM5s72Hs3lc; Thu, 30 May 2024 15:49:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A66941431
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A66941431;
	Thu, 30 May 2024 15:49:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E2DFE1D483D
 for <devel@linuxdriverproject.org>; Thu, 30 May 2024 15:49:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF533403FC
 for <devel@linuxdriverproject.org>; Thu, 30 May 2024 15:49:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YWRMN6F7hgV3 for <devel@linuxdriverproject.org>;
 Thu, 30 May 2024 15:49:10 +0000 (UTC)
X-Greylist: delayed 604 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 30 May 2024 15:49:08 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 64A2F404D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64A2F404D1
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=137.220.181.223;
 helo=mail0.zzhcgj.com; envelope-from=no-reply@zzhcgj.com; receiver=<UNKNOWN> 
Received: from mail0.zzhcgj.com (unknown [137.220.181.223])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 64A2F404D1
 for <devel@linuxdriverproject.org>; Thu, 30 May 2024 15:49:07 +0000 (UTC)
From: =?utf-8?B?5p2xIOS6rCDpm7sg5Yqb?= <no-reply@zzhcgj.com>
To: <devel@linuxdriverproject.org>
Subject: =?utf-8?B?44CQ6YeN6KaB44CR5pyq5omV44GE44Gu6Zu75rCX5paZ6YeR?=
 =?utf-8?B?44Gr6Zai44GZ44KL44GK55+l44KJ44Gb77yI5b+F44Ga44GU56K66KqN?=
 =?utf-8?B?44GP44Gg44GV44GE77yJ?=
Date: Thu, 30 May 2024 23:38:57 +0800
Message-ID: <PHPIGFELGABDMJGFHNJKHJKOJHNM.no-reply@zzhcgj.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=zzhcgj.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@zzhcgj.com;
 bh=bbW6Aczp7Exv/U2zyRGEgvlHi2RwcTNF8WwNkQ6vyVI=;
 b=L0f/wjsq93xhk8JTj5D5vI2SNltXl29L3wms1jOEe92/1wiCndRpUCW97+Hv+3amP8Ezw3gKXycJ
 rscDvIB+YU+S4GZ4deEjhd8xov3UdNxjCsySJEqIqD9UCF9B8/o7HNYHx1jfbwy4mFJ235vwG3SK
 QZZ5gDFZGCII7Ds4upY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=zzhcgj.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zzhcgj.com header.i=no-reply@zzhcgj.com
 header.a=rsa-sha256 header.s=default header.b=L0f/wjsq
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

5p2x5Lqs6Zu75Yqb5bGA44Ki44OX44Oq44KS44GU5Yip55So44GE44Gf44Gg44GN44CB44GC44KK
44GM44Go44GG44GU44GW44GE44G+44GZ44CCCuOBleOBpuOAgeOBk+OBruW6puOBr+OBiuWuouan
mOOBrumbu+awl+aWmemHkeOBruOBiuaUr+aJleOBhOOBq+mWouOBl+OBpuOAgeWkp+WIh+OBquOB
iuefpeOCieOBm+OBjOOBlOOBluOBhOOBvuOBmeOAguW8iuWxgOOBruiomOmMsuOBq+OCiOOCiuOB
vuOBmeOBqOOAgeOBiuWuouanmOOBruOCouOCq+OCpuODs+ODiOOBq+OBpuaui+W/teOBquOBjOOC
ieacquaJleOBhOOBruaWmemHkeOBjOeZuueUnwrjgZfjgabjgYrjgorjgb7jgZnjgIIK6Kmz57Sw
44Gv5Lul5LiL44Gu44Go44GK44KK44Gn44GZ77yaIArjgYrmlK/miZXjgYTmnJ/pmZA6IDIwMjQv
MDUvMzEK44GK5pSv5omV44GE6YeR6aGNOiAzODMwIOWGhgoK44GK5a6i5qeY44Gr44Gv5aSa5aSn
44Gq44KL44GU6L+35oOR44KS44GK44GL44GR44GZ44KL44GT44Go44Go44Gq44KK44CB5b+D44KI
44KK44GK6Kmr44Gz55Sz44GX5LiK44GS44G+44GZ44CC44GX44GL44GX44Gq44GM44KJ44CB6Zu7
5Yqb44K144O844OT44K544Gu57aZ57aa55qE44Gq5o+Q5L6b44KS5L+d6Ki844GZ44KL44Gf44KB
44Gr44KC44CBW+OBiuaUr+aJleOBhOacn+mZkF3jgb4K44Gn44Gr5pyq5omV44GE44Gu5paZ6YeR
44KS44GK5pSv5omV44GE44GE44Gf44Gg44GR44G+44GZ44KI44GG44GK6aGY44GE55Sz44GX5LiK
44GS44G+44GZ44CCIAoK44GK5pSv5omV44GE44Gv44CB5Lul5LiL44Gu44Oq44Oz44Kv44GL44KJ
57Ch5Y2Y44Gr44Kq44Oz44Op44Kk44Oz44Gn6KGM44GG44GT44Go44GM44Gn44GN44G+44GZ77ya
IApodHRwczovL3Nlc2xpdXllLmNvbQoK4oC75pu05paw44Gu5pyJ5Yq55pyf6ZmQ44Gv44CBMjTm
mYLplpPjgafjgZnjgIIK44GK5pSv5omV44GE5YmN44Gr44CB5re75LuY44Gu6KuL5rGC5pu444KS
44GU56K66KqN44GE44Gf44Gg44GN44CB44GK5pSv5omV44GE6YeR6aGN44GM5q2j56K644Gn44GC
44KL44GT44Go44KS44GU56K66KqN44GP44Gg44GV44GE44CCCuaXouOBq+OBiuaUr+aJleOBhOOB
hOOBn+OBoOOBhOOBn+WgtOWQiOOBr+OAgeOBk+OBruOBiuefpeOCieOBm+OCkueEoeimluOBl+OB
puOBhOOBn+OBoOOBhOOBpue1kOani+OBp+OBmeOAggrjgZTkuI3mmI7jgarngrnjgoTjgZTos6rl
lY/jgYzjgYLjgovloLTlkIjjga/jgIHjgYrmsJfou73jgavjgYrllY/jgYTlkIjjgo/jgZvjgY/j
gaDjgZXjgYTjgILjgYrlrqLmp5jjgrXjg53jg7zjg4jjg4Hjg7zjg6DjgYzjgYrmiYvkvJ3jgYTj
gYTjgZ/jgZfjgb7jgZnjgIIKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQrmnbHkuqzpm7vl
ipvjgqjjg4rjgrjjg7zjg5Hjg7zjg4jjg4rjg7zmoKrlvI/kvJrnpL4K44CSMTAwLTg1NjAK5p2x
5Lqs6YO95Y2D5Luj55Sw5Yy65YaF5bm455S6MeS4geebrjHnlaoz5Y+3CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
