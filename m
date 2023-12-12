Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C93FB80E698
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Dec 2023 09:47:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B2FD82422;
	Tue, 12 Dec 2023 08:47:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B2FD82422
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bb2kHWWOXads; Tue, 12 Dec 2023 08:47:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22315823E3;
	Tue, 12 Dec 2023 08:47:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22315823E3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 98D091BF27A
 for <devel@linuxdriverproject.org>; Tue, 12 Dec 2023 08:47:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7196260F80
 for <devel@linuxdriverproject.org>; Tue, 12 Dec 2023 08:47:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7196260F80
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 54A0fopp5TcT for <devel@linuxdriverproject.org>;
 Tue, 12 Dec 2023 08:47:07 +0000 (UTC)
Received: from mail.commercecreek.pl (mail.commercecreek.pl [185.176.220.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A84CB60F53
 for <devel@driverdev.osuosl.org>; Tue, 12 Dec 2023 08:47:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A84CB60F53
Received: by mail.commercecreek.pl (Postfix, from userid 1001)
 id E460920C5FE; Tue, 12 Dec 2023 08:46:19 +0000 (UTC)
Received: by mail.commercecreek.pl for <devel@driverdev.osuosl.org>;
 Tue, 12 Dec 2023 08:45:53 GMT
Message-ID: <20231212074501-0.1.1l.u8k8.0.jjeodmiv95@commercecreek.pl>
Date: Tue, 12 Dec 2023 08:45:53 GMT
From: "Marcin Wojciechowski" <marcin.wojciechowski@commercecreek.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.commercecreek.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=commercecreek.pl; s=mail; t=1702370807;
 bh=oZTeICgx2X9EeHQQOCJSHYKJVJOCiOs1n/VaxwVhO9Y=;
 h=Date:From:To:Subject:From;
 b=rd+4jbTp5ibTgdDt93Fdoak148YB2TPWsIzz7ADW9JPi+x6hlRVkk0Kn6ptwIn18E
 e0ErhxC5G5u22cB37PPV1XuRo+RPE3iPT6ETOwKdwC2+pmNkYrBg1V3XEcsSCs4jM9
 +rRA4V8gORQ4BiJxp5jJezvry+Pdyw4gg1nVjsIzMFSMQ8sIPvF7PICpmWwKwvuGNa
 djvw+XYy7FrJql4MKTDcB63BXiK9jJoftmUetuh9Xcqp0Sqe+FaT3bh+bhkUyeA59N
 tbpJocTAo2SaRGVnY/Ku4x96GE39yQG/ubkgDT7XCRn+pNNYSkGo9/7A4gVMXl9Prc
 RHyY+9w1BGQyg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=commercecreek.pl header.i=@commercecreek.pl
 header.a=rsa-sha256 header.s=mail header.b=rd+4jbTp
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

RHppZcWEIGRvYnJ5LAoKQ3p5IGplc3QgbW/FvGxpd2/Fm8SHIG5hd2nEhXphbmlhIHdzcMOzxYJw
cmFjeSB6IFBhxYRzdHdlbT8KClogY2jEmWNpxIUgcG9yb3ptYXdpYW0geiBvc29ixIUgemFqbXVq
xIVjxIUgc2nEmSBkemlhxYJhbmlhbWkgendpxIV6YW55bWkgemUgc3ByemVkYcW8xIUuCgpQb21h
Z2FteSBza3V0ZWN6bmllIHBvenlza2l3YcSHIG5vd3ljaCBrbGllbnTDs3cuCgpaYXByYXN6YW0g
ZG8ga29udGFrdHUuCgoKUG96ZHJhd2lhbQpNYXJjaW4gV29qY2llY2hvd3NraQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
