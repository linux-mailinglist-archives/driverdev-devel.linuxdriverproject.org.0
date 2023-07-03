Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D131774564A
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jul 2023 09:45:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 635AE81FA7;
	Mon,  3 Jul 2023 07:45:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 635AE81FA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r-9Z6VP3QLbP; Mon,  3 Jul 2023 07:45:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC73281B8A;
	Mon,  3 Jul 2023 07:45:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC73281B8A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B856C1BF36E
 for <devel@linuxdriverproject.org>; Mon,  3 Jul 2023 07:45:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9128C60B29
 for <devel@linuxdriverproject.org>; Mon,  3 Jul 2023 07:45:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9128C60B29
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N8bfSyDQ4dZo for <devel@linuxdriverproject.org>;
 Mon,  3 Jul 2023 07:45:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59F9460760
Received: from mail.withamteme.com (mail.withamteme.com [141.95.17.171])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59F9460760
 for <devel@driverdev.osuosl.org>; Mon,  3 Jul 2023 07:45:29 +0000 (UTC)
Received: by mail.withamteme.com (Postfix, from userid 1002)
 id AB9BCA270E; Mon,  3 Jul 2023 07:45:18 +0000 (UTC)
Received: by withamteme.com for <devel@driverdev.osuosl.org>;
 Mon,  3 Jul 2023 07:45:17 GMT
Message-ID: <20230703064520-0.1.7v.h4ij.0.mi8i77t5no@withamteme.com>
Date: Mon,  3 Jul 2023 07:45:17 GMT
From: "Grzegorz Frycz" <grzegorz.frycz@withamteme.com>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Nieodp=C5=82atne_spotkanie_z_doradc=C4=85_?=
X-Mailer: mail.withamteme.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=withamteme.com; s=mail; t=1688370326;
 bh=+Z1DY1JtbI1lR5tmt3OW8xT8H08PjM6MKKa6zMFzPFQ=;
 h=Date:From:To:Subject:From;
 b=N60o5skhOypyu3zhnMbxNRvJ4rM9dYdtvH2xFKOZwIgXW2nDjz4chnyyyhwN15Ae+
 aoGmue25Kfrfqhmyb5fFRckTf9bt2wvqEUQUsz5IpoxIocwhqTO2z8tE1akmJcZbT6
 jC2zCcY7OXaGR1c43TXxFZjEIX5VgxGhmash79ezwr8Cm4L/piAdvOa5ZoIcXLPhg1
 dcgbFD3hRUxuFmIpMj2dCSRGiIvmbswc437iVS3QnhMHEHKq3evMVQS49Kz63JXlg6
 rjYLZAPX5YXzVXPzsnHxqNFWuQrJ1QPUzOGMTTtOis0Z/PKJXodCQnLdY+ZkKjEuB0
 3Y0LN7ZKdpgOA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=withamteme.com header.i=@withamteme.com
 header.a=rsa-sha256 header.s=mail header.b=N60o5skh
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

RHppZcWEIGRvYnJ5LAoKY2hjaWHFgmJ5bSB6YXByb3Bvbm93YcSHIHN3b2plIHdzcGFyY2llIGph
a28gYnJva2VyIHViZXpwaWVjemVuaW93eS4KClpyb3p1bWllbmllIFBhxYRzdHdhIHBvdHJ6ZWIg
cG96d29saSBtaSBkb3Bhc293YcSHIG9kcG93aWVkbmllIHJvendpxIV6YW5pYSB1YmV6cGllY3pl
bmlvd2UgeiBrb25rdXJlbmN5am55bWkgc3Rhd2thbWkgaSBlbGFzdHljem55bWkgd2FydW5rYW1p
LiAgCgpEemnEmWtpIHpkb2xub8WbY2lvbSBhbmFsaXR5Y3pueW0gaSBuZWdvY2phY3lqbnltLCBh
IHRha8W8ZSBkb2JyZWogem5ham9tb8WbY2kgcnlua3UgdWJlenBpZWN6ZW5pb3dlZ28gZG9zdGFy
Y3rEmSBQYcWEc3R3dSBrb21wbGVrc293ZSBwcm9kdWt0eSwga3TDs3JlIHphcGV3bmnEhSBvcHR5
bWFsbmUgcG9rcnljaWUgcnl6eWthIGkgemFiZXpwaWVjesSFIFBhxYRzdHdhIGludGVyZXN5LgoK
Q2hjxIUgUGHFhHN0d28gbmllem9ib3dpxIV6dWrEhWNvIHNwcmF3ZHppxIcgd2FydW5raT8KCgpQ
b3pkcmF3aWFtCkdyemVnb3J6IEZyeWN6Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
