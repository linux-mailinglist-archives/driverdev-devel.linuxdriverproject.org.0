Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 115432B9C31
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Nov 2020 21:44:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1F54127662;
	Thu, 19 Nov 2020 20:44:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5rxH0hqIM0iW; Thu, 19 Nov 2020 20:44:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D4663274B3;
	Thu, 19 Nov 2020 20:44:30 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC78A1BF3AA
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 20:44:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 949C520404
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 20:44:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1FeTGrtyFMme
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 20:44:22 +0000 (UTC)
X-Greylist: delayed 00:21:31 by SQLgrey-1.7.6
Received: from spfilter1-out2.sesg01.sgcloudhosting.com
 (spfilter1-out2.sesg01.sgcloudhosting.com [103.7.8.208])
 by silver.osuosl.org (Postfix) with ESMTPS id 5ECBE20407
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 20:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=spamexpertfilter.sgcloudhosting.com; s=default; h=Message-ID:CC:To:Reply-To
 :From:Subject:Content-Transfer-Encoding:Content-Type:Date:MIME-Version:sender
 :bcc:in-reply-to:references; bh=n4M5FvZpPdQYkRaeUD4QSH6e2W+QtOLvBF4A/0y3OUo=; 
 b=7HXlmkAio6PIWlkoh0kCt4oVzZFt34l7G/e+E3Ig/NwCWEZoKB9UYrhhjANUC4n6hH3L1cadtx
 moiJlnlPYMjyaip2TmzBA4O7dSBiPbf4fK4Tf0Tu7fXnQ4UNPSYDAAOIEJ3cCLZlkbmPBiqGcCPAP
 vCRIQk+0uphK1Ny0Szr4=;
Received: from cloudmail63.cybersitezone.com ([103.254.255.63]
 helo=gray.zonecybersite.com)
 by spfilter-1.sesg01.sgcloudhosting.com with esmtpsa
 (TLSv1.2:AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <agatha.tan@homeequity.com.sg>)
 id 1kfqQR-000546-8J; Fri, 20 Nov 2020 04:21:46 +0800
Received: from mail10.spidertrackers.com (mail10.cybersite.com.sg
 [43.227.231.18]) by gray.zonecybersite.com with SMTP; 
 Fri, 20 Nov 2020 04:19:49 +0800
MIME-Version: 1.0
Date: Fri, 20 Nov 2020 04:19:14 +0800
Subject: hello
From: Dr.Henry Biko <agatha.tan@homeequity.com.sg>
To: <drbikohenry@gmail.com>
Message-ID: <4f739edea4c244528b08b3dcea64e9e8@homeequity.com.sg>
X-Exim-Id: 4f739edea4c244528b08b3dcea64e9e8
X-Originating-IP: 103.254.255.63
X-SpamExperts-Domain: spamexpertfilter.sgcloudhosting.com
X-SpamExperts-Username: gray
Authentication-Results: sesg01.sgcloudhosting.com; auth=pass (login)
 smtp.auth=gray@spamexpertfilter.sgcloudhosting.com
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.84)
X-Recommended-Action: accept
X-Filter-ID: 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
 fX4/MGo8AIFBCHQ=
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
