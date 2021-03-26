Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 205D934B16D
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Mar 2021 22:41:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32FA484CFE;
	Fri, 26 Mar 2021 21:41:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7vx3C3SWm1pt; Fri, 26 Mar 2021 21:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80D1E84CFD;
	Fri, 26 Mar 2021 21:41:31 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 320D91BF3A4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 26 Mar 2021 21:41:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 20DA86062C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 26 Mar 2021 21:41:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=apaari.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OWz5jK9dxeDo
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 26 Mar 2021 21:41:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dadi999.hostingmantra.com (dadi999.hostingmantra.com
 [5.77.36.38]) by smtp3.osuosl.org (Postfix) with ESMTPS id 7FBEF605EF
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 26 Mar 2021 21:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=apaari.org; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
 Subject:From:Reply-To:Sender:Message-ID:To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xUnZqY2kHrmb0qwAIVtRqYTo3bbusfwTBrJ+A0wC1h0=; b=Gg9qJ0mbdBRPDqe8pfmUX1w3Ux
 M6FLI3t14+EDZaZWigokqScxJMsITdYY7ovSPdgqwZOacNkWV7EG0itjANv5f1fQIDGH5QrfP+de8
 N27yX7rAbVTkr1Ypek1cicP7Ya1LSST5dRAJXSV7kV8kw5NBrvtWYldK804mvBUXXZmfF+KNhN3Gk
 M+4mhcwvnnP4DoFGBbEvVIUapu4I5pgHdoHjOi07Sc3xksGbnp1zIOoPYeJqLXg7JXrlz7YRIhptV
 j1iPy3tUI/Nlv6EcLJwJXzxO3mJPjUho9BUNy1rxDoxx6sYFR3/4/Zje35x+wVaEZoBbTVM0EtugY
 8OoschcQ==;
Received: from [157.55.86.197] (port=56043 helo=User)
 by dadi999.hostingmantra.com with esmtpa (Exim 4.94)
 (envelope-from <apaari@apaari.org>)
 id 1lPuCd-00058W-QZ; Sat, 27 Mar 2021 03:11:12 +0530
From: "Ms. Reem Al-Hashimi"<apaari@apaari.org>
Subject: Partnership
Date: Fri, 26 Mar 2021 21:41:11 -0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - dadi999.hostingmantra.com
X-AntiAbuse: Original Domain - linuxdriverproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - apaari.org
X-Get-Message-Sender-Via: dadi999.hostingmantra.com: authenticated_id:
 apaari@apaari.org
X-Authenticated-Sender: dadi999.hostingmantra.com: apaari@apaari.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Message-Id: <20210326214122.20DA86062C@smtp3.osuosl.org>
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
Reply-To: reem.alhashimi@daum.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My name is Ms. Reem Ebrahim Al-Hashimi, I am the "Minister of state and Petroleum" also "Minister of State for International Cooperation" in UAE. I write to you on behalf of my other "three (3) colleagues" who has approved me to solicit for your "partnership in claiming of {us$47=Million}" from a Financial Home in Turkey on their behalf and for our "Mutual Benefits".

The Fund {us$47=Million} is our share from the (over-invoiced) Oil/Gas deal with Turkey/Greece Government within 2015/2017, however, we don't want our government to know about the fund. If this proposal interests you, let me know, by sending me an email and I will send to you detailed information on how this business would be successfully transacted. Be informed that nobody knows about the secret of this fund except us, and we know how to carry out the entire transaction. So I am compelled to ask, that you will stand on our behalf and receive this fund into any account that is solely controlled by you.

We will compensate you with 20% of the total amount involved as gratification for being our partner in this transaction. Reply to: hashimireem@yandex.com

Regards,
Ms. Reem.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
