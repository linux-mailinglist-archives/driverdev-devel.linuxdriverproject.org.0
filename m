Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B028B9020
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 May 2024 21:43:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5DC5820C8;
	Wed,  1 May 2024 19:43:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v1gLlai7krFl; Wed,  1 May 2024 19:43:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00444820D0
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00444820D0;
	Wed,  1 May 2024 19:43:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8953A1BF2C9
 for <devel@linuxdriverproject.org>; Wed,  1 May 2024 19:43:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 81A1740313
 for <devel@linuxdriverproject.org>; Wed,  1 May 2024 19:43:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WGnngX3uekb3 for <devel@linuxdriverproject.org>;
 Wed,  1 May 2024 19:43:23 +0000 (UTC)
X-Greylist: delayed 606 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 01 May 2024 19:43:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BE80040301
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE80040301
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=137.220.190.164;
 helo=mail0.ska28.com; envelope-from=no-reply@ska28.com; receiver=<UNKNOWN> 
Received: from mail0.ska28.com (unknown [137.220.190.164])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BE80040301
 for <devel@linuxdriverproject.org>; Wed,  1 May 2024 19:43:21 +0000 (UTC)
Message-ID: <f9ecd3787de03ce34689b62f28c6d212@ska28.com>
From: =?utf-8?B?6Ieq5YuV44Oh44O844Or6YCB5L+h?= <no-reply@ska28.com>
To: <devel@linuxdriverproject.org>
Subject: =?utf-8?B?44CQ5LiJ5LqV5L2P5Y+LIOOCq+ODvOODieOAkSDjgYrmlK8=?=
 =?utf-8?B?5omV44GE5LqI5a6a6YeR6aGN44Gu44GU5qGI5YaF?=
Date: Thu, 02 May 2024 03:33:09 +0800
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=ska28.com; 
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@ska28.com;
 bh=ycPeo4PiodI9AbCUTbYMdUaufHH/+jDLpdGVUl04pJg=;
 b=dYJ8whWrwmh35x79BwdnjhKSkV6xqZB/be9H0kXZ3jS74b/WltJO/jhWQOnmY9gTTsmqicX8URst
 2KE1YjyBABz4/gcPbMKsZqwmCP9HJ7EaKxFCbidBaeID+5z47vNOqAvxPT3jKLps5p/t6yxeONds
 yEuYHnzutbPzMCIeAx8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=ska28.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=ska28.com header.i=no-reply@ska28.com
 header.a=rsa-sha256 header.s=default header.b=dYJ8whWr
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

5LiJIOS6lSDkvY8g5Y+LIOOCqyDjg7wg44OJ44KS44GU5Yip55So44Gu44GK5a6i5qeY44G4DQoN
CuOBk+OBruOBn+OBs+OBr+S4iSDkupUg5L2PIOWPiyDjgqsg44O8IOODieOCkuOBlOWIqeeUqOOB
hOOBn+OBoOOBjeOAgeiqoOOBq+OBguOCiuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBmeOAgg0K5LiL
6KiY44Gu44GU5Yip55So54Wn5Lya44GM44GU44GW44GE44G+44GX44Gf44Gu44Gn44CB44GK55+l
44KJ44Gb44GE44Gf44GX44G+44GZ44CCDQoNCuKAu+acrOODoeODvOODq+OBr+OAgeOBlOWIqeeU
qOODu+iri+axguOCkueiuuWumuOBmeOCi+OCguOBruOBp+OBr+OBguOCiuOBvuOBm+OCk+OAgg0K
44GU5Yip55So5pel5pmC77yaMjAyNCAvIDA1IC8gMDEgICAgICAyMyA6IDE4DQrjgZTliKnnlKjl
oLTmiYDvvJrjgrvjg5bjg7Mt44Kk44Os44OW44OzIOWNg+S7o+eUsOS4gOODhOapiyAxIOS4geeb
ruW6lw0K44GU5Yip55So6YeR6aGN77yaOSwgNTgw5YaGDQoNCuOCq+ODvOODieOCkuS9v+eUqOOB
l+OBn+immuOBiOOBjOOBquOBhOWgtOWQiOOBr+OAgeS7peS4iyDjga4g44OqIOODsyDjgq8g44KS
44Kv44OqIOODgyDjgq8g44GXIOOBpuOCqyDjg7wg44OJ5L2/55So44Gu6Kmz57Sw44KS56K66KqN
44GX44Gm44GP44Gg44GV44GE44CCDQpodHRwczovL2RvbnMtamlncy5jb20NCg0K77yc44GU5rOo
5oSP54K577yeDQrigLvvvJHvvI7mnKzjgrXjg7zjg5Pjgrnjga/jgIHjgYrlrqLmp5jjga7kuIkg
5LqVIOS9jyDlj4sg44KrIOODvCDjg4njga7jgZTliKnnlKjnhafkvJrjgYzooYzjgo/jgozjgZ/l
oLTlkIjjgIENCuS4iSDkupUg5L2PIOWPiyBORVTjgavjgZTnmbvpjLLjgYTjgZ/jgaDjgYTjgabj
gYTjgovjg6Hjg7zjg6vjgqLjg4njg6zjgrnjgbjjgYrnn6XjgonjgZvjgZnjgovjgrXjg7zjg5Pj
grnjgafjgZnjgIINCuKAu++8ku+8juOBlOWlkee0hOOCreODo+ODs+OCu+ODq+OBqOOBquOBo+OB
n+WgtOWQiOOBruOBiuWPlua2iOOBl+aDheWgseOBr+mFjeS/oeOBleOCjOOBvuOBm+OCk+OAgg0K
4oC777yT77yO5LiJIOS6lSDkvY8g5Y+LIFZpc2Hjg5fjg6rjg5rjgqTjg4njgqvjg7zjg4nlj4rj
gbPkuInkupXkvY/lj4vjg5Djg7zjg4Hjg6Pjg6vjgqsg44O8IOODieOBruOBlOWIqeeUqOWIhuOC
guWQq+OBv+OBvuOBmeOAgg0K4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU
4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCUDQrilqDnmbog6KGMIOiAheKWoA0K5LiJIOS6lSDk
vY8g5Y+LIOOCqyDjg7wg44OJ5qCq5byP5Lya56S+DQrjgJIxMzUtMDA2MQ0K5p2x5Lqs6YO95rGf
5p2x5Yy66LGK5rSyMuS4geebrjLnlaozMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
