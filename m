Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB56273595
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 00:18:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EAC0F8722C;
	Mon, 21 Sep 2020 22:18:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lEfLCEF9M21G; Mon, 21 Sep 2020 22:18:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6372086FDE;
	Mon, 21 Sep 2020 22:18:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C5CCF1BF334
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 22:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B55DF84D6E
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 22:18:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xxbg12W3EY9s for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 22:18:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.rusoil.net (mail.rusoil.net [188.128.114.25])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E434E84854
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 22:18:24 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.rusoil.net (Postfix) with ESMTP id 8D9DD408EA;
 Tue, 22 Sep 2020 03:21:28 +0500 (YEKT)
Received: from mail.rusoil.net ([127.0.0.1])
 by localhost (mail.rusoil.net [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id nllsc20b3zNL; Tue, 22 Sep 2020 03:21:27 +0500 (YEKT)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.rusoil.net (Postfix) with ESMTP id 8BAA6408E2;
 Tue, 22 Sep 2020 03:21:27 +0500 (YEKT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rusoil.net 8BAA6408E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rusoil.net;
 s=maildkim; t=1600726887;
 bh=6R3BgBYiA7fkqGiiNDuwPskBnpH9JXyNAW/l3ZEA+wY=;
 h=Date:From:Message-ID:MIME-Version;
 b=CO4gWJXQznFPCysxiRO2naUWt06Kq99aiZ83VIGOi2LAqdSmJ/uFhFC5UpfeJAW95
 VsoZfnOtnrse99LucCCwuJUQ3kS75Lpve+KeduxEDUGrY4dFDeecqHam6mse2DyvZt
 ebtXVlYKJTL+DrPR9vDZwsb/sDZxOBflJnHwC0R4=
X-Virus-Scanned: amavisd-new at mail.rusoil.net
Received: from mail.rusoil.net ([127.0.0.1])
 by localhost (mail.rusoil.net [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id AAHpGTxCMJbU; Tue, 22 Sep 2020 03:21:27 +0500 (YEKT)
Received: from mail.rusoil.net (mail.rusoil.net [172.16.7.34])
 by mail.rusoil.net (Postfix) with ESMTP id 4B54B40757;
 Tue, 22 Sep 2020 03:21:25 +0500 (YEKT)
Date: Tue, 22 Sep 2020 03:21:25 +0500 (YEKT)
From: Blue Oak Mortgage and Loans <em@rusoil.net>
Message-ID: <1121856775.904731.1600726885258.JavaMail.zimbra@rusoil.net>
Subject: Wir finanzieren Projekte und Unternehmen
MIME-Version: 1.0
X-Originating-IP: [192.210.183.69]
X-Mailer: Zimbra 8.8.12_GA_3803 (ZimbraWebClient - FF79 (Win)/8.8.12_GA_3794)
Thread-Index: ehuVVFf0DwMLA2YiH2GzUdwJq/1fXA==
Thread-Topic: Wir finanzieren Projekte und Unternehmen
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
Reply-To: Blue Oak Mortgage and Loans <info@bluelmtg.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpEaWVzIGlzdCBlaW4gTmV3c2xldHRlciB2b24gQmx1ZSBPYWsgTW9ydGdhZ2UgYW5kIExvYW5z
LiBCaXR0ZSBtZWxkZW4gU2llIHNpY2ggYWIsIHdlbm4gU2llIGtlaW5lIEUtTWFpbCBtZWhyIHZv
biB1bnMgZXJoYWx0ZW4gbcO2Y2h0ZW4uCgoKRWluZSBrdXJ6ZSBFaW5mw7xocnVuZy4KCldpciBz
aW5kIGVpbiBmw7xocmVuZGVzIEZpbmFuemllcnVuZ3N1bnRlcm5laG1lbiBpbiBFdXJvcGEuIFdp
ciBmaW5hbnppZXJlbiBTdGFydHVwcyAvIGV0YWJsaWVydGUgVW50ZXJuZWhtZW4sIGZpbmFuemll
cmVuIEdyb8OfcHJvamVrdGUgKEJhdSwgTGFuZHdpcnRzY2hhZnQsIEltbW9iaWxpZW4gdW5kIGRl
cmdsZWljaGVuKSB6dSBlaW5lbSBuaWVkcmlnZW4gWmluc3NhdHogdm9uIDIlIHBybyBKYWhyLgoK
CkRhcmxlaGVuc3ZlcmZhaHJlbgoKMS4gU2llIG3DvHNzZW4gZGFzIE9ubGluZS1CZXdlcmJ1bmdz
Zm9ybXVsYXIgYXVzZsO8bGxlbiB1bmQgZWluZSBvcmRudW5nc2dlbcOkw58gdW50ZXJzY2hyaWVi
ZW5lIEtvcGllIGFuIHVucyB6dXLDvGNrc2VuZGVuLgoKMi4gTcO2Z2xpY2hlcndlaXNlIG3DvHNz
ZW4gU2llIEZpbmFuemRva3VtZW50ZSBhbHMgdW50ZXJzdMO8dHplbmRlbiBOYWNod2VpcyBmw7xy
IGRpZSBGw6RoaWdrZWl0IHp1ciBSw7xja3phaGx1bmcgdm9uIEtyZWRpdGVuIHZvcmxlZ2VuLgoK
My4gV2VubiBJaHIgRGFybGVoZW4gZ2VuZWhtaWd0IHd1cmRlLCBtw7xzc2VuIFNpZSBlaW5lIFZl
cnNpY2hlcnVuZ3NnYXJhbnRpZSBmw7xyIGRpZSBEYXJsZWhlbnNzaWNoZXJoZWl0IHZvcmxlZ2Vu
LiBXaXIgZW1wZmVobGVuIGVpbmUgVmVyc2ljaGVydW5nc2dlc2VsbHNjaGFmdC4gU2llIHNpbmQg
YWxsZWluIHZlcmFudHdvcnRsaWNoIGbDvHIgZGllIFphaGx1bmcgdW5kIGRlbiBFcndlcmIgZGVy
IEFubGVpaGUsIGRpZSBhbHMgU2ljaGVyaGVpdCBkaWVuZW4uIERpZSBIw7ZoZSBkZXIgQW5sZWlo
ZSBow6RuZ3Qgdm9uIElocmVtIERhcmxlaGVuc2JldHJhZyBhYi4gRGllIFZlcnNpY2hlcnVuZ3Nn
ZXNlbGxzY2hhZnQgd2lyZCBTaWUgZHVyY2ggZGVuIFByb3plc3MgZsO8aHJlbi4gKEbDvHIgR3Jv
w59wcm9qZWt0ZSkKCjQuIElociDDnGJlcndlaXN1bmdzcHJvemVzcyB3aXJkIGVpbmdlbGVpdGV0
LCBzb2JhbGQgZGllIFZlcnNpY2hlcnVuZ3NhbmxlaWhlIMO8YmVycHLDvGZ0IHd1cmRlLiBJaHIg
RGFybGVoZW5zcsO8Y2t6YWhsdW5nc3BsYW4gd2lyZCBpbSBOQy1EYXJsZWhlbnN2ZXJ0cmFnc2Zv
cm11bGFyIGF1ZmdlZsO8aHJ0LgoKV2VubiBkaWUgQmVkaW5ndW5nZW4gU2llIGJlcnVoaWdlbiwg
a8O2bm5lbiBTaWUgdW5zIMO8YmVyIGRpZSBXaGF0c0FwcC1OdW1tZXIgLyBFLU1haWwga29udGFr
dGllcmVuIHVuZCBhdWNoIHVuc2VyZSBXZWJzaXRlIGJlc3VjaGVuLCB1bSB3ZWl0ZXJlIEluZm9y
bWF0aW9uZW4genUgZXJoYWx0ZW4uIFdpciBmcmV1ZW4gdW5zIGRhcmF1Ziwgdm9uIElobmVuIHp1
IGjDtnJlbi4KCldoYXRzQXBwOiArIDkwLTU1Mi0zNjUtMzQ4MwpFLU1haWw6IGluZm9AYmx1ZWxt
dGcubmV0Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
