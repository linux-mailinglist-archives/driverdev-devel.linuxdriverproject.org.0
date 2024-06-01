Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5F98D7135
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Jun 2024 18:51:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62FD8423C2;
	Sat,  1 Jun 2024 16:51:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cxLHSTxYXWsK; Sat,  1 Jun 2024 16:51:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47700423C5
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47700423C5;
	Sat,  1 Jun 2024 16:51:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F65A1BF2F3
 for <devel@linuxdriverproject.org>; Sat,  1 Jun 2024 16:51:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0C15C4042F
 for <devel@linuxdriverproject.org>; Sat,  1 Jun 2024 16:51:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c0aBK2tFaxq0 for <devel@linuxdriverproject.org>;
 Sat,  1 Jun 2024 16:51:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=210.87.250.172;
 helo=imsantv72.netvigator.com; envelope-from=mrmanuelmelchor03@netvigator.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AEEA14036E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEEA14036E
Received: from imsantv72.netvigator.com (imsantv72.netvigator.com
 [210.87.250.172])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AEEA14036E
 for <devel@linuxdriverproject.org>; Sat,  1 Jun 2024 16:51:49 +0000 (UTC)
Received: from ybironout4a.netvigator.com (ybironout4a.netvigator.com
 [210.87.250.9])
 by imsantv72.netvigator.com (8.14.7/8.14.4) with ESMTP id 451GhiH2012470;
 Sun, 2 Jun 2024 00:43:44 +0800
X-IPAS-Result: =?us-ascii?q?A0D//wCmTltm/zPNHHFagRKCJINKATMegSGCYohpgjkNg?=
 =?us-ascii?q?yFIg06DFwGQRRkKEWOBGgKHfxOBag8BAQFQAQIEAQGBDzSDZ1MCh2UBFRFLA?=
 =?us-ascii?q?QYBAQEBAwIDAQEBAQEBCAIFAwIBBwWBChOFViuGUQMQBAEBAQIXBwoCIAEFB?=
 =?us-ascii?q?CMCCAIBDQMOBiIXBBEFAQMLATsBAgIBAUmBUAICCEuCLwEBMwIGrXeBcoExD?=
 =?us-ascii?q?Q1nO4Qo1kqBYwQKgSUBgnSDOIUmAZESgg+CcIQWFAEqgimBFZEohCeDBIIWg?=
 =?us-ascii?q?VKCEXSFPiYLgT6HJwcxCydggiCBCgMzP4UYeQODRwEDARIBR4E2iG2BB4M7K?=
 =?us-ascii?q?o04DollgT6COYJzaREiCycMIw0UNBEsNQhrB0IdCAcDhi+jBYEeN2F+BoEBg?=
 =?us-ascii?q?S4BAYZbiyGRE2k7oDEBBgEBAoNnLIkzjlOhXAOEChIBJ4FijCmDDIUHtAN0h?=
 =?us-ascii?q?USBHwoYgVlwgW4JJYFbEtwdJoEGCYVhCBIBCgFBBYQbAQ?=
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:FkugCqB35ZnTfHrlHem555DYdb4zR+YMi2TDsHoRdfU1SKKlfq
 +V8MjzuSWftN9zYh4dcLm7UcG9qBXnnqKdirN9AV7ZZniEhILRFvAB0WK/+UyEJ8SEzI5g6Z
 s=
X-Talos-CUID: 9a23:EMAA3W84B4duLAD8GSaVv2AkO+YHY2fT903BCE6xL0ZEd/rSa2bFrQ==
X-Talos-MUID: 9a23:ePZbZAQcILkExfatRXTwlgNHGttp356lVhozuM4qls6nGCNZbmI=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.08,207,1712592000"; 
 d="scan'208,223";a="359786437"
Message-Id: <d9181c$an3pu5@ybironout4v1.netvigator.com>
Received: from unknown (HELO User) ([113.28.205.51])
 by ybironout4v1.netvigator.com with SMTP; 02 Jun 2024 00:43:28 +0800
From: "Mr. Manuel Melchor"<mrmanuelmelchor03@netvigator.com>
Subject: INVESTMENT BUSINESS OPPORTUNITY
Date: Sat, 1 Jun 2024 09:43:39 -0700
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
