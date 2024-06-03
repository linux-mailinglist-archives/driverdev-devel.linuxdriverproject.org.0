Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54B58D7E97
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2024 11:30:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10500402D4;
	Mon,  3 Jun 2024 09:30:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yhG2FIN6nqDh; Mon,  3 Jun 2024 09:30:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A56340533
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A56340533;
	Mon,  3 Jun 2024 09:30:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC4731BF3EB
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2024 09:30:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B958940350
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2024 09:30:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cs7EXvGj9THP for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2024 09:30:32 +0000 (UTC)
X-Greylist: delayed 602 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 03 Jun 2024 09:30:30 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 72ED7402D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72ED7402D4
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=149.104.18.146;
 helo=mail0.proad-food.com; envelope-from=no-reply@proad-food.com;
 receiver=<UNKNOWN> 
Received: from mail0.proad-food.com (unknown [149.104.18.146])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 72ED7402D4
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2024 09:30:30 +0000 (UTC)
From: =?utf-8?B?5LiJIOiPsSDvvLXvvKbvvKrpioAg6KGM?= <no-reply@proad-food.com>
To: <devel@driverdev.osuosl.org>
Subject: =?utf-8?B?44CQIOS4ieiPsVVGSumKgOihjCDjgJHjgJAg6YeN6KaBIA==?=
 =?utf-8?B?44CR5byV6JC95LqI5a6a44Gu44GU5qGI5YaF?=
Date: Mon, 03 Jun 2024 17:20:25 +0800
Message-ID: <ALPLPKBMELOGBGNADICHNAFJIPIN.no-reply@proad-food.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=proad-food.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@proad-food.com;
 bh=ZUTyaxRCr3aDawerlReTY70DIX/wkvyfDNXYp8i/wrs=;
 b=YUXeT7JEwZcqKJCJocGdfqlt9CcKEs1+bIAXG+dz/RSVf29ZxiXk9PBwC9FpVqV9PNRCtUGy47ce
 D2/d4p3h2V4HV7TunPdYCZZVoxqxnb5WfwAU/U/w6ecxOHO9yPLNUErvD24i67eUxuldCyzuS+gW
 5y8dHQuLMyv84Yri9XA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=proad-food.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=proad-food.com header.i=no-reply@proad-food.com
 header.a=rsa-sha256 header.s=default header.b=YUXeT7JE
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

44GE44Gk44KC5LiJ6I+xVUZK6YqA6KGM44KS44GU5Yip55So44GE44Gf44Gg44GN44GC44KK44GM
44Go44GG44GU44GW44GE44G+44GZ44CCCjLml6XlvozjgavlvJXokL3kuojlrprjga7lj6Pluqfm
jK/mm7/jgavjgaTjgYTjgabjgZTmoYjlhoXjgYTjgZ/jgZfjgb7jgZnjgIIKCuW8leiQveS6iOWu
muaXpe+8mjIwMjQvMDYvMDUK5ZCI6KiI5byV6JC95LqI5a6a6aGN77yaOTgsNzgw5YaGCgrigLvm
nKzjgZTmoYjlhoXjga8yMDI0LzA2LzAzIDE1OjA45pmC54K544Gu5YaF5a6544Go44Gq44KK44G+
44GZ44CC5byV6JC95LqI5a6a6YeR6aGN44Gv5LuK5b6M5aSJ5YuV44GZ44KL5Y+v6IO95oCn44GM
44GU44GW44GE44G+44GZ44CCCgrlj47ntI3kvIHmpa3lkI3vvJrjg6Tjg5Xjg7zjgqbjgqnjg6zj
g4Pjg4gK5YaF5a6577ya44Ok44OV44O844K444Oj44OR44OzICAgICAgICAK5byV6JC95LqI5a6a
6aGN77yaOTgsNzgw5YaGCgrjgZPjga7lvJXokL3jgZfjgavlv4PlvZPjgZ/jgorjgYzjgarjgYTl
oLTlkIjjga/jgIHnrKzkuInogIXjgavjgojjgovkuI3mraPjgarmk43kvZzjga7lj6/og73mgKfj
gYzjgYLjgorjgb7jgZnjga7jgafjgIHkuIvoqJjjga7jg6rjg7Pjgq/jgpLjgqLjgq/jgrvjgrnj
gZfjgIHmnKzkurrnorroqo3jgpLlrozkuobjgZfjgabjgYvjgonjgYrlj5blvJXjgq3jg6Pjg7Pj
grvjg6vjgZfjgabjgY/jgaAK44GV44GE44CCCgpodHRwczovL2hobXNhZXNnbWFkc3hham4uY29t
CgrigLvph5HpoY3jgoTlvJXjgY3okL3jgajjgZfjga7oqbPntLDjgavjgaTjgYTjgablvZPnpL7j
gafjga/jgYroqr/jgbnjgafjgY3jgb7jgZvjgpPjgILlj47ntI3kvIHmpa3jgbjjgZTnorroqo3j
gpLjgYrpoZjjgYTjgYTjgZ/jgZfjgb7jgZnjgIIK4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV
4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCVCuacrOODoeODvOODq+OBq+WvvuOBmeOCi+i/
lOS/oeODoeODvOODq+OBr+OAgeOBiuWPl+OBkeOBl+OBpuOBiuOCiuOBvuOBm+OCk+OAggrkuIfk
uIDjgYrlv4PlvZPjgZ/jgorjga7jgarjgYTloLTlkIjjga/jgIHkuIvoqJjjgqTjg7Pjgr/jg7zj
g43jg4Pjg4jjg5Djg7Pjgq3jg7PjgrDjg5jjg6vjg5fjg4fjgrnjgq/jgb7jgacK44GK5ZWP44GE
5ZCI44KP44Gb44GP44Gg44GV44GE44G+44GZ44KI44GG44GK6aGY44GE55Sz44GX44GC44GS44G+
44GZ44CCCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQrmoKrlvI/kvJrn
pL4g5LiJ6I+x77y177ym77yq6YqA6KGMCumHkeiejeapn+mWouOCs+ODvOODie+8iOmKgOihjOOC
s+ODvOODie+8ie+8mjAwMDUK55m76Yyy6YeR6J6N5qmf6Zai77ya6Zai5p2x6LKh5YuZ5bGA6ZW3
KOeZu+mHkSnnrKw15Y+3IArliqDlhaXljZTkvJrvvJrml6XmnKzoqLzliLjmpa3ljZTkvJrjgIHk
uIDoiKznpL7lm6Pms5Xkurog6YeR6J6N5YWI54mp5Y+W5byV5qWt5Y2U5LyaCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
