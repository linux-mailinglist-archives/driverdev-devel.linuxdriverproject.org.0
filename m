Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 966492B9D50
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Nov 2020 23:03:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 18F1C86A03;
	Thu, 19 Nov 2020 22:03:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GGNeu8bRRU-Z; Thu, 19 Nov 2020 22:03:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 241C586672;
	Thu, 19 Nov 2020 22:03:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD6F81BF32B
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 22:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C67D18670B
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 22:03:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TLXluM0nje6j for <devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 22:03:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from spfilter-3.sesg01.sgcloudhosting.com
 (spfilter-3.sesg01.sgcloudhosting.com [103.7.8.248])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 03D0D86672
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 22:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=spamexpertfilter.sgcloudhosting.com; s=default; h=Message-ID:CC:To:Reply-To
 :From:Subject:Content-Transfer-Encoding:Content-Type:Date:MIME-Version:sender
 :bcc:in-reply-to:references; bh=n4M5FvZpPdQYkRaeUD4QSH6e2W+QtOLvBF4A/0y3OUo=; 
 b=5I9bw8f6s7vU2h+fgbZiKfF2mhzAz8XFTwPnoDlDi8GpISeLYOf6fZqdjlSeNCgRJmaXxyOqFd
 ILxo4mzUAuninh+49nJIaSfLfZ356THsqCcWALUtyjMQjyFk9aF7RJnIKxgLQDo5kz7GWj+6hIY3+
 LZwWNh0bBo6xC+dWXda4=;
Received: from cloudmail63.cybersitezone.com ([103.254.255.63]
 helo=gray.zonecybersite.com)
 by spfilter-3.sesg01.sgcloudhosting.com with esmtpsa
 (TLSv1.2:AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <agatha.tan@homeequity.com.sg>)
 id 1kfqRc-0004aN-Uw; Fri, 20 Nov 2020 04:22:49 +0800
Received: from mail10.spidertrackers.com (mail10.cybersite.com.sg
 [43.227.231.18]) by gray.zonecybersite.com with SMTP; 
 Fri, 20 Nov 2020 04:21:00 +0800
MIME-Version: 1.0
Date: Fri, 20 Nov 2020 04:20:21 +0800
Subject: hello
From: Dr.Henry Biko <agatha.tan@homeequity.com.sg>
To: <drbikohenry@gmail.com>
Message-ID: <c5405504db33446189c90e8c71dd9b0d@homeequity.com.sg>
X-Exim-Id: c5405504db33446189c90e8c71dd9b0d
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
