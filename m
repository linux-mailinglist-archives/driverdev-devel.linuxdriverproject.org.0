Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EEC75137C
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jul 2023 00:21:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9133F82D0F;
	Wed, 12 Jul 2023 22:21:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9133F82D0F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kmg7itGE6MO4; Wed, 12 Jul 2023 22:21:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E93C82C33;
	Wed, 12 Jul 2023 22:21:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E93C82C33
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ECA651BF48B
 for <devel@linuxdriverproject.org>; Wed, 12 Jul 2023 22:21:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C5F0A61267
 for <devel@linuxdriverproject.org>; Wed, 12 Jul 2023 22:21:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5F0A61267
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GIzhoUaaB57v for <devel@linuxdriverproject.org>;
 Wed, 12 Jul 2023 22:21:49 +0000 (UTC)
X-Greylist: delayed 08:25:41 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3924611FB
Received: from smtp.inaport4.co.id (mta-2.inaport4.co.id [103.219.76.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B3924611FB
 for <devel@driverdev.osuosl.org>; Wed, 12 Jul 2023 22:21:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp.inaport4.co.id (Postfix) with ESMTP id 466698C359C9;
 Wed, 12 Jul 2023 20:02:33 +0800 (WITA)
Received: from smtp.inaport4.co.id ([127.0.0.1])
 by localhost (mta-2.inaport4.co.id [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 8Io6uuYOZ54m; Wed, 12 Jul 2023 20:02:33 +0800 (WITA)
Received: from localhost (localhost [127.0.0.1])
 by smtp.inaport4.co.id (Postfix) with ESMTP id 37A788B3E0C3;
 Wed, 12 Jul 2023 18:41:45 +0800 (WITA)
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp.inaport4.co.id 37A788B3E0C3
X-Amavis-Modified: Mail body modified (using disclaimer) - mta-2.inaport4.co.id
X-Virus-Scanned: amavisd-new at 
Received: from smtp.inaport4.co.id ([127.0.0.1])
 by localhost (mta-2.inaport4.co.id [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id lBPKU8z-ucxd; Wed, 12 Jul 2023 18:41:44 +0800 (WITA)
Received: from [100.121.235.230] (unknown [117.98.24.134])
 by smtp.inaport4.co.id (Postfix) with ESMTPSA id 94B568BB4683;
 Wed, 12 Jul 2023 17:35:16 +0800 (WITA)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Hi
To: Recipients <irwan@inaport4.co.id>
From: Paul G.Allen Family Foundation Group<irwan@inaport4.co.id>
Date: Wed, 12 Jul 2023 15:04:57 +0530
Message-Id: <20230712093516.94B568BB4683@smtp.inaport4.co.id>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inaport4.co.id; 
 s=67133E3A-D729-11EC-9A3E-209BEC03DFB2; t=1689158505;
 bh=ltrK2413DPbPNOfOMRiIwb7av+l4ecJL1xa4WxAgBAg=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=N/XN+v1Ak5+WiDs22+2WyVctunUtuvAImfykBICIH+eh88GZ2YPlZh3rJq4B3Vi4Q
 ZlF3ePnCIXPYDLlNxGVvNYXMDuW4TV/nH2thKB0QjI+4ZeJ7tLdO/o9+Jl5BGgRfZH
 6mdwYEnhDLzszulVa/PYpNlsSHKQmDOXgGeauMvH2tpinH9cFIW3wEovImDwfQoLG8
 +D+uPlpM9HrJPFw4Qsj4waNKvVmog+0+EmOwvpvPXK0QAwJJXlSX00z1MTnTEDjtCE
 OVIBgE9kqTRQO40aOf8X68kF0Zsa9C9hJ1rw1M5NaDiroFTq0Xg+gOux9sMHkdHGVq
 lX3HiBibDQEiw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=inaport4.co.id header.i=@inaport4.co.id
 header.a=rsa-sha256 header.s=67133E3A-D729-11EC-9A3E-209BEC03DFB2
 header.b=N/XN+v1A
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
Reply-To: pga.donations2023@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Beneficiary,

You have been awarded $750,000.00 USD, each as charity donations/aid by Paul G. Allen Family Foundation, Your email address was chosen online while searching at random. Kindly get back to us at your earliest convenience.

On behalf of the foundation, we say congratulations to you.

Best Regards,
Dr.Val Bush


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
