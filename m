Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAB6694076
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Feb 2023 10:13:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E05004011E;
	Mon, 13 Feb 2023 09:13:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E05004011E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d2YqPrx2BZYh; Mon, 13 Feb 2023 09:13:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86B0D40E46;
	Mon, 13 Feb 2023 09:13:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86B0D40E46
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 32C711BF3E8
 for <devel@linuxdriverproject.org>; Mon, 13 Feb 2023 09:13:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 194248177A
 for <devel@linuxdriverproject.org>; Mon, 13 Feb 2023 09:13:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 194248177A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KfeRMaiJugm0 for <devel@linuxdriverproject.org>;
 Mon, 13 Feb 2023 09:13:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D375F81765
Received: from mail.crawnon.pl (mail.crawnon.pl [51.68.198.42])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D375F81765
 for <devel@driverdev.osuosl.org>; Mon, 13 Feb 2023 09:13:07 +0000 (UTC)
Received: by mail.crawnon.pl (Postfix, from userid 1002)
 id 8AB26A505C; Mon, 13 Feb 2023 09:11:56 +0000 (UTC)
Received: by mail.crawnon.pl for <devel@driverdev.osuosl.org>;
 Mon, 13 Feb 2023 09:10:38 GMT
Message-ID: <20230213074500-0.1.94.j5t8.0.htjo938650@crawnon.pl>
Date: Mon, 13 Feb 2023 09:10:38 GMT
From: =?UTF-8?Q?"Miko=C5=82aj_Fiodorczyk"?= <mikolaj.fiodorczyk@crawnon.pl>
To: <devel@driverdev.osuosl.org>
Subject: Fotowoltaika - nowe warunki
X-Mailer: mail.crawnon.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=crawnon.pl; s=mail; 
 t=1676279534; bh=C5hX24svv/9/TME4wPCHfYjl17BCtmuxEd1i9B4zdYs=;
 h=Date:From:To:Subject:From;
 b=X4WYKtHO3TFyOpnsbUk6g7BxPXRjO18eHh3mKJ6RZzTFiUcxmGRg+r/LAV7Y9yjXd
 9/ucEes87ujwHbDMeB0IEVLm6Ary25qE+3zXc7pLy0il9tllGx8uSUujH5AOs4FwpJ
 RYbkD40A/cVZqPQTd8ZYC7MLqSu3NbpGYvvu1Ey+seD9htv2KrLtDcoppE3CXNBIXB
 JgVP5jO6jRS/72Y7oIQlyscYJbJpy0R2CZoNECjuGS+BobeDas+eP2dYRi572+9Co7
 /+EfhZL1Jz16lKgEeYANJRbqK0A3kC9XbTfz5uCYkwexzFX+Ox3zVhbqzX/EEA9/bH
 0EeVeTa49rp7Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=crawnon.pl header.i=@crawnon.pl
 header.a=rsa-sha256 header.s=mail header.b=X4WYKtHO
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

RHppZcWEIGRvYnJ5LAoKY2hjaWHFgmJ5bSBwb2luZm9ybW93YcSHLCBpxbwgbW9nxIUgUGHFhHN0
d28gdXp5c2thxIcgZG9maW5hbnNvd2FuaWUgbmEgc3lzdGVteSBmb3Rvd29sdGFpY3puZSB3IHJh
bWFjaCBub3dlaiBlZHljamkgcHJvZ3JhbXUgTcOzaiBQcsSFZC4KClByb2dyYW0gemFwZXduaWEg
NjAwMCB6xYIgZG9maW5hbnNvd2FuaWEgbmEgaW5zdGFsYWNqxJkgcGFuZWxpIGkgMTYgMDAwIHrF
giBuYSBtYWdhenluIGVuZXJnaWksIG5pxbxzemUgY2VuIHByxIVkdSBpIG1vxbxsaXdvxZvEhyBv
ZGxpY3plbmlhIGtvc3p0w7N3IHp3acSFemFueWNoIHogaW5zdGFsYWNqxIUgZm90b3dvbHRhaWtp
IHcgcmFtYWNoIHJvemxpY3plbmlhIFBJVCAodHp3LiB1bGdhIHRlcm1vbW9kZXJuaXphY3lqbmEp
LgoKQ3p5IHPEhSBQYcWEc3R3byBvdHdhcmNpIG5hIHdzdMSZcG7EhSByb3ptb3fEmSB3IHR5bSB0
ZW1hY2llPwoKClBvemRyYXdpYW0sCk1pa2/FgmFqIEZpb2RvcmN6eWsKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
