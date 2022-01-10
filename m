Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AD04893C9
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jan 2022 09:41:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AA0860AC0;
	Mon, 10 Jan 2022 08:41:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UcL42trhYz2n; Mon, 10 Jan 2022 08:41:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D9F960ABB;
	Mon, 10 Jan 2022 08:40:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 96BA91BF29A
 for <devel@linuxdriverproject.org>; Mon, 10 Jan 2022 08:40:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 912DD40463
 for <devel@linuxdriverproject.org>; Mon, 10 Jan 2022 08:40:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=doublejackmediaworks.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EXEXspuwp_mz for <devel@linuxdriverproject.org>;
 Mon, 10 Jan 2022 08:40:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from server.dyf.wja.mybluehostin.me (server.dyf.wja.mybluehostin.me
 [162.214.55.177])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CBB1B40327
 for <devel@driverdev.osuosl.org>; Mon, 10 Jan 2022 08:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=doublejackmediaworks.com; s=default; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BgnyLwSYyPmBsHH5Ialx/iqAjBMONIC4lZoM51/3Ayw=; b=M6f4Z0ZdapDl9d/MLREHDrKHre
 uD4E28ehbZWm3AwWz0U9FjSrHrIJoyBWAg8GZgQ7Wv8yJXjfL/R57Vhi+ZpYZbm5JacJZLCY/sdXx
 d23HfMSjtUhTspgTEZ2ZHUUoDa3B7Hxt6L2c56iJTS103QPtWpoiRNQp8A5X5ttYU9SXuWG+Hv5TP
 pv6tYVTwJIIukc+nFML8kz6ke/Xq8Hfd6dyUHsydek5pUHsuAZkWwosFnOzdiwNA6xKJPKwBuWQs0
 Gq0wMgNzC7MLRROwUbNmHDfbwfToQk/Evfm8u6k38en+5K2JG2W7HQ1wKTxZqITy5wOEj+IZRxHtz
 g/kHoWWg==;
Received: from [46.183.221.108] (port=54921 helo=siskiyouartists.org)
 by server.dyf.wja.mybluehostin.me with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <smtpfox-pvnym@siskiyouartists.org>)
 id 1n6jbt-0007KE-1w
 for devel@driverdev.osuosl.org; Sun, 09 Jan 2022 18:36:33 -0700
From: MB & ASSOCIADOS ABG<smtpfox-pvnym@siskiyouartists.org>
To: devel@driverdev.osuosl.org
Subject: COOPRATION/TRANSFER
Date: 10 Jan 2022 03:36:31 +0200
Message-ID: <20220110033630.2501AC79C63257E1@siskiyouartists.org>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.dyf.wja.mybluehostin.me
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - siskiyouartists.org
X-Get-Message-Sender-Via: server.dyf.wja.mybluehostin.me: authenticated_id:
 smtpfox-61wkh@doublejackmediaworks.com
X-Authenticated-Sender: server.dyf.wja.mybluehostin.me: smtpfox-61wkh@doublejackmediaworks.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
Reply-To: Mb.realabogados@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello, Peace be unto you!

I am pleased to introduce myself to you though it may surprise
you receiving this letter from me since there has been no
previous correspondence between us. Nevertheless, I am Barrister
Martin Barreno. an attorney at law / solicitor with MB &
Associates which is one of the reliable law firms here in Spain.
A client of mine died and he left behind the sum of 8,500,000.00
EURO, as the personal attorney to my late client, the bank has
asked me to provide them my client's next of kin whom they will
return the fund, I need your consent to present you to the bank
and they will transfer the 8,500,000 Euro to you.
Let me know if you are interested in my proposal for further
explanation and details. Please contact me through my private
Email: mb.realabogados@outlook.com

Thanks & Best regards,
MARTIN BARENO ESQ.
MB & ASSOCIADOS ABG
Email: mb.realabogados@outlook.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
