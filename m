Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F67095AF91
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2024 09:46:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A4F240C2A;
	Thu, 22 Aug 2024 07:46:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RhFnZZ5LDt-g; Thu, 22 Aug 2024 07:46:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28FC9404B8
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 28FC9404B8;
	Thu, 22 Aug 2024 07:46:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15BF01BF322
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2024 07:46:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 02F7840733
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2024 07:46:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t5My3L-xTLkv for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2024 07:46:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=162.19.155.125;
 helo=mail.originatepro.pl; envelope-from=marcin.wojciechowski@originatepro.pl;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 741D040731
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 741D040731
Received: from mail.OriginatePro.pl (mail.originatepro.pl [162.19.155.125])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 741D040731
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2024 07:45:58 +0000 (UTC)
Received: by mail.OriginatePro.pl (Postfix, from userid 1002)
 id 0F2542725B; Thu, 22 Aug 2024 09:45:34 +0200 (CEST)
Received: by mail.OriginatePro.pl for <devel@driverdev.osuosl.org>;
 Thu, 22 Aug 2024 07:45:13 GMT
Message-ID: <20240822084501-0.1.dk.1w2o2.0.aqo0s2qrcq@OriginatePro.pl>
Date: Thu, 22 Aug 2024 07:45:13 GMT
From: "Marcin Wojciechowski" <marcin.wojciechowski@originatepro.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Zam=C3=B3wienie_?=
X-Mailer: mail.OriginatePro.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=OriginatePro.pl; s=mail; t=1724312756;
 bh=HDodNtmiQ0oQNph7sp+h4NRbkxw8d1NmRLmJ4HyiCoQ=;
 h=Date:From:To:Subject:From;
 b=YqRd5YH6bJ9vWokA2mKz0P6TdkGGCVi9lVx6jP2T5PA8mkPS/qOe/jNqdTphdWkiJ
 dmY/xk2z1YRIuxr9TJnUl+TOxZyW5o7e9DuEga/fc7LicGCW1kEcQrUvG1M8NT1Ydu
 LJx6DiDM5glqlUgO3a1pMT/cAdZKpu3roCE59ykygj+a18jy/O0r2CGxLrBs31V2+j
 UKMWMZz6hSYyTfKt2rz1KMwK2AbROd/B3UmBpjbisI8ObmUFCaBUB8s2CxnL9Oe1w4
 m3xcX91gqVLYHeUJr6oJmCn28xPwHXijeMYfpWIT2hqgIfIjHTFFnX1tODXRKti4Kz
 K1FgMn98lPIkA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=originatepro.pl
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=OriginatePro.pl header.i=@OriginatePro.pl
 header.a=rsa-sha256 header.s=mail header.b=YqRd5YH6
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

V2l0YW0sCgpDenkgcG90cnplYnVqxIUgUGHFhHN0d28gYWt0dWFsbmllIG5vd3ljaCBrbGllbnTD
s3cgQjJCPwoKT2QgMTAgbGF0IHBvbWFnYW15IHBvenlza2l3YcSHIG5vd3ljaCBwYXJ0bmVyw7N3
IGJpem5lc293eWNoIHcgUG9sc2NlIG9yYXogemEgZ3JhbmljxIUuCgpQb25hZCAzMDAwIHpyZWFs
aXpvd2FueWNoIHByb2pla3TDs3cgemFyw7N3bm8gZGxhIG5handpxJlrc3p5Y2ggZ2xvYmFsbnlj
aCBrb3Jwb3JhY2ppLCBwb2xza2ljaCBzcMOzxYJlayBnaWXFgmRvd3ljaCBjenkgdGXFvCBuaWV3
aWVsa2ljaCBkemlhxYJhbG5vxZtjaSBnb3Nwb2RhcmN6eWNoIHNwcmF3aWEsIMW8ZSBqZXN0ZcWb
bXkgamVkbnltIHogbGlkZXLDs3cgYnJhbsW8eS4KClogd2llbG9tYSBmaXJtYW1pIHdzcMOzxYJw
cmFjdWplbXkgbmllcHJ6ZXJ3YW5pZSBvZCB3aWVsdSBsYXQsIGdlbmVydWrEhWMgc3RvcHkgendy
b3TDs3cgc2nEmWdhasSFY2UgdHlzacSZY3kgcHVua3TDs3cgcHJvY2VudG93eWNoLCBwb21hZ2Fq
xIVjIGplZG5vY3plxZtuaWUgdyBzcG9zw7NiIHBvd3RhcnphbG55IG9yYXogcG9saWN6YWxueSBw
b3N6ZXJ6YcSHIHBvcnRmZWxlIGtsaWVudMOzdyBiaXpuZXNvd3ljaC4KCkplxZtsaSBtYWrEhSBQ
YcWEc3R3byBwcnplc3RyemXFhCBuYSBvYnPFgnVnxJkgbm93eWNoIGtsaWVudMOzdywgemFwcmFz
emFtIGRvIGtvbnRha3R1IHp3cm90bmVnby4gIAoKClBvemRyYXdpYW0KTWFyY2luIFdvamNpZWNo
b3dza2kKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
