Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF6848EEC9
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jan 2022 17:56:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74A4D416C5;
	Fri, 14 Jan 2022 16:56:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id we9w0kmbpBzk; Fri, 14 Jan 2022 16:56:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C602C415C2;
	Fri, 14 Jan 2022 16:56:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 511A51BF362
 for <devel@linuxdriverproject.org>; Fri, 14 Jan 2022 16:56:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 38B3F83EF6
 for <devel@linuxdriverproject.org>; Fri, 14 Jan 2022 16:56:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=doublejackmediaworks.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yEkpBI4TkfH9 for <devel@linuxdriverproject.org>;
 Fri, 14 Jan 2022 16:56:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from server.dyf.wja.mybluehostin.me (server.dyf.wja.mybluehostin.me
 [162.214.55.177])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8F58383EF1
 for <devel@linuxdriverproject.org>; Fri, 14 Jan 2022 16:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=doublejackmediaworks.com; s=default; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BgnyLwSYyPmBsHH5Ialx/iqAjBMONIC4lZoM51/3Ayw=; b=pUcc0N6wEkOGH75oHxjaE+X6zP
 0UUjt2XnGSfIz8uzEUMhRbVfFot3oOk8MA9UBIm9InZCB5VyhrHy6iszBzM0gYPUipAJT9MnBggEF
 jA1A9RtRgU0PxxHnXbjFe5sZT/C+Oq3ztTWn2bLlJCTw2EahOAYOkB114x6O+LKVB6ABPJzY28zGG
 AXllTwsc5ZHIT5y+Ftui0qsbWcUlamf4hk3XkGFfGWBluFZnEeeBlhy6g+rBR3icOk5/wed+am8ad
 gdampeSpjSgxycdAT+0GOdyJEdEAnVDuIpH95kYOPAXubsElLFuTIHWeseQsSy1iqJsuLsEFEURSR
 +fg3N3Wg==;
Received: from [46.183.221.108] (port=54525 helo=siskiyouartists.org)
 by server.dyf.wja.mybluehostin.me with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <smtpfox-pvnym@siskiyouartists.org>)
 id 1n6jZr-0006E6-UK
 for devel@linuxdriverproject.org; Sun, 09 Jan 2022 18:34:28 -0700
From: MB & ASSOCIADOS ABG<smtpfox-pvnym@siskiyouartists.org>
To: devel@linuxdriverproject.org
Subject: COOPRATION/TRANSFER
Date: 10 Jan 2022 03:34:26 +0200
Message-ID: <20220110033426.2D6D11BB096F7577@siskiyouartists.org>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.dyf.wja.mybluehostin.me
X-AntiAbuse: Original Domain - linuxdriverproject.org
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
