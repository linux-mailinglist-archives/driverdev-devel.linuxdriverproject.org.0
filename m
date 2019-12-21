Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AED1C128C23
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Dec 2019 02:19:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DCE9720500;
	Sun, 22 Dec 2019 01:19:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MrDZOco31-IE; Sun, 22 Dec 2019 01:19:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E8E73204B2;
	Sun, 22 Dec 2019 01:19:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CE541BF25B
 for <devel@linuxdriverproject.org>; Sun, 22 Dec 2019 01:19:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1977586200
 for <devel@linuxdriverproject.org>; Sun, 22 Dec 2019 01:19:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bvk3OKDI7owr for <devel@linuxdriverproject.org>;
 Sun, 22 Dec 2019 01:19:14 +0000 (UTC)
X-Greylist: delayed 00:30:56 by SQLgrey-1.7.6
Received: from relay.tapes.rs.gov.br (relay.tapes.rs.gov.br [186.208.189.211])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5472085FA1
 for <devel@driverdev.osuosl.org>; Sun, 22 Dec 2019 01:19:14 +0000 (UTC)
Received: from relay.tapes.rs.gov.br (localhost.localdomain [127.0.0.1])
 by relay.tapes.rs.gov.br (MAILA NETWORKS) with ESMTP id 1F8B15E3208;
 Sat, 21 Dec 2019 21:35:50 -0300 (-03)
Received: from mail.tapes.rs.gov.br (mail.tapes.rs.gov.br [172.16.207.98])
 by relay.tapes.rs.gov.br (MAILA NETWORKS) with ESMTP id 05BBD5E187F;
 Sat, 21 Dec 2019 21:35:49 -0300 (-03)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.tapes.rs.gov.br (Postfix) with ESMTP id A69FA13C3954;
 Sat, 21 Dec 2019 21:35:40 -0300 (-03)
Received: from mail.tapes.rs.gov.br ([127.0.0.1])
 by localhost (mail.tapes.rs.gov.br [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id os55AL1B7ZKO; Sat, 21 Dec 2019 21:35:38 -0300 (-03)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.tapes.rs.gov.br (Postfix) with ESMTP id D819313C1C23;
 Sat, 21 Dec 2019 20:20:07 -0300 (-03)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tapes.rs.gov.br D819313C1C23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tapes.rs.gov.br;
 s=F7D81972-B7E0-11E6-B070-76F4540BF914; t=1576970408;
 bh=biEHBP5vh+ocbbp6wcnog5kTCnMA8zm1dzb6dpqgOkc=;
 h=Date:From:Message-ID:MIME-Version;
 b=BMH+/yh8fQikiefp8NOZIgTDBnYp/dyp55ChARnfqrAqP3ozmAB4t0EdyRVepgllJ
 vrwsumh2VehL/0+xUMlPJIGKDybnRRU8IAWbpWMPH/+KvTGZ9IuUdXw0Mr5guWjHK7
 SHQIjS1zaLK7LcjJYlxSRqhY2wc8EhwMTTMZYVk8Lm1zHkWBeO88A/Th9ZMbAWTEHB
 TvSO3v91BqtutLp1rZZyee2xGJJsGApgnAO6L3x91fDNVdTARy1VehjlURgRRtIbf/
 0S9ZRjj/4TMZQOkWJeguvCH4cpaOaqqhSvOQGHmNZH4PWLXzcBzvdnrJ4cjXKW0oqD
 zaGzdG3ndW72A==
X-Virus-Scanned: amavisd-new at mail.tapes.rs.gov.br
Received: from mail.tapes.rs.gov.br ([127.0.0.1])
 by localhost (mail.tapes.rs.gov.br [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id G_U0FGIBaP0J; Sat, 21 Dec 2019 20:20:06 -0300 (-03)
Received: from mail.tapes.rs.gov.br (mail.pmtapes.com.br [172.16.207.98])
 by mail.tapes.rs.gov.br (Postfix) with ESMTP id A97E113C0946;
 Sat, 21 Dec 2019 19:36:58 -0300 (-03)
Date: Sat, 21 Dec 2019 20:36:58 -0200 (BRST)
From: Major Dennis Hornbeck <creas@tapes.rs.gov.br>
Message-ID: <333668463.535990.1576967818383.JavaMail.zimbra@tapes.rs.gov.br>
Subject: 
MIME-Version: 1.0
X-Originating-IP: [197.237.36.86]
X-Mailer: Zimbra 8.8.12_GA_3866 (zclient/8.8.12_GA_3866)
Thread-Index: t86FgXCbFvOno+eVnn8RX0QxXM5I9A==
Thread-Topic: 
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
Reply-To: Major Dennis Hornbeck <hornbeckmajordennis637@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgotLSAKSSBhbSBpbiB0aGUgbWlsaXRhcnkgdW5pdCBoZXJlIGluIEFmZ2hhbmlzdGFuLCB3ZSBo
YXZlIHNvbWUgYW1vdW50IG9mIGZ1bmRzIHRoYXQgd2Ugd2FudCB0byBtb3ZlIG91dCBvZiB0aGUg
Y291bnRyeS4gTXkgcGFydG5lcnMgYW5kIEkgbmVlZCBhIGdvb2QgcGFydG5lciBzb21lb25lIHdl
IGNhbiB0cnVzdC4gSXQgaXMgcmlzayBmcmVlIGFuZCBsZWdhbC4gUmVwbHkgZm9yIG1vcmUgZGV0
YWlscy7CoMKgUmVnYXJkcyxNYWpvciBEZW5uaXMgSG9ybmJlY2suCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
