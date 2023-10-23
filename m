Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A3C7D3D14
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Oct 2023 19:09:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B9175417EF;
	Mon, 23 Oct 2023 17:09:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9175417EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tmB95SHfqiVZ; Mon, 23 Oct 2023 17:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F49A40012;
	Mon, 23 Oct 2023 17:09:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F49A40012
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E44AA1BF371
 for <devel@linuxdriverproject.org>; Mon, 23 Oct 2023 17:09:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B09FF42263
 for <devel@linuxdriverproject.org>; Mon, 23 Oct 2023 17:09:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B09FF42263
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rOTsOv68EUGB for <devel@linuxdriverproject.org>;
 Mon, 23 Oct 2023 17:09:40 +0000 (UTC)
X-Greylist: delayed 24174 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 23 Oct 2023 17:09:40 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74F9042254
Received: from mta.kafila.in (unknown [103.127.158.23])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74F9042254
 for <devel@driverdev.osuosl.org>; Mon, 23 Oct 2023 17:09:40 +0000 (UTC)
Received: from mta.kafila.in (localhost.localdomain [127.0.0.1])
 by mta.kafila.in (Proxmox) with ESMTP id 22CFD313020;
 Mon, 23 Oct 2023 14:30:26 +0530 (IST)
X-Virus-Scanned: amavisd-new at mail.kafila.in
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Kontakt-E-Mail: alfagroupfridman@hotmail.com
To: Recipients <testmail@kafila.in>
From: testmail@kafila.in
Date: Mon, 23 Oct 2023 09:52:02 +0100
Message-Id: <20231023085316.118E010D956@mail.kafila.in>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kafila.in; h=cc
 :content-description:content-transfer-encoding:content-type
 :content-type:date:from:from:message-id:mime-version:reply-to
 :reply-to:subject:subject:to:to; s=default; bh=VmM2eLH3pix0zM/7w
 3zv5lJHpesjEaNKKf5eTp5M9bI=; b=lQks18NmKGZOCnscA0Xlja7P3Beuvj65Q
 GXwLqTsYhaxHjGfF5aMAjkU2a4+58niH4LvrVV+wCiJ7OF1EMCQ/dOwmQWyhltMj
 Doe9qST4CkIdpzFw2MDGdeRYSNOctP38JB3RYJvXmy6rFSI8iDQUTn7P9Oy4wT/j
 Fn9kRwE9YBXY9hry7DvMEdMxC27pN+h/IalyWaqSkWSeQ4C66Lo9nBIhcjG3tjnJ
 1rCty8ZcjdRhH7NzSW/LSwcIYw1TbygwXEkfg5uqGn8ZJQLvZhFI5E+no23D5rx0
 LSK6KkVt930VQdQ0ohMmUXSJq+R7awjsjKqdifHDvP5OoWLW3nS6A==
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
Reply-To: alfagroupfridman@outlook.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGllIFN1bW1lIHZvbiAyLjUwMC4wMDAsMDAg4oKsIHd1cmRlIElobmVuIHZvbiBNaWtoYWlsIEZy
aWRtYW4gZ2VzcGVuZGV0LiBGw7xyIHdlaXRlcmUgSW5mb3JtYXRpb25lbiB3ZW5kZW4gU2llIHNp
Y2ggYml0dGUgYW4gQWxmYWdyb3VwZnJpZG1hbkBvdXRsb29rLmNvbQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
