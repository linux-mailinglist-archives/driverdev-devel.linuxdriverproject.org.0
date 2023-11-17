Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BAA7EEE63
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Nov 2023 10:24:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33E1C837AC;
	Fri, 17 Nov 2023 09:24:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33E1C837AC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id COXlPTuTOIAJ; Fri, 17 Nov 2023 09:24:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B1C382348;
	Fri, 17 Nov 2023 09:24:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B1C382348
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DDBFE1BF5DA
 for <devel@linuxdriverproject.org>; Fri, 17 Nov 2023 09:24:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6BB24284D
 for <devel@linuxdriverproject.org>; Fri, 17 Nov 2023 09:24:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6BB24284D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2B3OJnVEfYzC for <devel@linuxdriverproject.org>;
 Fri, 17 Nov 2023 09:24:13 +0000 (UTC)
X-Greylist: delayed 508 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 17 Nov 2023 09:24:13 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B3C841EE7
Received: from mail.corebizinsight.com (mail.corebizinsight.com
 [217.61.112.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B3C841EE7
 for <devel@linuxdriverproject.org>; Fri, 17 Nov 2023 09:24:13 +0000 (UTC)
Received: by mail.corebizinsight.com (Postfix, from userid 1002)
 id 5D22383F7E; Fri, 17 Nov 2023 10:15:22 +0100 (CET)
Received: by mail.corebizinsight.com for <devel@linuxdriverproject.org>;
 Fri, 17 Nov 2023 09:15:16 GMT
Message-ID: <20231117084500-0.1.22.9yuc.0.kdne7mdakm@corebizinsight.com>
Date: Fri, 17 Nov 2023 09:15:16 GMT
From: "Jakub Kovarik" <jakub.kovarik@corebizinsight.com>
To: <devel@linuxdriverproject.org>
Subject: =?UTF-8?Q?Pros=C3=ADm_kontaktujte?=
X-Mailer: mail.corebizinsight.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=corebizinsight.com; s=mail; t=1700212543;
 bh=CEmchsDu5Oe+RNHCZSBmKSgMOuy1xnO2dydqkEjt3Qs=;
 h=Date:From:To:Subject:From;
 b=jZskZYujzAGQSnvHznShmDx26p+VGMaBWj8grpTzM6I9vxqSvvNELDxj2ZEDzmctF
 CU2pGCMAa63U3pDeo1X2gN4N/0ZYTCQIKmJOjhuEWPvdcROYpVmJQ+XYsjhIwZ6ssg
 O+sHbmnOPkaUVsIaO/7u5goWreq1F6YHynhN8byLuewURDbsfdb9zqMycwBWmj1j55
 3HYOcfNKkpP/YG+dpEpqcqV99n6vdYXDLZLbhi/844O+5PhMt3X+L5HC2WRZKPXRxt
 ATt7rCgsTXbDt6hQHZKxfX8apR93MEaFyKaXQRyA9QIjoderG2ZtPXJ5qqXtO9Lyo7
 cnGmnD+oxTGbg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=corebizinsight.com
 header.i=@corebizinsight.com header.a=rsa-sha256 header.s=mail
 header.b=jZskZYuj
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

RG9icsOpIHLDoW5vLAoKSmUgbW/Fvm7DqSBzIHbDoW1pIG5hdsOhemF0IHNwb2x1cHLDoWNpPwoK
UsOhZCBzaSBwcm9tbHV2w61tIHMgb3NvYm91IHphYsO9dmFqw61jw60gc2UgcHJvZGVqbsOtIMSN
aW5ub3N0w60uCgpQb23DoWjDoW1lIGVmZWt0aXZuxJsgesOtc2vDoXZhdCBub3bDqSB6w6FrYXpu
w61reS4KCk5ldmFoZWp0ZSBtZSBrb250YWt0b3ZhdC4KClYgcMWZw61wYWTEmyB6w6FqbXUgVsOh
cyBidWRlIGtvbnRha3RvdmF0IG7DocWhIGFuZ2xpY2t5IG1sdXbDrWPDrSB6w6FzdHVwY2UuCgoK
UG96ZHJhdnkKSmFrdWIgS292YXJpawpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
