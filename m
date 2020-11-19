Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1DD2B9CE3
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Nov 2020 22:27:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B1F886C51;
	Thu, 19 Nov 2020 21:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FAHw4jCf5lI7; Thu, 19 Nov 2020 21:27:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 13BC686C5A;
	Thu, 19 Nov 2020 21:27:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 26EAC1BF32B
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 21:27:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 157BA847AB
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 21:27:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bn1r-F6vmch2 for <devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 21:27:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from spfilter-3.sesg01.sgcloudhosting.com
 (spfilter-3.sesg01.sgcloudhosting.com [103.7.8.248])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1C5838324B
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 21:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=spamexpertfilter.sgcloudhosting.com; s=default; h=Message-ID:CC:To:Reply-To
 :From:Subject:Content-Transfer-Encoding:Content-Type:Date:MIME-Version:sender
 :bcc:in-reply-to:references; bh=n4M5FvZpPdQYkRaeUD4QSH6e2W+QtOLvBF4A/0y3OUo=; 
 b=VPcXl35zw5j/ueLxIToNuy1WAMHL533AEEv3ngKSuaPtH8/yzv3smlBg4dV6jF3x2l2HVGQFpJ
 gqC9gyEQlmn8RwEryLVwh64DYE45J1S5E1MIlzCljbzNgr9+6bumol2YsBksAcqyULr8nAN5I5c/Q
 E8FJ+GdBgayYOhRhDpN0=;
Received: from cloudmail63.cybersitezone.com ([103.254.255.63]
 helo=gray.zonecybersite.com)
 by spfilter-3.sesg01.sgcloudhosting.com with esmtpsa
 (TLSv1.2:AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <agatha.tan@homeequity.com.sg>)
 id 1kfqQW-00043M-MQ; Fri, 20 Nov 2020 04:21:30 +0800
Received: from mail10.spidertrackers.com (mail10.cybersite.com.sg
 [43.227.231.18]) by gray.zonecybersite.com with SMTP; 
 Fri, 20 Nov 2020 04:20:04 +0800
MIME-Version: 1.0
Date: Fri, 20 Nov 2020 04:19:26 +0800
Subject: hello
From: Dr.Henry Biko <agatha.tan@homeequity.com.sg>
To: <drbikohenry@gmail.com>
Message-ID: <a8211da894664549a8122ab78b708c96@homeequity.com.sg>
X-Exim-Id: a8211da894664549a8122ab78b708c96
X-Originating-IP: 103.254.255.63
X-SpamExperts-Domain: spamexpertfilter.sgcloudhosting.com
X-SpamExperts-Username: gray
Authentication-Results: sesg01.sgcloudhosting.com; auth=pass (login)
 smtp.auth=gray@spamexpertfilter.sgcloudhosting.com
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.84)
X-Recommended-Action: accept
X-Filter-ID: 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
X-Report-Abuse-To: spam@spfilter-1.sesg01.sgcloudhosting.com
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
Reply-To: drbikohenry@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Hello
Mr William Connor gave instructions to send to you $950,000.00 USD ATM VISA CASH CARD to your address before he travel out of this country, please re-confirm your details to enable me proceed to DHL courier for delivery Thanks,
Best Regards,
Dr.Henry Biko 



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
