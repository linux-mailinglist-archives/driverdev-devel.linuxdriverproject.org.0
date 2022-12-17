Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4A764F90E
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Dec 2022 14:22:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2ED681E99;
	Sat, 17 Dec 2022 13:22:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2ED681E99
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kud3z8TVMp2E; Sat, 17 Dec 2022 13:22:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFD0281E70;
	Sat, 17 Dec 2022 13:22:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFD0281E70
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 10C931BF834
 for <devel@linuxdriverproject.org>; Sat, 17 Dec 2022 13:22:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED51060C2A
 for <devel@linuxdriverproject.org>; Sat, 17 Dec 2022 13:22:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED51060C2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TAcqV2fK_m_u for <devel@linuxdriverproject.org>;
 Sat, 17 Dec 2022 13:22:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9300760B35
Received: from email.pdamkotamalang.com (unknown [114.4.39.122])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9300760B35
 for <devel@driverdev.osuosl.org>; Sat, 17 Dec 2022 13:22:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by email.pdamkotamalang.com (Postfix) with ESMTP id 4CEB676675;
 Sat, 17 Dec 2022 19:38:41 +0700 (WIB)
Received: from email.pdamkotamalang.com ([127.0.0.1])
 by localhost (email.pdamkotamalang.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id eANFWCkViQjf; Sat, 17 Dec 2022 19:38:41 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by email.pdamkotamalang.com (Postfix) with ESMTP id 18B8A797E2;
 Sat, 17 Dec 2022 19:38:41 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.9.2 email.pdamkotamalang.com 18B8A797E2
X-Virus-Scanned: amavisd-new at email.pdamkotamalang.com
Received: from email.pdamkotamalang.com ([127.0.0.1])
 by localhost (email.pdamkotamalang.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id LkEw_EtntPjI; Sat, 17 Dec 2022 19:38:41 +0700 (WIB)
Received: from [192.168.100.49] (unknown [138.199.59.196])
 by email.pdamkotamalang.com (Postfix) with ESMTPSA id 893C77659A;
 Sat, 17 Dec 2022 19:38:25 +0700 (WIB)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: RE:
To: Recipients <lpse@pdamkotamalang.com>
From: Susanne Klatten <lpse@pdamkotamalang.com>
Date: Sat, 17 Dec 2022 15:38:08 +0300
Message-Id: <20221217123826.893C77659A@email.pdamkotamalang.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pdamkotamalang.com; 
 s=62829964-9E69-11EB-BD22-25F53CE53079; t=1671280721;
 bh=ICE81j/I0OBYFOJDJliOx7b1QG/zv32c1J+B2iBntlk=;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:To:
 From:Date:Reply-To:Message-Id;
 b=GCxZpAddvCOVyMDHqC9tZWEdJIxKMuiegTbWR2sNwfjdtk3NQUsWNYjuP3CxkV9jC
 Kefk78cGhaT4MdibuDLgXj9lMwV+Y4lVWczW8NGL5OPIda72NSIXwjA+85xQL56Lek
 BIBJcs+KMJrLbOY86n3P1aErnqwLHizjGLuHxUP8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=pdamkotamalang.com
 header.i=@pdamkotamalang.com header.a=rsa-sha256
 header.s=62829964-9E69-11EB-BD22-25F53CE53079 header.b=GCxZpAdd
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
Reply-To: susanneklatten201@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

V2l0YW0KCk5henl3YW0gc2llIFN1c2FubmUgS2xhdHRlbiBpIGplc3RlbSB6IE5pZW1pZWMsIG1v
Z2Uga29udHJvbG93YWMgdHdvamUgcHJvYmxlbXkgZmluYW5zb3dlIGJleiB1Y2lla2FuaWEgc2ll
IGRvIGJhbmvDs3cgdyB6YWtyZXNpZSBwaWVuaWVkenkga3JlZHl0b3d5Y2guIE9mZXJ1amVteSBw
b3p5Y3praSBvc29iaXN0ZSBpIHBvenljemtpIGJpem5lc293ZSwgamVzdGVtIHphdHdpZXJkem9u
eW0gaSBjZXJ0eWZpa293YW55bSBwb3p5Y3prb2Rhd2NhIHogd2llbG9sZXRuaW0gZG9zd2lhZGN6
ZW5pZW0gdyB1ZHppZWxhbml1IHBvenljemVrIGkgdWR6aWVsYW15IHBvenljemVrIHphYmV6cGll
Y3pvbnljaCBpIG5pZXphYmV6cGllY3pvbnljaCB3IHd5c29rb3NjaSBvZCAxMCAwMDAsMDAg4oKs
ICgkKSBkbyBtYWtzeW1hbG5pZSA1MDAgMDAwIDAwMCwwMCDigqwgemUgc3RhbHltIG9wcm9jZW50
b3dhbmllbSAzJSB3IHNrYWxpIHJva3UuIEN6eSBwb3RyemVidWplc3ogcG96eWN6a2k/IE5hcGlz
eiBkbyBuYXMgbmEgYWRyZXM6IHN1c2FubmVrbGF0dGVuMjAxQGdtYWlsLmNvbQoKTW96ZXN6IHRh
a3plIHpvYmFjenljIG3Ds2ogbGluayBpIGRvd2llZHppZWMgc2llIHdpZWNlaiBvIG1uaWUuCgpo
dHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9TdXNhbm5lX0tsYXR0ZW4KaHR0cHM6Ly93d3cu
Zm9yYmVzLmNvbS9wcm9maWxlL3N1c2FubmUta2xhdHRlbgoKRS1tYWlsOiBzdXNhbm5la2xhdHRl
bjIwMUBnbWFpbC5jb20KUG9kcGlzLApQcmV6ZXMgd3lrb25hd2N6eQpadXphbm5hIEtsYXR0ZW4u
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
