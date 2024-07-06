Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B07D929601
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Jul 2024 01:57:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCCD6406B3;
	Sat,  6 Jul 2024 23:57:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sdibaU6Pj5oJ; Sat,  6 Jul 2024 23:57:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F71940749
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F71940749;
	Sat,  6 Jul 2024 23:57:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 46A071BF3DB
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2024 23:57:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 333FB4022E
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2024 23:57:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xZRTRvQm7VlY for <devel@linuxdriverproject.org>;
 Sat,  6 Jul 2024 23:57:46 +0000 (UTC)
X-Greylist: delayed 602 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 06 Jul 2024 23:57:44 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 67938400F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67938400F5
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=154.38.104.87;
 helo=mail0.oemgroup.cn; envelope-from=no-reply@oemgroup.cn;
 receiver=<UNKNOWN> 
Received: from mail0.oemgroup.cn (unknown [154.38.104.87])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 67938400F5
 for <devel@driverdev.osuosl.org>; Sat,  6 Jul 2024 23:57:43 +0000 (UTC)
From: =?utf-8?B?5p2x5Lqs6Zu75Yqb?= <no-reply@oemgroup.cn>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: =?utf-8?B?44CQ5p2x5Lqs6Zu75Yqb44CR5pyq57SN6Zu75rCX5paZ6YeR?=
 =?utf-8?B?44Gu44GK55+l44KJ44Gb77yI6Ieq5YuV6YWN5L+h44Oh44O844Or77yJ?=
Date: Sat, 06 Jul 2024 23:47:39 +0000
Message-ID: <ILCOIEHIFEMAHHNPHFNILNDIGHIN.no-reply@oemgroup.cn>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=oemgroup.cn; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@oemgroup.cn;
 bh=d4Wdv/7ZNIivMDC9/7JVwuDba+k0RZ+OAGZB9iaeRk8=;
 b=ACwfURt/e29GRb31kDhKT3jFyX5JmvkA59uB0cfPiqERSrE2QUKFTQAylGtk6FNfPgDKKn7/3IFS
 vtXvCSuEVXhBCHEfCjAE2TK1Vl83/Hrzmkrou844GloxZSUGggKx7Ka/rNV+bhxR2nmjoks+bSS2
 hNfyqmMgRq7Egyl5tM8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=oemgroup.cn
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=oemgroup.cn header.i=no-reply@oemgroup.cn
 header.a=rsa-sha256 header.s=default header.b=ACwfURt/
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

4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
DQrilqDilqHilqAg5p2x5Lqs6Zu75Yqb44KI44KK44GU5Yip55So5paZ6YeR44Gu44GU6KuL5rGC
44Gn44GZIOKWoOKWoeKWoA0K4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSADQrigLvkuIvoqJhVUkzjga7mnInlirnmnJ/pmZDjga8yNOaZgumW
k+S7peWGheOBqOOBquOCiuOBvuOBmeOAgg0K4oC75pyJ5Yq55pyf6ZmQ44GM5YiH44KM44Gm5pSv
5omV5omL57aa44GN44GM5a6M5LqG44Gn44GN44Gq44GE5aC05ZCI44Gr44Gv44CB5oGQ44KM5YWl
44KK44G+44GZ44GM44CB6Zu75rCXwrfjgqzjgrnkvb/nlKjlgZzmraLjgIINCg0K4pa85pSv5omV
44GE44Gu6Kmz57Sw44Oq44Oz44Kv44Ko44Oz44OIDQpodHRwczovL3NlYWdpcnRwdG8uY29tDQoN
CuKAu+acrOODoS3jg6vjga/pgIHkv6HlsIjnlKjjg6Et44Or44Ki44OJ44Os44K544GL44KJ44GK
6YCB44KK44GX44Gm44GE44G+44GZ44CCDQrjgZTov5Tkv6HjgYTjgZ/jgaDjgY3jgb7jgZfjgabj
goLjgYrnrZTjgYjjgafjgY3jgb7jgZvjgpPjgIINCj09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0NCuadseS6rOmbu+WKm+OCqOODiuOCuOODvOODkeODvOODiOODiuODvOagquW8j+S8muek
vg0KVEVQQ08gRW5lcmd5IFBhcnRuZXIsSW5jb3Jwb3JhdGVkDQrjgJIxMDQtMDA2MSDmnbHkuqzp
g73kuK3lpK7ljLrpioDluqflhavkuIHnm67vvJHvvJPnlarvvJHlj7cg6YqA5bqn5LiJ5LqV44OT
44Or44OH44Kj44Oz44KwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
