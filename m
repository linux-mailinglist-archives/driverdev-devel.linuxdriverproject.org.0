Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C93396740F
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Sep 2024 02:40:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F99560731;
	Sun,  1 Sep 2024 00:40:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ty5w-7NjZ60E; Sun,  1 Sep 2024 00:40:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70A3A60729
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70A3A60729;
	Sun,  1 Sep 2024 00:40:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE5FB1BF5B4
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2024 00:40:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A39141963
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2024 00:40:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mA1GW-ivZwYK for <devel@linuxdriverproject.org>;
 Sun,  1 Sep 2024 00:40:09 +0000 (UTC)
X-Greylist: delayed 456 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 01 Sep 2024 00:40:08 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AFC4A41957
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFC4A41957
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=161.34.35.221;
 helo=mail.vgkol.cn; envelope-from=sendonly4@vgkol.cn; receiver=<UNKNOWN> 
Received: from mail.vgkol.cn (unknown [161.34.35.221])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AFC4A41957
 for <devel@driverdev.osuosl.org>; Sun,  1 Sep 2024 00:40:08 +0000 (UTC)
Received: from ndwnzrmnwf.net (syn-076-091-142-241.res.spectrum.com
 [76.91.142.241]) by mail.vgkol.cn (Haraka) with ESMTPSA id
 FA36810A-F67B-4689-82E7-42F4BD606F80.1
 envelope-from <sendonly4@vgkol.cn>
 tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (authenticated bits=0);
 Sun, 01 Sep 2024 00:32:29 +0000
From: =?utf-8?B?RSBUIEPjg57jgqTjg6zjg7zjgrjjgrXjg7zjg5Pjgrnkuovli5nlsYA=?=
 <eventnews@news.f2ff.jp>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: =?utf-8?B?44CQ6YeN6KaB44CRRVRD44Oe44Kk44Os44O844K444Od44Kk?=
 =?utf-8?B?44Oz44OI44Gu5pyJ5Yq55pyf6ZmQ44GM5YiH44KM44G+44GZ77yB?=
Date: Sun, 01 Sep 2024 00:32:25 +0000
Message-ID: <NJAEJJPGOMJLENKHAIKJCFEAJGOB.eventnews@news.f2ff.jp>
MIME-Version: 1.0
X-Priority: 3 (Normal)
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook IMO, Build 9.0.2416 (9.0.2911.0)
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Haraka-GeoIP: US
X-Haraka-GeoIP-Received: 76.91.142.241:US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vgkol.cn; 
 h=Content-Transfer-Encoding: Content-Type: MIME-Version: Message-ID: Date:
 Subject: To: From; q=dns/txt; s=s20240824793; t=1725150750;
 bh=FhPyLSvXTyRI8LUhK0QEuA6zK9DjIdhVUyeljiAOrb4=;
 b=KxMtOotZnAQbcoH/yuFduMhsiH/23uoYktXjXKq7rpG3NRdm4VyaIImuu89zJIe8bPQ+4WM5A
 cYuqIEnQaGI/gEOMuT6mErAARerjwnXBUSdpNQYbVzuMasCayZMzF6RQo9CrCuE3zox5PVrDNEu
 TOAMcSFKZdS1kBLpfIeS9xY=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=news.f2ff.jp
X-Mailman-Original-Authentication-Results: mail.vgkol.cn;
	auth=pass (login)
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

RVRD44Oe44Kk44Os44O844K444K144O844OT44K55LqL5YuZ5bGA44GL44KJ44Gu44GK55+l44KJ
44Gb44Gn44GZ44CCDQrjgYrlrqLmp5jjga5FVEPjg57jgqTjg6zjg7zjgrjjg53jgqTjg7Pjg4jj
ga7kuIDpg6jjgYzjgIEyNOaZgumWk+S7peWGheOBq+acieWKueacn+mZkOOCkui/juOBiOOAgeWk
seWKueOBmeOCi+S6iOWumuOBp+OBmeOAgg0KDQrnt4/jg53jgqTjg7Pjg4jmlbDvvJoxMCw1ODfj
g53jgqTjg7Pjg4gNCuWkseWKueS6iOWumuODneOCpOODs+ODiOaVsO+8mjcsNTYz44Od44Kk44Oz
44OIDQrmrovlrZjjg53jgqTjg7Pjg4jmlbDvvJozLDAyNeODneOCpOODs+ODiA0KDQrlpLHlirnk
uojlrprjga4zLDAyNeODneOCpOODs+ODiOOBr+OAgTI05pmC6ZaT5Lul5YaF44Gr5Lqk5o+b44KS
6KGM44KP44Gq44GE44Go54Sh5Yq544Go44Gq44KK44G+44GZ44CC44Od44Kk44Oz44OI44GvMeOD
neOCpOODs+ODiO+8nTHlhobjgajjgZfjgabjgIHpm7vlrZDmtojosrvliLjjgavkuqTmj5vjgZnj
govjgZPjgajjgYzjgafjgY3jgb7jgZnjgIINCg0K4pa85Lul5LiL44Gu44Oq44Oz44Kv44GL44KJ
44Od44Kk44Oz44OI5Lqk5o+b44Oa44O844K444Gr44Ki44Kv44K744K544GX44Gm44GP44Gg44GV
44GE77yaDQpodHRwczovL2VqazU2NC5jb20vbWFydGluLnBocA0KDQrlv4XopoHkuovpoIXjgpLl
haXlipvjgZfjgIHjg53jgqTjg7Pjg4jjgpLpm7vlrZDmtojosrvliLjjgavkuqTmj5vjgZfjgabj
gY/jgaDjgZXjgYTjgIINCuS6pOaPm+OBjOWujOS6huOBmeOCi+OBqOOAgembu+WtkOa2iOiyu+WI
uOOBr+OBiuWuouanmOOBruOCouOCq+OCpuODs+ODiOOBq+ebtOaOpeWPjeaYoOOBleOCjOOBvuOB
meOAgg0KDQrjgJDms6jmhI/kuovpoIXjgJENCjI05pmC6ZaT5Lul5YaF44Gr44Od44Kk44Oz44OI
44Gu5Lqk5o+b44GM5a6M5LqG44GX44Gq44GE5aC05ZCI44CB44Od44Kk44Oz44OI44Gv5YWo44Gm
54Sh5Yq544Go44Gq44KK44G+44GZ44Gu44Gn44GU5rOo5oSP44GP44Gg44GV44GE44CC44GU5LiN
5piO54K544KE44GU6LOq5ZWP44GM44GU44GW44GE44G+44GX44Gf44KJ44CB44GK5rCX6Lu944Gr
44GK5ZWP44GE5ZCI44KP44Gb44GP44GgDQrjgZXjgYTjgIINCuOBiuWuouanmOOBq+OBr+OBlOS4
jeS+v+OCkuOBiuOBi+OBkeOBhOOBn+OBl+OBvuOBmeOBjOOAgeS9leWNkuOBlOeQhuino+OBqOOB
lOWNlOWKm+OCkuiznOOCiuOBvuOBmeOCiOOBhuOBiumhmOOBhOeUs+OBl+S4iuOBkuOBvuOBmeOA
gg0KDQrilqBFVEPjg57jgqTjg6zjg7zjgrjjgrXjg7zjg5Pjgrnkuovli5nlsYANCuOAgOW5tOS4
reeEoeS8keOAgDnvvJowMO+9njE477yaMDANCuOAgOmbu+ipseeVquWPt+OAgDA1NzAtMDAxMDY5
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
