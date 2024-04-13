Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A01208A3F94
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Apr 2024 01:24:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 637A08145C;
	Sat, 13 Apr 2024 23:24:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7US3HdhFqAv7; Sat, 13 Apr 2024 23:24:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 803618146B
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 803618146B;
	Sat, 13 Apr 2024 23:24:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 839021BF3A8
 for <devel@linuxdriverproject.org>; Sat, 13 Apr 2024 23:24:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6F4218145C
 for <devel@linuxdriverproject.org>; Sat, 13 Apr 2024 23:24:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2QzH73fmE8aa for <devel@linuxdriverproject.org>;
 Sat, 13 Apr 2024 23:24:15 +0000 (UTC)
X-Greylist: delayed 4226 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 13 Apr 2024 23:24:15 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 80C7A813D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80C7A813D5
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=160.251.211.82;
 helo=vm-9bf8c42d-49.novalocal; envelope-from=work@ywywt.com;
 receiver=<UNKNOWN> 
Received: from vm-9bf8c42d-49.novalocal (mail.ywywt.com [160.251.211.82])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80C7A813D5
 for <devel@driverdev.osuosl.org>; Sat, 13 Apr 2024 23:24:15 +0000 (UTC)
Received: from adnzekspug (unknown [64.176.47.47])
 by vm-9bf8c42d-49.novalocal (Postfix) with ESMTPA id 592A9A7544
 for <devel@driverdev.osuosl.org>; Sun, 14 Apr 2024 05:49:13 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 vm-9bf8c42d-49.novalocal 592A9A7544
Message-ID: <2471c2090f4dd891d13c1fe02452028d@ywywt.com>
From: no-reply <work@ywywt.com>
To: devel <devel@driverdev.osuosl.org>
Subject: =?utf-8?B?44CQ44Kz44Kk44Oz44OB4oGh44Kn44OD44Kv5qCq4oGh5byP?=
 =?utf-8?B?5Lya56S+44CR44Ki44Kr44Km4oGk44Oz44OI5L2/55So5YGc5q2i44Gu?=
 =?utf-8?B?44GK55+l44KJ77iJ44Gb44Gn44GZ77yB?=
Date: Sun, 14 Apr 2024 06:49:11 +0900
X-Priority: 3
X-Mailer: Gbvwlpji Yjidhwdn 2.7
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ywywt.com; s=default; t=1713044953;
 bh=cC7zt80g+NqOSJoIET5Mf9XUmXqBLofqkTEBZAOoKDE=;
 h=From:To:Subject:Date:From;
 b=g+kXUlmUyQlY4FqrU/o5JexrB67vw90J5qqmNbcNiL0MNtJyJTzRwJF3jAZjSNNv+
 DstnKh1CnPbJq8e4qCp+Cb1nyhAuknywQBUjhzavfNjfml5t9nWqEaQGe6GXZjE8bz
 7bEOBNZUm4Fsk3eLwBhabTSOzZ/wBXu8ltATKx3k=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=ywywt.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=temperror header.d=ywywt.com header.i=@ywywt.com header.a=rsa-sha256
 header.s=default header.b=g+kXUlmU
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

Q29pbmNoZWNr4oGk44KS44GU5Yip55So44GE44Gf44Gg44GN44GC4oGh44KK44GM44Go44GG44GU
44GW44GE4oGh44G+44GZ44CC77iJDQoNCuaal+WPt+izh+eUo+OBrumAgemHkeKBoeOAgeS4puOB
s+OBq+aXpeacrOWGhu+4ieWHuumHkeOCkuWItumZkOOBl+OBpuOBiuOCiuOBvu+4ieOBmeOAgg0K
DQrilqDjgYrllY/jgYTlkIjjgo/igaTjgZvjg5Xjgqnjg7zjg6ANCmh0dHBzOi8vY29pbmNoZWNr
LnR5em53LmNvbS8/b25ldG9rZW49U24xcUJRRHhMaTQmdG9rZW49VzFHRG4NCg0KDQrigJXigJXi
gJXigJXigJXigJXigJXigJXigJXigaTigJXigJXigJXigJXigJXigJXigJXigJXigaHigJXigJXi
gJXigJXigaHigJXigJXigJXigJXigJUNCuOCs+OCpOODs+ODgeOCp+ODg+OCr+agquW8j+KBpOS8
muekviDms5Xli5nigaTjg7vjgrPjg7Pjg5fjg6njgqTjgqLjg7PjgrnigaHpg6gNCuOAkjE1MC0w
MOKBoTQ0IOKBoeadseS6rOmDvea4i+iwt+WMuuWGhuKBoeWxseeUujMt77iJNiBF44O74oGh44K5
44Oa44O877iJ44K544K/44Ov77iJ44O8Me+4iTBGDQpVUkwgOiBodHRwczovL2NvaW5jaGVjay50
eXpudy5jb20vP2ZhcT0zVDJHTw0K5pqX5Y+34oGk6LOH55Sj4oGk5Lqk5o+b5qWt55m74oGh6Yyy
44CA6Zai5p2x6LKh5YuZ5bGA77iJ6ZW3IOesrDDigaQwMDE077iJ5Y+3DQrliqDlhaXljZTkvJrj
gIDkuIDoiKznpL7lm6PigaTms5Xkurrml6XmnKzmmpflj7fos4fnlKPlj5bvuInlvJXmpa3ljZTk
vJrvuIkNCuKAleKAleKAle+4ieKAleKAleKAleKAleKAleKAleKBoeKAleKAleKAleKBoeKAleKA
leKAle+4ieKAleKAleKAleKAleKAleKAleKAleKAleKAleKBpOKAleKAle+4iQ0K4oC75pys44Oh
44O844Or44Gu4oGh5YaF5a6544CB44OG4oGk44Kt44K544OI44CB55S75YOP44Gq44Gp77iJ44Gu
54Sh5pat4oGh6Lui6LyJ44O754Sh77iJ5pat5L2/55So44KS56aB5q2i77iJ44GX44G+44GZ44CC
DQoNCnRocmVhZDo6a0k1ODdQZ3kyaUE4TUpvcDdWaE9QeFNRazo6Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
