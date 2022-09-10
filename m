Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEA75B4793
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Sep 2022 19:03:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14A3F40895;
	Sat, 10 Sep 2022 17:03:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14A3F40895
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N5w-aKoYqjsT; Sat, 10 Sep 2022 17:03:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B79464032B;
	Sat, 10 Sep 2022 17:03:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B79464032B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E4771BF592
 for <devel@linuxdriverproject.org>; Sat, 10 Sep 2022 17:03:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3960482F57
 for <devel@linuxdriverproject.org>; Sat, 10 Sep 2022 17:03:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3960482F57
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xGwbb08o5Z11 for <devel@linuxdriverproject.org>;
 Sat, 10 Sep 2022 17:02:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F03D82CD4
Received: from wrqvvdbz.outbound-mail.sendgrid.net
 (wrqvvdbz.outbound-mail.sendgrid.net [149.72.141.190])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F03D82CD4
 for <devel@linuxdriverproject.org>; Sat, 10 Sep 2022 17:02:59 +0000 (UTC)
Received: by filterdrecv-bb686cd8c-hfsg7 with SMTP id
 filterdrecv-bb686cd8c-hfsg7-1-631CC341-77
 2022-09-10 17:02:57.621829529 +0000 UTC m=+1363723.631449435
Received: from APP-30106.karmakxcelerate.com (unknown)
 by geopod-ismtpd-5-0 (SG) with ESMTP id rzK-jKyhTQmhmC9L_Sx3xg
 for <devel@linuxdriverproject.org>; Sat, 10 Sep 2022 17:02:57.347 +0000 (UTC)
Received: from [195.178.120.195] ([195.178.120.195]) by
 APP-30106.karmakxcelerate.com with Microsoft SMTPSVC(10.0.17763.1697); 
 Sat, 10 Sep 2022 13:02:56 -0400
MIME-Version: 1.0
Content-Description: Mail message body
Subject: 20.10.199.124
From: "Ms. Elissar" <farah@noreply.net>
Date: Sat, 10 Sep 2022 17:02:57 +0000 (UTC)
Message-ID: <APP-30106wscTEq9xwU00031b1e@APP-30106.karmakxcelerate.com>
X-OriginalArrivalTime: 10 Sep 2022 17:02:56.0318 (UTC)
 FILETIME=[2C3825E0:01D8C537]
X-SG-EID: =?us-ascii?Q?oRbA=2FYDiP6mCe2ILZcYDym9psv6IcGwV9S4rezyh+LcdNVYhbQB3vHhsc0wuQ8?=
 =?us-ascii?Q?E6O1ugb6KsVYWVwl+ecr3NIwzhrBs0LWelHJBBZ?=
 =?us-ascii?Q?KYQadfoplnXLELwnymvCkU46dg0af+w=2FIOupaFx?=
 =?us-ascii?Q?dJZj6mF07ijbE0mlQGfULb65h9VjAoPH5E1Ibe2?=
 =?us-ascii?Q?6UBJNQeI=2FFxF0UUqXAhGWI=2FbneyqoV9=2FniKtcO+?=
 =?us-ascii?Q?ymHVEpZBJq+f=2Fpb9W+MUk1lXGKRvGWvEqlASIC?=
To: Recipients <farah@noreply.net>
X-Entity-ID: eN8NfSccfPSNVgM/qSDjvw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sendgrid.net; 
 h=content-type:mime-version:content-transfer-encoding:
 content-description:subject:from:reply-to:to:cc;
 s=smtpapi; bh=w8M+FWvSdrPmRPanRnU8zGHmU0zXnVx/JUhqwPGeiRE=;
 b=qw1VeYTYtoxb4k57KlaqBXzXJ3x2XfB+e3xVa2A3lk56htmXwrvapG7P6Y3M5JBkuLTq
 //ljt0N4efQh0YcrQqAnA1R3hOFLBH7LWCTdfzjlJJwcM8vOTwP0R5+U+3fLfPAhkahK34
 CfLEtaOnM8q5k6od/6HdYez+ulbwi62qE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=sendgrid.net header.i=@sendgrid.net
 header.a=rsa-sha256 header.s=smtpapi header.b=qw1VeYTY
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
Reply-To: svpvcgundotra@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I have a business proposal that will beneficial to both of us which I
wish to discuss with you. kindly get back to me your full name for more details.

A citizen of Lebanon,MENA Cluster HEAD & CEO CITI Groups UAE.

Regards,
Elissar Farah .A.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
