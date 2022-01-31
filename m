Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 366634A3C75
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Jan 2022 02:30:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A809740939;
	Mon, 31 Jan 2022 01:30:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AKpbtf59apaF; Mon, 31 Jan 2022 01:30:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 532664092E;
	Mon, 31 Jan 2022 01:30:32 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 308341BF3ED
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 31 Jan 2022 01:30:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTP id 1203A60A9E
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 31 Jan 2022 01:30:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=busterboats.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id CadJpKWiMk-h
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 31 Jan 2022 01:30:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from o3.p38.mailjet.com (o3.p38.mailjet.com [185.250.237.3])
 by smtp3.osuosl.org (Postfix) with UTF8SMTPS id ED3FB60761
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 31 Jan 2022 01:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; q=dns/txt;
 d=busterboats.com; i=website@busterboats.com; s=mailjet;
 h=message-id:mime-version:from:to:subject:date:list-unsubscribe:list-unsubscribe-post:
 x-priority:errors-to:feedback-id:x-csa-complaints:x-mj-mid:x-mj-smtpguid:
 x-report-abuse-to:content-transfer-encoding:content-type;
 bh=Rwx3y2FPkK/OSh0Jy4OOdpen7nmyevGiOJ79o4hc57s=;
 b=JnHqoozgbIXjf3O9A/z0yRYLYXkM/96C2KmsO+7znSyUTUZqIvdVg2YbY
 h2je7JKDjcOGFARzb3J+yyvhtjccK1V/FlBD9uX/fHAXMCrbGjed7uO0Olhz
 oRVbAmyLDCj66Cd9Y6mYSxOTzx2ldGJ5FL73aNTg6Mjwf/KvuCm3hg=
Message-Id: <14b78d21.AUcAAEypro4AAAAAAAAAALHN4owAAAAUceIAAAAAAAvTbgBh9zuv@mailjet.com>
MIME-Version: 1.0
From: Buster Boats <website@busterboats.com>
To: driverdev-devel@linuxdriverproject.org
Subject: Your Buster boat configuration has been saved!
Date: Mon, 31 Jan 2022 03:19:09 +0200
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-Priority: 3
Feedback-Id: 42.775022.780191:MJ
X-CSA-Complaints: csa-complaints@eco.de
X-MJ-Mid: AUcAAEypro4AAAAAAAAAALHN4owAAAAUceIAAAAAAAvTbgBh9zuvynOGk9mvQ0GAbC6JsRIGFgAL558
X-MJ-SMTPGUID: ca738693-d9af-4341-806c-2e89b1120616
X-REPORT-ABUSE-TO: Message sent by Mailjet please report to
 abuse@mailjet.com with a copy of the message
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

SGVyZSBpcyB0aGUgbGluayB0byB5b3VyIGRlc2lnbjog4p2k77iPIFlvdSBoYXZlIHVucmVhZCBt
ZXNzYWdlcyBmcm9tIEx5ZGlhCigyKSEgQ2xpY2sgSGVyZTogaHR0cHM6Ly9jbGNrLnJ1L2FxZ0RC
P2V2aCDinaTvuI8KCllvdSBjYW4gY29udGludWUgY29uZmlndXJpbmcgeW91ciBib2F0LiBKdXN0
IHJlbWVtYmVyIHRvIHNhdmUgeW91ciBkZXNpZ24KYWdhaW4gd2hlbiB5b3UgYXJlIGZpbmlzaGVk
LgoKWW91IGNhbiBzZW5kIHlvdXIgZGVzaXJlZCBib2F0IGNvbmZpZ3VyYXRpb24gdG8geW91ciBu
ZWFyZXN0IEJ1c3RlciBkZWFsZXIKdmlhIHRoZSDigJhTZW5kIHRvIGRlYWxlcuKAmSBidXR0b24g
Zm9yIGEgcHJpY2UgcXVvdGUuCgpCdXN0ZXIKQWx1bWluaXVtIEJvYXRzIFNpbmNlIDE5NTUKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
