Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4420D927F3E
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jul 2024 02:07:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B26D60B6B;
	Fri,  5 Jul 2024 00:07:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D_616AKLOb9N; Fri,  5 Jul 2024 00:07:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 311F960BA5
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 311F960BA5;
	Fri,  5 Jul 2024 00:07:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 97B881BF2BD
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2024 00:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 84DE160B9C
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2024 00:07:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fEozzFfQLyBe for <devel@linuxdriverproject.org>;
 Fri,  5 Jul 2024 00:07:48 +0000 (UTC)
X-Greylist: delayed 602 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 05 Jul 2024 00:07:46 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C4F1660B6B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4F1660B6B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=154.38.104.96;
 helo=mail0.zhetongb.cn; envelope-from=no-reply@zhetongb.cn;
 receiver=<UNKNOWN> 
Received: from mail0.zhetongb.cn (unknown [154.38.104.96])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4F1660B6B
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2024 00:07:45 +0000 (UTC)
From: =?utf-8?B?TXlKQ0Ljgqvjg7zjg4k=?= <no-reply@zhetongb.cn>
To: "devel@linuxdriverproject.org" <devel@linuxdriverproject.org>
Subject: =?utf-8?B?TXkgSmNi44Ki44Kr44Km44Oz44OI6KqN6Ki86YCa55+l?=
Date: Thu, 04 Jul 2024 23:57:40 +0000
Message-ID: <ODOIGCGEOLOCNBAJFGHPKJHHHGFO.no-reply@zhetongb.cn>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=zhetongb.cn; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@zhetongb.cn;
 bh=vuU8omJ/MoVs8BRWG6D4M3YO5V9CTgQiTobaYOrv2j0=;
 b=A2JKKy06mrCSkcGJmhPPVWwzsnUqeKBxir1kayKijOHC/DJBU6sSGzHETgBF/YlESZbME6Jd54O1
 fMdA4d2LaXIRBr1yUsmzDjar4OyuWyKbWuyyS/yPkrqTrpQhutZz6Sr8f2mH2gaBSOgq46HBre/K
 ux/TqiZVP62wR1EAkwQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=zhetongb.cn
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zhetongb.cn header.i=no-reply@zhetongb.cn
 header.a=rsa-sha256 header.s=default header.b=A2JKKy06
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

TXkgSmNi44KS44GU5Yip55So44GE44Gf44Gg44GN6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW
44GE44G+44GZ44CC44K344K544OG44Og44Gr44KI44KL5a6a5pyf55qE44Gq44OB44Kn44OD44Kv
44Gu57WQ5p6c44CB44GK5a6i5qeY44Gu44Ki44Kr44Km44Oz44OI44Gr44Gk44GE44Gm5YaNIOiq
jSDoqLzjgYwg5b+FIOimgeOBqOOBquOCiuOBvuOBl+OBn+OAgg0KDQrilrxNeSBKY2Ljg63jgrDj
gqTjg7MNCmh0dHBzOi8veWlodWFsaWFuLmNvbQ0KDQrnlLvpnaLjgavooajnpLrjgZXjgozjgovm
jIfnpLrjgavlvpPjgYTjgIHlv4XopoHjgarmiYvntprjgY3jgpLlrozkuobjgZfjgabjgY/jgaDj
gZXjgYTjgIINCg0K44GT44Gu44Oh44O844Or44KS5Y+X5L+h44GX44Gm44GL44KJMjTmmYLplpPk
u6XlhoXjgavoqo3oqLzjgpLlrozkuobjgZfjgabjgY/jgaDjgZXjgYTjgILjgZ3jgYbjgZfjgarj
gYTloLTlkIjjgIHjgYrlrqLmp5jjga7jgqLjgqvjgqbjg7Pjg4jjga/kuIAg5pmCIOeahOOBqyDl
h40g57WQ44GV44KM44KL5Y+v6IO95oCn44GM44GC44KK44G+44GZ44CCDQrjgZTnkIbop6Pjgajj
gZTljZTlipvjgpLjgYTjgZ/jgaDjgY3jgIHoqqDjgavjgYLjgorjgYzjgajjgYbjgZTjgZbjgYTj
gb7jgZnjgILku4rlvozjgajjgoLjgIFNeSBKY2Ljga/jgYrlrqLmp5jjga7lronlhajjgajliKnk
vr/mgKfjgpLnrKzkuIDjgavogIPjgYjjgIHjgojjgoroia/jgYTjgrXjg7zjg5PjgrnjgpLmj5Dk
vpvjgZnjgovjgZ/jgoHjgavliqrlipvjgZfjgabjgb7jgYTjgorjgb7jgZnjgIINCj09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0K5beu5Ye65Lq677ya5qCq5byP5Lya56S+TXkg
SmNiDQrCqSBKQ0IgQ28uLEx0ZC4gMjAyNAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
