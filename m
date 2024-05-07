Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 902C48BEA08
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2024 19:06:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBBCD408F0;
	Tue,  7 May 2024 17:06:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mOul-oa34O4O; Tue,  7 May 2024 17:06:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF598416DD
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF598416DD;
	Tue,  7 May 2024 17:06:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB1511BF307
 for <devel@linuxdriverproject.org>; Tue,  7 May 2024 17:06:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D7D1A408F0
 for <devel@linuxdriverproject.org>; Tue,  7 May 2024 17:06:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zbmXeJnKUZVM for <devel@linuxdriverproject.org>;
 Tue,  7 May 2024 17:06:05 +0000 (UTC)
X-Greylist: delayed 603 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 07 May 2024 17:06:03 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B661940275
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B661940275
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=137.220.233.45;
 helo=mail0.fg614.com; envelope-from=no-reply@fg614.com; receiver=<UNKNOWN> 
Received: from mail0.fg614.com (unknown [137.220.233.45])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B661940275
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2024 17:06:03 +0000 (UTC)
From: =?utf-8?B?6Ieq5YuV44Oh44O844Or6YCB5L+h?= <no-reply@fg614.com>
To: =?utf-8?B?ZGV2ZWxAZHJpdmVyZGV2Lm9zdW9zbC5vcmc=?=
 <devel@driverdev.osuosl.org>
Subject: =?utf-8?B?44CQ5LiJ5LqV5L2P5Y+L44Kr44O844OJ44CR44GU5Yip55So?=
 =?utf-8?B?5YaF5a6544Gu44GK55+l44KJ44Gb?=
Mime-Version: 1.0
Message-ID: <tencent_1BBCE22784E1552D05FB7E31@fg614.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-QQ-Mailer: QQMail 2.x
Date: Wed, 08 May 2024 00:55:55 +0800
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=fg614.com; 
 h=From:To:Subject:Mime-Version:Message-ID:Date:Content-Type:
 Content-Transfer-Encoding; i=no-reply@fg614.com;
 bh=BXrjt0JiPtLod88F66Za0c5CUOIHDSnpZWirc83wNzM=;
 b=rxbllo1ZKlrWnuvhqDEjHxwli9qYRwkJBH4t6Xs46zKgtStL1d1ePhYsSZ8HMEUUohM+3bsFdp2T
 KrJjvdOqFdNkzHOPa7FOk3jcTtV/TS6J28RRtg47JBgvfqreZZ0dw1UYrCGSwLTj1vuqnTlEHbdL
 IIup0ajj4q7rpF4X0FI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=fg614.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fg614.com header.i=no-reply@fg614.com
 header.a=rsa-sha256 header.s=default header.b=rxbllo1Z
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

5LiJ5LqV5L2P5Y+L44Kr44O844OJ44KS44GU5Yip55So44Gu44GK5a6i5qeY44G4CgrjgZPjga7j
gZ/jgbPjga/kuInkupXkvY/lj4vjgqvjg7zjg4njgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY3jgIHo
qqDjgavjgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZnjgIIK5LiL6KiY44Gu44GU5Yip55So
54Wn5Lya44GM44GU44GW44GE44G+44GX44Gf44Gu44Gn44CB44GK55+l44KJ44Gb44GE44Gf44GX
44G+44GZ44CCCgrigLvmnKzjg6Hjg7zjg6vjga/jgIHjgZTliKnnlKjjg7voq4vmsYLjgpLnorrl
rprjgZnjgovjgoLjga7jgafjga/jgYLjgorjgb7jgZvjgpPjgIIK44GU5Yip55So5pel5pmC77ya
MjAyNC8wNS8wNyAgICAgIDIzOjE4CuOBlOWIqeeUqOWgtOaJgO+8muOCu+ODluODsy3jgqTjg6zj
g5bjg7Mg5Y2D5Luj55Sw5LiA44OE5qmLIDMg5LiB55uu5bqXCuOBlOWIqeeUqOmHkemhje+8mjE2
LCA1ODDlhoYKCuOCq+ODvOODieOCkuS9v+eUqOOBl+OBn+immuOBiOOBjOOBquOBhOWgtOWQiOOB
r+OAgeS7peS4iyDjga4g44OqIOODsyDjgq8g44KS44Kv44OqIOODgyDjgq8g44GXIOOBpuOCqyDj
g7wg44OJ5L2/55So44Gu6Kmz57Sw44KS56K66KqN44GX44Gm44GP44Gg44GV44GE44CCCmh0dHBz
Oi8vYWlxaXZpcC5jb20KCu+8nOOBlOazqOaEj+eCue+8ngrmnKzjgrXjg7zjg5Pjgrnjga/jgIHj
gYrlrqLmp5jjga7kuInkupXkvY/lj4vjgqvjg7zjg4njga7jgZTliKnnlKjnhafkvJrjgYzooYzj
go/jgozjgZ/loLTlkIjjgIEK5LiJIOS6lSDkvY8g5Y+LIE5FVOOBq+OBlOeZu+mMsuOBhOOBn+OB
oOOBhOOBpuOBhOOCi+ODoeODvOODq+OCouODieODrOOCueOBuOOBiuefpeOCieOBm+OBmeOCi+OC
teODvOODk+OCueOBp+OBmeOAggrigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTi
gJTigJTigJTigJTigJTigJTigJTigJTigJTigJQK4pag55m6IOihjCDogIXilqAK5LiJ5LqV5L2P
5Y+L44Kr44O844OJ5qCq5byP5Lya56S+CuOAkjEzNS0wMDYxCuadseS6rOmDveaxn+adseWMuuix
iua0sjLkuIHnm64y55WqMzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
