Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9A77F15D3
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Nov 2023 15:36:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93DE5813C3;
	Mon, 20 Nov 2023 14:36:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93DE5813C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dCgiFQcQR2Ws; Mon, 20 Nov 2023 14:36:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C61D813BF;
	Mon, 20 Nov 2023 14:36:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C61D813BF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 28A221BF5B3
 for <devel@linuxdriverproject.org>; Mon, 20 Nov 2023 14:36:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EEA0340508
 for <devel@linuxdriverproject.org>; Mon, 20 Nov 2023 14:36:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEA0340508
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iz-gSkku4ieL for <devel@linuxdriverproject.org>;
 Mon, 20 Nov 2023 14:36:15 +0000 (UTC)
X-Greylist: delayed 611 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 20 Nov 2023 14:36:15 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E789404DF
Received: from Filter01.wowtechnologies.com (filter01.wowtechnologies.com
 [76.72.99.41]) by smtp4.osuosl.org (Postfix) with ESMTP id 5E789404DF
 for <devel@driverdev.osuosl.org>; Mon, 20 Nov 2023 14:36:15 +0000 (UTC)
X-ASG-Debug-ID: 1700490347-0e5ddc154c1815920001-qY8YKe
Received: from distracted-ptolemy.76-72-99-34.plesk.page
 (filter01.wowtechnologies.com [76.72.99.41]) by Filter01.wowtechnologies.com
 with ESMTP id cHbMbjhUMWe5FePl for <devel@driverdev.osuosl.org>;
 Mon, 20 Nov 2023 08:25:47 -0600 (CST)
X-Barracuda-Envelope-From: pdeville@cajundome.com
X-Barracuda-Effective-Source-IP: filter01.wowtechnologies.com[76.72.99.41]
X-Barracuda-Apparent-Source-IP: 76.72.99.41
X-ASG-Whitelist: Client
Received: (qmail 1284451 invoked from network); 20 Nov 2023 02:41:59 -0700
Received-SPF: pass (distracted-ptolemy.76-72-99-34.plesk.page: connection is
 authenticated)
Received: from ip194.ip-51-195-53.eu (HELO ?51.195.53.194?) (51.195.53.194)
 by distracted-ptolemy.76-72-99-34.plesk.page with ESMTPA;
 20 Nov 2023 02:41:59 -0700
MIME-Version: 1.0
Content-Description: Mail message body
Subject: my subject
To: Recipients <pdeville@cajundome.com>
X-ASG-Orig-Subj: my subject
From: "Sgnt Ahmed Khaled"<pdeville@cajundome.com >
Date: Mon, 20 Nov 2023 01:41:54 -0800
X-Barracuda-Connect: filter01.wowtechnologies.com[76.72.99.41]
X-Barracuda-Start-Time: 1700490347
X-Barracuda-URL: https://10.50.0.2:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at wowtechnologies.com
X-Barracuda-Scan-Msg-Size: 0
X-Barracuda-BRTS-Status: 1
Message-Id: <20231120143615.EEA0340508@smtp4.osuosl.org>
X-Mailman-Original-Authentication-Results: distracted-ptolemy.76-72-99-34.plesk.page; 
 spf=pass (sender IP is 51.195.53.194) smtp.mailfrom=pdeville@cajundome.com
 smtp.helo=[51.195.53.194]
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
Reply-To: tran24358@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

hello my friend please i need your help in investing this money in your country. please if interested send me an email for more details.

Contact email: tran24358@gmail.com


thanks and God bless.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
