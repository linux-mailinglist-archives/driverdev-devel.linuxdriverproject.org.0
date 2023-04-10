Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4246DD12A
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Apr 2023 06:51:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B5E9409F3;
	Tue, 11 Apr 2023 04:51:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B5E9409F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TQdvbGQ-0bqk; Tue, 11 Apr 2023 04:51:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F42014029F;
	Tue, 11 Apr 2023 04:51:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F42014029F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A4AEB1BF28A
 for <devel@linuxdriverproject.org>; Tue, 11 Apr 2023 04:51:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 850C561416
 for <devel@linuxdriverproject.org>; Tue, 11 Apr 2023 04:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 850C561416
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1RpXxFX2w-EG for <devel@linuxdriverproject.org>;
 Tue, 11 Apr 2023 04:51:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7F7C613D5
Received: from zimbra-dc.paul-scerri.ch (dc.paul-scerri.ch [62.220.130.141])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7F7C613D5
 for <devel@linuxdriverproject.org>; Tue, 11 Apr 2023 04:51:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra-dc.paul-scerri.ch (Postfix) with ESMTP id 7438F5E469E;
 Mon, 10 Apr 2023 21:57:05 +0200 (CEST)
Received: from zimbra-dc.paul-scerri.ch ([127.0.0.1])
 by localhost (zimbra-dc.paul-scerri.ch [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id vL6oyh5B1sDy; Mon, 10 Apr 2023 21:57:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra-dc.paul-scerri.ch (Postfix) with ESMTP id 141ED5C3080;
 Mon, 10 Apr 2023 21:36:59 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra-dc.paul-scerri.ch
Received: from zimbra-dc.paul-scerri.ch ([127.0.0.1])
 by localhost (zimbra-dc.paul-scerri.ch [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id XUtiImcj894Q; Mon, 10 Apr 2023 21:36:58 +0200 (CEST)
Received: from [185.169.4.108] (unknown [185.169.4.108])
 by zimbra-dc.paul-scerri.ch (Postfix) with ESMTPSA id 351CA591F2C;
 Mon, 10 Apr 2023 21:19:21 +0200 (CEST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re
To: Recipients <wiki@paul-scerri.ch>
From: "Maria-Elisabeth Schaeffler" <wiki@paul-scerri.ch>
Date: Mon, 10 Apr 2023 12:19:20 -0700
Message-Id: <20230410191921.351CA591F2C@zimbra-dc.paul-scerri.ch>
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
Reply-To: mariaelisabeths457@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

WW91ciBlbWFpbCBhY2NvdW50IGhhcyBiZWVuIHNlbGVjdGVkIGZvciBhIGRvbmF0aW9uIG9mIOKC
rDEsNzAwLDAwMC4gUGxlYXNlIGNvbnRhY3QgZm9yIG1vcmUgaW5mb3JtYXRpb24uCgpNcnMgTWFy
aWEgRWxpc2FiZXRoIFNjaGFlZmZsZXIKQ0VPIFNDSEFFRkZMRVIuCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
