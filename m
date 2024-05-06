Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9EE8BC871
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2024 09:37:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8F7C8218D;
	Mon,  6 May 2024 07:37:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8VKggjdgIB3q; Mon,  6 May 2024 07:37:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 147B382205
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 147B382205;
	Mon,  6 May 2024 07:37:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 59A471BF276
 for <devel@linuxdriverproject.org>; Mon,  6 May 2024 07:37:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 53E346067A
 for <devel@linuxdriverproject.org>; Mon,  6 May 2024 07:37:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NmKNUZuNvRNT for <devel@linuxdriverproject.org>;
 Mon,  6 May 2024 07:37:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=162.19.245.89;
 helo=mail.salesoptimize.pl; envelope-from=tomasz.wawrzyniak@salesoptimize.pl;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6B3C76064C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B3C76064C
Received: from mail.salesoptimize.pl (mail.salesoptimize.pl [162.19.245.89])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6B3C76064C
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2024 07:37:04 +0000 (UTC)
Received: by mail.salesoptimize.pl (Postfix, from userid 1002)
 id 864394465E; Mon,  6 May 2024 09:36:37 +0200 (CEST)
Received: by mail.salesoptimize.pl for <devel@driverdev.osuosl.org>;
 Mon,  6 May 2024 07:36:15 GMT
Message-ID: <20240506084500-0.1.28.iaml.0.jceve7jpk1@salesoptimize.pl>
Date: Mon,  6 May 2024 07:36:15 GMT
From: "Tomasz Wawrzyniak" <tomasz.wawrzyniak@salesoptimize.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Nale=C5=BCno=C5=9B=C4=87_za_faktur=C4=99_?=
X-Mailer: mail.salesoptimize.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=salesoptimize.pl; s=mail; t=1714981021;
 bh=R5qtZczg8ebXMPa1Kykxd0TdK5L5taut80rC6pjGdEs=;
 h=Date:From:To:Subject:From;
 b=l1J22AjfUtPcs/5Fy39CldDWtQ+jyriGjVzwSjYCfdGucbQ9YgiieDlrOHNCF2xUL
 M1WKHqP+KErFyUxPG8kQxR9QZN3HHb4wKzIX1EfzFrOZIjF/dRzYe7WAn4lxAt+Cen
 JJt5acz/UdhsmBVvC8UG5u5ecpZV87H2S+RaSFzwV+lipv64MJvMU29jx1W8tF/Wjf
 uPyppK1tpdVaPw4wlXxSOUv8bvS649QrXg3nS/3HiervjOHzPqN1FCICpC5zt9WMCx
 6IU8uyChyx/0PMZMtFBNRP4nvsFuXEZflVIYqUFk+J5zjZnkpIBFrdv6CfNcVz10v8
 fqItC64Yx1jmg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=salesoptimize.pl
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=salesoptimize.pl header.i=@salesoptimize.pl
 header.a=rsa-sha256 header.s=mail header.b=l1J22Ajf
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

RHppZcWEIGRvYnJ5LAoKY2hjaWHFgmJ5bSBwb2luZm9ybW93YcSHIG8gbW/FvGxpd2/Fm2NpIHd5
ZMWCdcW8ZW5pYSBQYcWEc3R3YSBzcMWCYXR5IHphIHRvd2FyLgoKTW9nxIUgUGHFhHN0d28gesWC
b8W8ecSHIHphbcOzd2llbmllIHUgc3dvamVnbyBkb3N0YXdjeSB6YSBrdMOzcmUgbXkgemFwxYJh
Y2lteSB3ZSB3c2themFueW0gcHJ6ZXogbmllZ28gdGVybWluaWUuIFBvIHdwxYJhY2llIHd5c3Rh
d2lhbXkgUGHFhHN0d3UgZnYgc3ByemVkYcW8eSB6IG9kcm9jem9ueW0gdGVybWluZW0gcMWCYXRu
b8WbY2kgKDMwLTkwIGRuaSkuCgpKZcWbbGkgdGFraWUgcm96d2nEhXphbmllIGplc3QgZGxhIFBh
xYRzdHdhIGludGVyZXN1asSFY2UgYsSZZMSZIHdkemnEmWN6bnkgemEgb2Rwb3dpZWTFuiBjenkg
bW9nxJkgcHJ6ZWRzdGF3acSHIHN6Y3plZ8OzxYJ5LgoKClBvemRyYXdpYW0KVG9tYXN6IFdhd3J6
eW5pYWsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
