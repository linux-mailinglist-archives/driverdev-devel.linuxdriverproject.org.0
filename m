Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 406D17F0B63
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Nov 2023 05:25:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 359C0409AD;
	Mon, 20 Nov 2023 04:25:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 359C0409AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VulS1oqOc-LV; Mon, 20 Nov 2023 04:25:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0457B40972;
	Mon, 20 Nov 2023 04:25:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0457B40972
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 41A771BF30F
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Nov 2023 04:25:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1A48781465
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Nov 2023 04:25:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A48781465
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ljf8pBku_no5
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Nov 2023 04:25:47 +0000 (UTC)
X-Greylist: delayed 8140 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 20 Nov 2023 04:25:46 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8788C81463
Received: from mx08.samokat.ru (mx08.samokat.ru [45.90.244.230])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8788C81463
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Nov 2023 04:25:45 +0000 (UTC)
Received: from os-081902002.samokat.io (localhost.localdomain [127.0.0.1])
 by mx08.samokat.ru (Proxmox) with ESMTP id 0806ACDB40
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Nov 2023 04:42:43 +0300 (MSK)
Received: from ksmg-08.samokat.ru (ksmg-08.samokat.ru [10.18.145.3])
 by mx08.samokat.ru (Proxmox) with ESMTPS id C4151DE5BE
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Nov 2023 04:42:42 +0300 (MSK)
Received: from os-081902003.samokat.io (localhost [127.0.0.1])
 by ksmg-08.samokat.ru (Postfix) with ESMTP id C43471A0005
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Nov 2023 04:42:42 +0300 (MSK)
Received: from [85.195.105.114] (os-081144001.samokat.io [10.18.144.1])
 by ksmg-08.samokat.ru (Postfix) with ESMTP
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Nov 2023 04:42:42 +0300 (MSK)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re; Ready to go  
To: driverdev-devel@linuxdriverproject.org
From: "Anna Pechorin"<ap@samokat.ru>
Date: Mon, 20 Nov 2023 03:42:04 -0800
X-KSMG-Rule-ID: 1
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 181465 [Nov 19 2023]
X-KSMG-AntiSpam-Version: 6.0.0.2
X-KSMG-AntiSpam-Envelope-From: ap@samokat.ru
X-KSMG-AntiSpam-Rate: 60
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 543 543
 1e3516af5cdd92079dfeb0e292c8747a62cb1ee4, {Prob_reply_not_match_from},
 {Prob_msgid_missed_1b}, {Tracking_cluster_exceptions, from},
 {Tracking_free_reply_not_from}, {Tracking_cnf_strong},
 {Tracking_dating_nourl, reply1}, {Tracking_dating_reply, reply_free},
 {Tracking_from_domain_doesnt_match_to}, samokat.ru:7.1.1;
 d41d8cd98f00b204e9800998ecf8427e.com:7.1.1; 127.0.0.199:7.1.2;
 hotmail.com:5.0.1,7.1.1, FromAlignment: s
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean
X-KSMG-LinksScanning: Clean
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.0.1.6960,
 bases: 2023/11/19 23:01:00 #22484322
X-KSMG-AntiVirus-Status: Clean, skipped
Message-Id: <20231120014243.0806ACDB40@mx08.samokat.ru>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=samokat.ru; h=cc
 :content-description:content-transfer-encoding:content-type
 :content-type:date:from:from:mime-version:reply-to:reply-to
 :subject:subject:to:to; s=mx08; bh=wSHYj3zMRASjd2oGetWftcUZuxtsQ
 Mbu522BCrAWxM0=; b=bt9HRZwZjb7uFQW/voCSB1o2zoomgps3p2Cg+l9YBMb3x
 cO9BYVd4xugJseOgIdyQIDb3WS8ztOeHU5PwzYzHnTF09EKKd7GdXpOwdVqWdFnf
 5jzjCuY5E1BbsPRPvtw1c9DTdVWKvWITLPN91XQaCZwCRURpubxZVybZFBVhnkMJ
 VQDyGxoY311ELPP6Djt2G9gPhBcF+04Gxy1q7+3KfWcGUV+LN9hHIC5SUgYIqg0/
 qHHI35s9pF1CBtHCJLatVylAM8+EysgqrJvgXFxNWgvnqFGHNrwWtrlrvUPnpS/Y
 1d8SregdMkNqcw1zgmnlguqXrAzrGe81yuQbCHZ7w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=samokat.ru header.i=@samokat.ru
 header.a=rsa-sha256 header.s=mx08 header.b=bt9HRZwZ
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
Reply-To: bizdeal100@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello

How are you, I hope this email finds you in good health and spirit? Before I continue let me humbly apologize for coming into your space unsolicited. Nonetheless, I take solace in the fact that it is with the best intention and for our mutual benefit.

I chose you among other contacts I came across in my search for someone who can be of help.  It took a great deal of brain storming to arrive at my decision I must say, with the hope that my contact with you will be private and confidential.

The business idea that I have is to partner with you by investing in your country and you becoming my fund manager. This whole idea is borne out of the fact that presently I am totally indisposed to carry out any financial transaction owing to restrictions relating to the Russia /Ukraine war and the suspicious death of my husband, Ivan Pechorin in the hand of our President Vladimir Putin. 

It will be an absolute pleasure, if you would have the wherewithal to handle this project to my satisfaction. Every detail concerning this project would be laid bare to you upon indication of your interest. 

Please strictly respond to bizdeal100@hotmail.com


Best regards

Anna Pechorin.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
