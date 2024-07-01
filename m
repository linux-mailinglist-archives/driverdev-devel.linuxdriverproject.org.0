Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B9891D581
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2024 02:33:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE4BA6088F;
	Mon,  1 Jul 2024 00:33:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VGadyheBVhKS; Mon,  1 Jul 2024 00:33:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B9C86088D
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B9C86088D;
	Mon,  1 Jul 2024 00:33:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 70CB41BF386
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2024 00:33:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56CCE60850
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2024 00:33:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9z0GAhiGis7q for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2024 00:33:21 +0000 (UTC)
X-Greylist: delayed 462 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 01 Jul 2024 00:33:20 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9C2CF60839
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C2CF60839
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=154.38.104.62;
 helo=jvhogmv.cn; envelope-from=fuwu@jvhogmv.cn; receiver=<UNKNOWN> 
Received: from jvhogmv.cn (unknown [154.38.104.62])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C2CF60839
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2024 00:33:19 +0000 (UTC)
Received: from sensoholik.pl (c-24-21-37-205.hsd1.wa.comcast.net
 [24.21.37.205]) by jvhogmv.cn (Postfix) with ESMTPA id DA4F022305
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2024 08:25:36 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 jvhogmv.cn DA4F022305
From: =?utf-8?B?6Ieq5YuV44Oh44O844Or6YCa55+l?= <fuwu@jvhogmv.cn>
To: "devel@linuxdriverproject.org" <devel@linuxdriverproject.org>
Subject: =?utf-8?B?RVRD44K144O844OT44K544Gv6Ieq5YuV6Kej57SE44GV44KM?=
 =?utf-8?B?44G+44GZ?=
Date: Mon, 01 Jul 2024 00:25:35 +0000
Message-ID: <PHBKJDCBLKJOLFFHNEBHNLBPHNNO.fuwu@jvhogmv.cn>
MIME-Version: 1.0
X-Priority: 3 (Normal)
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook IMO, Build 9.0.2416 (9.0.2911.0)
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jvhogmv.cn; s=default; t=1719793537;
 bh=651jaCVGmE6nxxw28CMoSvIfWYJsp4tl6+l2jrPnZno=;
 h=From:To:Subject:Date:From;
 b=A0cR+YC16+vWAgEybBju+4VbE5KUfaa1Tn9BfuCi9u9RaiUDhHTRvBabHyttE60lZ
 Xmxzjxlv7dVcDZaAohjUnmcJU/gKFOStoQuhlu12+SVdPAdjayZza3PQpCmr1wopLi
 T8LyA4RMVlKZxZc0zlEC1iot0H8NsEw3R0A3q2nU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=jvhogmv.cn
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=jvhogmv.cn header.i=@jvhogmv.cn header.a=rsa-sha256
 header.s=default header.b=A0cR+YC1
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

44GE44Gk44KCRVRD5Yip55So54Wn5Lya44K144O844OT44K544KS44GU5Yip55So44GE44Gf44Gg
44GN44CB6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQrml6XmnKzpq5jp
gJ/pgZPot6/moKrlvI/kvJrnpL7jgojjgorph43opoHjgarjgYrnn6XjgonjgZvjgafjgZnjgIIN
CuOBiuWuouanmOOBruODpuODvOOCtuODvElE44Gv44CMIGRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcg44CN44Gn44GU44GW44GE44G+44GZ44CCDQpFVEPliKnnlKjnhafkvJrjgrXjg7zjg5Pj
grnvvIjnmbvpjLLlnovvvInjgafjga/jgIHjgYrlrqLjgZXjgb7jga7jgqLjgq/jg4bjgqPjg5Pj
g4bjgqPjgajjgrvjgq3jg6Xjg6rjg4bjgqPjgpLnorrkv53jgZnjgovjgZ/jgoHjgIE0NTDml6Xk
u6XlhoXjgavjg63jgrDjgqTjg7PjgYzjgarjgYTloLTlkIjjgIHjg6bjg7zjgrbjg7xJROOCkuiH
quWLleeahOOBq+ODreOCsOOCouOCpuODiOOBmeOCi+S7lee1hOOBv+OCkuioreOBkeOBpuOBhOOB
vuOBmeOAgg0K6Kej57SE5LqI5a6a5pel44Gv44CMIDIwMjTlubQ35pyIMuaXpSDjgI3jgajjgarj
gaPjgabjgYrjgorjgb7jgZnjga7jgafjgIHjgYrmiYvmlbDjgafjgZnjgYzjgIHjg63jgrDjgqTj
g7PjgajlgIvkurrmg4XloLHjga7mm7TmlrDjgpLjgYrpoZjjgYTnlLPjgZfkuIrjgZLjgb7jgZnj
gIINCg0K44Om44O844K244O8SUQgIGRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcgIA0K6Kej
57SE5LqI5a6a5pelICAyMDI05bm0N+aciDLml6UgDQoNCuino+e0hOS6iOWumuaXpeOBvuOBp+OB
q+S4i+iomOOBrlVSTOOBi+OCieacrOOCteODvOODk+OCueOBq+ODreOCsOOCpOODs+OBl+OAgeWA
i+S6uuaDheWgseOBruabtOaWsOOCkuOBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAgg0KaHR0cHM6
Ly93YXMyMDE5Lm9yZy94aWJhbnlhNDEucGhwP3dvbGlla2FpPWZ1bGU1NTgxDQoNCuODreOCsOOC
pOODs+W+jOOBq+OAgeOBiuWuouanmOOBrueZu+mMsuaDheWgseOCkuWGjeeiuuiqjeOBl+OAgeW/
heimgeOBquaDheWgseOCkuacgOaWsOOBrueKtuaFi+OBq+abtOaWsOOBl+OBpuOBj+OBoOOBleOB
hOOAguino+e0hOS6iOWumuaXpeOBvuOBp+OBq+ODreOCsOOCpOODs+OBhOOBn+OBoOOBkeOCjOOB
sOOAgeeZu+mMsuOBr+e2mee2muOBleOCjOOBvuOBmeOBruOBp+OAgeOBlOazqOaEj+OBj+OBoOOB
leOBhOOAgg0K5LiH44GM5LiA44CB6Kej57SE44GM6Ieq5YuV55qE44Gr6KGM44KP44KM44Gf5aC0
5ZCI44Gn44GC44Gj44Gm44KC44CB5YaN5bqm55m76Yyy44GE44Gf44Gg44GR44KM44GwRVRD5Yip
55So54Wn5Lya44K144O844OT44K544KS5byV44GN57aa44GN44GU5Yip55So44GE44Gf44Gg44GR
44G+44GZ44Gu44Gn44CB44GU5a6J5b+D44GP44Gg44GV44GE44CCDQoNCuKWoEVUQ+WIqeeUqOeF
p+S8muOCteODvOODk+OCueS6i+WLmeWxgA0K44CA5bm05Lit54Sh5LyR44CAOe+8mjAw772eMTjv
vJowMA0K44CA6Zu76Kmx55Wq5Y+344CAMDU3MC0wMDEwNjkKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
