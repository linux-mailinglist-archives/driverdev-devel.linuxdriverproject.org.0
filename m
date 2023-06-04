Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 940E1721685
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Jun 2023 14:01:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3354483A67;
	Sun,  4 Jun 2023 12:01:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3354483A67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XGQ61OexB_w1; Sun,  4 Jun 2023 12:01:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A0EB83A56;
	Sun,  4 Jun 2023 12:01:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A0EB83A56
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 551E51BF2B1
 for <devel@linuxdriverproject.org>; Sun,  4 Jun 2023 12:01:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2EB7C4064C
 for <devel@linuxdriverproject.org>; Sun,  4 Jun 2023 12:01:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2EB7C4064C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sk3eKUOoZBtT for <devel@linuxdriverproject.org>;
 Sun,  4 Jun 2023 12:01:03 +0000 (UTC)
X-Greylist: delayed 00:11:08 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F0254074E
Received: from synergy.bess.co.id (unknown [202.157.188.57])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F0254074E
 for <devel@driverdev.osuosl.org>; Sun,  4 Jun 2023 12:01:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by synergy.bess.co.id (Postfix) with ESMTP id 2B6D3A20EDC5
 for <devel@driverdev.osuosl.org>; Sun,  4 Jun 2023 18:44:25 +0700 (WIB)
Received: from synergy.bess.co.id ([127.0.0.1])
 by localhost (synergy.bess.co.id [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id dDEOPDh9x3nP for <devel@driverdev.osuosl.org>;
 Sun,  4 Jun 2023 18:44:25 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by synergy.bess.co.id (Postfix) with ESMTP id EDD94A20E97C
 for <devel@driverdev.osuosl.org>; Sun,  4 Jun 2023 18:44:24 +0700 (WIB)
X-Virus-Scanned: amavisd-new at bess.co.id
Received: from synergy.bess.co.id ([127.0.0.1])
 by localhost (synergy.bess.co.id [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id iCswxzhuSmMf for <devel@driverdev.osuosl.org>;
 Sun,  4 Jun 2023 18:44:24 +0700 (WIB)
Received: from bess.co.id (unknown [156.0.213.29])
 by synergy.bess.co.id (Postfix) with ESMTPSA id CC4B8A20EB86
 for <devel@driverdev.osuosl.org>; Sun,  4 Jun 2023 18:44:23 +0700 (WIB)
From: Mr Philippe <reni@bess.co.id>
To: devel@driverdev.osuosl.org
Subject: Re: Bonjour
Date: 04 Jun 2023 13:44:23 +0200
Message-ID: <20230604134423.7BCD84C05C674DBC@bess.co.id>
MIME-Version: 1.0
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
Reply-To: phillippemartinez@outlook.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Qm9uam91ciwKSmUgbWUgcHLDqXNlbnRlIE1vbnNpZXVyIFBoaWxpcHBlIE1BUlRJTkVaLCBqZSB2
b3VzIGNvbnRhY3RlIHN1aXRlIArDoCB1biBkb24gZGUgMSA1MjUgMDAwIOKCrCBxdWUgamUgdmV1
eCB2b3VzIG9mZnJpciwgY2FyIG1lcyBqb3VycyAKc29udCBjb21wdMOpcy4gUG91ciBwbHVzIGRl
IHJlbnNlaWduZW1lbnRzLCBqZSB2b3VzIHByaWUgZGUgYmllbiAKdm91bG9pciBtZSBjb250YWN0
ZXIgw6AgbW9uIGFkcmVzc2UgY291cnJpZWwgcGVyc29ubmVsOiAKcGhpbGxpcHBlbWFydGluZXpA
b3V0bG9vay5jb20KUXVlIGxlIFNlaWduZXVyIGRpZXUgY3LDqWF0ZXVyIGR1IGNpZWwgZXQgZGUg
bGEgdGVycmUgZXhhdWNlIHZvcyAKcHJpw6hyZXMsIEFtZW4uCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
