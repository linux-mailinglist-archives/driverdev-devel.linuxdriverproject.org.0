Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 338BC7EEDD9
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Nov 2023 09:51:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1767E81E16;
	Fri, 17 Nov 2023 08:51:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1767E81E16
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZCNNPMr1Rhwv; Fri, 17 Nov 2023 08:51:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8316817AE;
	Fri, 17 Nov 2023 08:51:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8316817AE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 25F551BF3C8
 for <devel@linuxdriverproject.org>; Fri, 17 Nov 2023 08:51:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3839610AB
 for <devel@linuxdriverproject.org>; Fri, 17 Nov 2023 08:51:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3839610AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5gLFstbzGWIp for <devel@linuxdriverproject.org>;
 Fri, 17 Nov 2023 08:51:19 +0000 (UTC)
Received: from mail.thrivehub.pl (mail.thrivehub.pl [164.132.48.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5AA1761065
 for <devel@driverdev.osuosl.org>; Fri, 17 Nov 2023 08:51:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AA1761065
Received: by mail.thrivehub.pl (Postfix, from userid 1002)
 id 0E86226EAB; Fri, 17 Nov 2023 08:50:30 +0000 (UTC)
Received: by mail.thrivehub.pl for <devel@driverdev.osuosl.org>;
 Fri, 17 Nov 2023 08:50:22 GMT
Message-ID: <20231117074500-0.1.2z.18pzm.0.39gem48hpl@thrivehub.pl>
Date: Fri, 17 Nov 2023 08:50:22 GMT
From: "Szymon Jankowski" <szymon.jankowski@thrivehub.pl>
To: <devel@driverdev.osuosl.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.thrivehub.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=thrivehub.pl; s=mail; 
 t=1700211075; bh=m3ZUCTPRVLoDFM+cXi7VhHW+xNF3eUdGHrj1eDbLwQI=;
 h=Date:From:To:Subject:From;
 b=fHr9vptSRC/GKHbFKjd0wJb9wiXubpjyacnY2rvph97QE/2O0I5HP6mN/SJfTeDd8
 W+DVKjnTZr+9XvAjn06vUZums6W3hqwYAGv99y7D0DkrtMTNhiusV0NI/Rmt3QvRgA
 RM/Ul3Bd6OuNaofpqPjrDxObAhKq8+ExgiBFs/dkFEIbc4sml6UnFD7KLCsQO8sTBQ
 lCBv5r5HLRwF0FXK9qMTQi7kamRObilTccN07pv2rfKRH+ugj1VTD+kWgtROKs8Ah9
 Bw1DT/ZRhEmgyqRLdTGSS1TW+eXiai2KzSBxhfLGmjVYlX1cwjPRJHjtoODhtJueFV
 BTcc+a2uVtuog==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=thrivehub.pl header.i=@thrivehub.pl
 header.a=rsa-sha256 header.s=mail header.b=fHr9vptS
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
