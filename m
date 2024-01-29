Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 596C9840749
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jan 2024 14:43:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7255A8331B;
	Mon, 29 Jan 2024 13:43:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7255A8331B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QG9h0PVM_PIx; Mon, 29 Jan 2024 13:43:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CFFB835CF;
	Mon, 29 Jan 2024 13:43:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CFFB835CF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 504411BF331
 for <devel@linuxdriverproject.org>; Mon, 29 Jan 2024 13:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2596740232
 for <devel@linuxdriverproject.org>; Mon, 29 Jan 2024 13:42:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2596740232
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JAVkX7mMbiP9 for <devel@linuxdriverproject.org>;
 Mon, 29 Jan 2024 13:42:53 +0000 (UTC)
Received: from mail.thrivehub.pl (mail.thrivehub.pl [164.132.48.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C1D640190
 for <devel@driverdev.osuosl.org>; Mon, 29 Jan 2024 13:42:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C1D640190
Received: by mail.thrivehub.pl (Postfix, from userid 1002)
 id E1DAB26166; Mon, 29 Jan 2024 09:20:44 +0000 (UTC)
Received: by mail.thrivehub.pl for <devel@driverdev.osuosl.org>;
 Mon, 29 Jan 2024 09:20:40 GMT
Message-ID: <20240129085113-0.1.4a.1v4ur.0.9eazm4an50@thrivehub.pl>
Date: Mon, 29 Jan 2024 09:20:40 GMT
From: "Szymon Jankowski" <szymon.jankowski@thrivehub.pl>
To: <devel@driverdev.osuosl.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.thrivehub.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=thrivehub.pl; s=mail; 
 t=1706525617; bh=m3ZUCTPRVLoDFM+cXi7VhHW+xNF3eUdGHrj1eDbLwQI=;
 h=Date:From:To:Subject:From;
 b=qnfXDZEEdDHaHJtrdxWIZusQ6rMHgEhPD3jJwlfEFBiT3uEle8n7nM5JGcCVvR1br
 8XA3KDfozGwqNSdpHnSgk2CnwQ3dz6S/lRJkS0EpyLNj/+J9uXZPnCQIxhBsb/tVxE
 9a2Yi3QYHIL9Xpdi+P2XEch7YhhcKUskjxE/RP16egbYS8kINTEYMSmHezZfvIOvqw
 2rE1NenssgPLaF5KbV7c79cTstb4HEen1+jlPsShaBkop4fQ5VLynnebLRphojOrSO
 eU/NAExk0a5lbBgU6ardBdUk3lmJqO4YlOY7LwJCeTfFztlHTLmARTQnyLCAXUupRR
 dNocH+c0PZF0w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=thrivehub.pl header.i=@thrivehub.pl
 header.a=rsa-sha256 header.s=mail header.b=qnfXDZEE
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

RHppZcWEIGRvYnJ5LAoKUG96d29sacWCZW0gc29iaWUgbmEga29udGFrdCwgcG9uaWV3YcW8IGpl
c3RlbSB6YWludGVyZXNvd2FueSB3ZXJ5ZmlrYWNqxIUgbW/FvGxpd2/Fm2NpIG5hd2nEhXphbmlh
IHdzcMOzxYJwcmFjeS4KCldzcGllcmFteSBmaXJteSB3IHBvenlza2l3YW5pdSBub3d5Y2gga2xp
ZW50w7N3IGJpem5lc293eWNoLgoKQ3p5IG1vxbxlbXkgcG9yb3ptYXdpYcSHIHcgY2VsdSBwcnpl
ZHN0YXdpZW5pYSBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaT8gCgoKUG96ZHJhd2lhbQpTenlt
b24gSmFua293c2tpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
