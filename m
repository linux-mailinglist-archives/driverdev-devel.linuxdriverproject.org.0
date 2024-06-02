Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 027F78D75DC
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jun 2024 16:05:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA2D082015;
	Sun,  2 Jun 2024 14:05:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CkrWmwUwba4G; Sun,  2 Jun 2024 14:05:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D09018234C
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D09018234C;
	Sun,  2 Jun 2024 14:05:31 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FA361BF82C
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  2 Jun 2024 14:05:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B22A400BB
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  2 Jun 2024 14:05:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fM12HLwrov0b for <driverdev-devel@linuxdriverproject.org>;
 Sun,  2 Jun 2024 14:05:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=210.87.250.172;
 helo=imsantv72.netvigator.com; envelope-from=mrmanuelmelchor03@netvigator.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C03534004A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C03534004A
Received: from imsantv72.netvigator.com (imsantv72.netvigator.com
 [210.87.250.172])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C03534004A
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  2 Jun 2024 14:05:27 +0000 (UTC)
Received: from ybironout3d.netvigator.com (ybironout3d.netvigator.com
 [210.87.250.29])
 by imsantv72.netvigator.com (8.14.7/8.14.4) with ESMTP id 452Dtu7q005827;
 Sun, 2 Jun 2024 21:55:56 +0800
X-IPAS-Result: =?us-ascii?q?A0D9/wC5eFxm/7DOHHFagRKCJINKATOEIYsiDYMhSINOg?=
 =?us-ascii?q?xcBkEUZChFjgRoCh38TgWoPAQEBUAECBAEBgQ80g2dTAodlARURSwEGAQEBA?=
 =?us-ascii?q?QMCAwEBAQEBAQgCBQMCAQcFgQoThVYrhlEDEAQBAQECFwcKAiABBQQjAggCA?=
 =?us-ascii?q?Q0DDgYiFwQRBQEDCwE7AQICAQFJgVACAghLgi8BATMCBqx6gXKBMQ0NZzuEK?=
 =?us-ascii?q?NZKgWMECoElAYJ0gziFJgGREoIPgnCEFhQBKoIpgRWRJYQngwSCFoFSghF0h?=
 =?us-ascii?q?TsmC4E5hyIHMQsnYIIggQgDMz+FGHkDg0cBAwESAUeBNohtgQeDOyqNOA6JZ?=
 =?us-ascii?q?YE9gjmCZGkRIgsnDCMNFDQRLDUIawdCHQgHA4YtonyBHjdhfgaBAYEuAQGGW?=
 =?us-ascii?q?4shkRNpO6AxAQYBAQKDZyyJM45ToVwDhAoSASeBYowpgwyFB7QDdIVEgR8OF?=
 =?us-ascii?q?IFZcIFuCSWBWxLcNyaBBgmFYQgSAQoBQQWEGwE?=
IronPort-Data: A9a23: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
 YlhevautK8ZlN7ai1zkpqQ=
IronPort-HdrOrdr: A9a23:ocoqMat/kt3sWnXcjQaBNuuQ7skDY9V00zEX/kB9WHVpm6uj9v
 xG/c506faaslossR0b8+xoW5PufZq0z/cc3WB2B9yftWLd1VdAVrsSjrcKuweQeREWqtQtsJ
 uICJIfNOHN
X-Talos-CUID: 9a23:+JT5WGMiAZUK/O5DaDd16mc9F/kZbF768Hr+c0iJWT9iYejA
X-Talos-MUID: =?us-ascii?q?9a23=3AmpdEHQ3HUt3t77SABYOiZVOLaTUjzaeMDnkumpY?=
 =?us-ascii?q?6gtCvBzVePD6hryTrTdpy?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.08,209,1712592000"; 
 d="scan'208,223";a="359625131"
Message-Id: <97b397$amusdb@ybironout3v.netvigator.com>
Received: from unknown (HELO User) ([113.28.206.176])
 by ybironout3v.netvigator.com with SMTP; 02 Jun 2024 21:55:40 +0800
From: "Mr. Manuel Melchor"<mrmanuelmelchor03@netvigator.com>
Subject: INVESTMENT BUSINESS OPPORTUNITY
Date: Sun, 2 Jun 2024 06:55:52 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=netvigator.com
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
Reply-To: mrmanuelmelchor03@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From  Mr. Manuel Melchor 


Dear Sir,

 

BUSINESS OPPORTUNITY

 

I am Mr. Manuel Melchor, I lead a family investment vehicle who want to invest a proportion of their funds with a trust party. My client is a former Oil Minister in Angola, a politically exposed person who fell out with the current Government in that Country. 

 He is very eager to invest his funds out of  where it is currently  saved through a second party to ensure safety of his  hard earned money from the hands of his enemies and detractors that make up the current government in his country.

What we are looking for is a fund manager that has the capacity to handle investments in real Estate/Manufacturing etc. such a person can also suggest the area of business that he/she has strength in. We would like to know the investment climate in your country or wherever you intend to invest the money e.g. Government taxes, rebate for foreign investors coming in with huge amounts of money for investment. If you have the capacity to handle the investment we will sign a mutual cooperation agreement. The fund owner wants to invest the money he set aside for a period of 10 years subject to renewal.

Looking forward to your prompt and positive response.

 Best Regards,
Mr. Manuel Melchor
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
